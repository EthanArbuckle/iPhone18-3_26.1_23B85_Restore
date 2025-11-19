NWConcrete_nw_data_transfer_report *nw_data_transfer_report_create_from_dictionary(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_data_transfer_report_create_from_dictionary";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v19, &type, &v40))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null dictionary", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v43 = "nw_data_transfer_report_create_from_dictionary";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null dictionary, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v19)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (v30)
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v29, "%{public}s called with null dictionary, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v37, "%{public}s called with null dictionary, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_63;
  }

  Class = object_getClass(v1);
  v4 = MEMORY[0x1E69E9E80];
  if (Class != MEMORY[0x1E69E9E80])
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_data_transfer_report_create_from_dictionary";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v19, &type, &v40))
    {
      goto LABEL_64;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary))", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      v31 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v20, type);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          v43 = "nw_data_transfer_report_create_from_dictionary";
          v44 = 2082;
          v45 = v31;
          _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
LABEL_64:
        if (!v19)
        {
LABEL_66:
          v6 = 0;
          goto LABEL_8;
        }

LABEL_65:
        free(v19);
        goto LABEL_66;
      }

      if (v33)
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v43 = "nw_data_transfer_report_create_from_dictionary";
        _os_log_impl(&dword_181A37000, v20, v38, "%{public}s called with null (xpc_get_type(dictionary) == (&_xpc_type_dictionary)), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_63:

    goto LABEL_64;
  }

  v5 = objc_alloc_init(NWConcrete_nw_data_transfer_report);
  v6 = v5;
  if (!v5)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_data_transfer_report_create_from_dictionary";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v25, &type, &v40))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v43 = "nw_data_transfer_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null report", buf, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v34 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v35 = type;
        v36 = os_log_type_enabled(v26, type);
        if (v34)
        {
          if (v36)
          {
            *buf = 136446466;
            v43 = "nw_data_transfer_report_create_from_dictionary";
            v44 = 2082;
            v45 = v34;
            _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v34);
          goto LABEL_70;
        }

        if (v36)
        {
          *buf = 136446210;
          v43 = "nw_data_transfer_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null report, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v43 = "nw_data_transfer_report_create_from_dictionary";
          _os_log_impl(&dword_181A37000, v26, v39, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_70:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_7;
  }

  *(v5 + 13) = 2;
  *(v5 + 2) = xpc_dictionary_get_uint64(v2, "duration_milliseconds");
  if (object_getClass(v2) == v4 && (v10 = xpc_dictionary_get_value(v2, "primary_path")) != 0 && (v11 = v10, object_getClass(v10) == v4))
  {
    v12 = xpc_retain(v11);
    v7 = v12;
    if (v12)
    {
      *(v6 + 11) = 1;
      *(v6 + 7) = xpc_dictionary_get_uint64(v12, "total_received_ip_packet_count");
      *(v6 + 29) = xpc_dictionary_get_uint64(v7, "incremental_received_ip_packet_count");
      *(v6 + 8) = xpc_dictionary_get_uint64(v7, "total_received_ip_ect1_packet_count");
      *(v6 + 30) = xpc_dictionary_get_uint64(v7, "incremental_received_ip_ect1_packet_count");
      *(v6 + 9) = xpc_dictionary_get_uint64(v7, "total_received_ip_ect0_packet_count");
      *(v6 + 31) = xpc_dictionary_get_uint64(v7, "incremental_received_ip_ect0_packet_count");
      *(v6 + 10) = xpc_dictionary_get_uint64(v7, "total_received_ip_ce_packet_count");
      *(v6 + 32) = xpc_dictionary_get_uint64(v7, "incremental_received_ip_ce_packet_count");
      *(v6 + 11) = xpc_dictionary_get_uint64(v7, "total_sent_ip_packet_count");
      *(v6 + 33) = xpc_dictionary_get_uint64(v7, "incremental_sent_ip_packet_count");
      *(v6 + 12) = xpc_dictionary_get_uint64(v7, "total_received_transport_byte_count");
      *(v6 + 34) = xpc_dictionary_get_uint64(v7, "incremental_received_transport_byte_count");
      *(v6 + 13) = xpc_dictionary_get_uint64(v7, "total_received_transport_duplicate_byte_count");
      *(v6 + 35) = xpc_dictionary_get_uint64(v7, "incremental_received_transport_duplicate_byte_count");
      *(v6 + 14) = xpc_dictionary_get_uint64(v7, "total_received_transport_out_of_order_byte_count");
      *(v6 + 36) = xpc_dictionary_get_uint64(v7, "incremental_received_transport_out_of_order_byte_count");
      *(v6 + 15) = xpc_dictionary_get_uint64(v7, "total_sent_transport_byte_count");
      *(v6 + 37) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_byte_count");
      *(v6 + 16) = xpc_dictionary_get_uint64(v7, "total_sent_transport_retransmitted_byte_count");
      *(v6 + 38) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_retransmitted_byte_count");
      *(v6 + 17) = xpc_dictionary_get_uint64(v7, "total_sent_transport_ecn_capable_packet_count");
      *(v6 + 39) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_ecn_capable_packet_count");
      *(v6 + 18) = xpc_dictionary_get_uint64(v7, "total_sent_transport_ecn_capable_acked_packet_count");
      *(v6 + 40) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_ecn_capable_acked_packet_count");
      *(v6 + 19) = xpc_dictionary_get_uint64(v7, "total_sent_transport_ecn_capable_marked_packet_count");
      *(v6 + 41) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_ecn_capable_marked_packet_count");
      *(v6 + 20) = xpc_dictionary_get_uint64(v7, "total_sent_transport_ecn_capable_lost_packet_count");
      *(v6 + 42) = xpc_dictionary_get_uint64(v7, "incremental_sent_transport_ecn_capable_lost_packet_count");
      *(v6 + 21) = xpc_dictionary_get_uint64(v7, "total_transport_smoothed_rtt_milliseconds");
      *(v6 + 43) = xpc_dictionary_get_uint64(v7, "incremental_transport_smoothed_rtt_milliseconds");
      *(v6 + 22) = xpc_dictionary_get_uint64(v7, "total_transport_minimum_rtt_milliseconds");
      *(v6 + 44) = xpc_dictionary_get_uint64(v7, "incremental_transport_minimum_rtt_milliseconds");
      *(v6 + 23) = xpc_dictionary_get_uint64(v7, "total_transport_current_rtt_milliseconds");
      *(v6 + 45) = xpc_dictionary_get_uint64(v7, "incremental_transport_current_rtt_milliseconds");
      *(v6 + 24) = xpc_dictionary_get_uint64(v7, "total_transport_rtt_variance");
      *(v6 + 46) = xpc_dictionary_get_uint64(v7, "incremental_transport_rtt_variance");
      *(v6 + 25) = xpc_dictionary_get_uint64(v7, "total_transport_congestion_window");
      *(v6 + 47) = xpc_dictionary_get_uint64(v7, "incremental_transport_congestion_window");
      *(v6 + 26) = xpc_dictionary_get_uint64(v7, "total_transport_slow_start_threshold");
      *(v6 + 48) = xpc_dictionary_get_uint64(v7, "incremental_transport_slow_start_threshold");
      *(v6 + 27) = xpc_dictionary_get_uint64(v7, "total_received_application_byte_count");
      *(v6 + 49) = xpc_dictionary_get_uint64(v7, "incremental_received_application_byte_count");
      *(v6 + 28) = xpc_dictionary_get_uint64(v7, "total_sent_application_byte_count");
      *(v6 + 50) = xpc_dictionary_get_uint64(v7, "incremental_sent_application_byte_count");
      if (object_getClass(v7) == v4 && (value = xpc_dictionary_get_value(v7, "interface")) != 0 && (v15 = value, object_getClass(value) == v4))
      {
        v13 = v15;
        v16 = nw_interface_create_from_dictionary(v13);
        v17 = *(v6 + 51);
        *(v6 + 51) = v16;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v6;

LABEL_7:
LABEL_8:

  return v6;
}

void _nw_array_remove_objects(void *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = a1;
  _Block_copy(v3);
  sub_181D71A08(v4, v3);
  _Block_release(v3);
}

uint64_t nw_protocol_implementation_get_output_frames(nw_protocol *a1, nw_protocol *a2, unsigned int a3, unsigned int a4, unsigned int a5, nw_frame_array_s *a6)
{
  v174 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = a1;
    handle = a1->handle;
    if (handle != &nw_protocol_ref_counted_handle)
    {
      if (handle != &nw_protocol_ref_counted_additional_handle)
      {
        v13 = __nwlog_obj();
        *buf = 136446210;
        v161 = "nw_protocol_implementation_get_output_frames";
        v14 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v156) = 0;
        if (__nwlog_fault(v14, type, &v156))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v15 = __nwlog_obj();
            v16 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v156 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v15 = __nwlog_obj();
            v27 = type[0];
            v28 = os_log_type_enabled(v15, type[0]);
            if (backtrace_string)
            {
              if (v28)
              {
                *buf = 136446466;
                v161 = "nw_protocol_implementation_get_output_frames";
                v162 = 2082;
                v163 = backtrace_string;
                _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v14)
              {
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            if (v28)
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v15, v27, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v15 = __nwlog_obj();
            v32 = type[0];
            if (os_log_type_enabled(v15, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v15, v32, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v14)
        {
LABEL_59:
          v18 = 0;
          v30 = 0;
LABEL_164:

          return v30;
        }

LABEL_58:
        free(v14);
        goto LABEL_59;
      }

      v11 = *a1[1].flow_id;
    }

    v17 = &v11[1].output_handler;
    v18 = v17;
    v19 = v11[1].handle;
    if (v19)
    {
      if (*(v19 + 10))
      {
        if (a2)
        {
          if (a6)
          {
            v20 = BYTE2(v11[7].output_handler_context);
            v21 = *v11[3].flow_id;
            v152 = a5;
            if (v19[16] != 3)
            {
              v25 = v20 >> 7;
              v151 = (BYTE3(v11[7].output_handler_context) >> 1) & 1;
              if ((v20 & 0x40) == 0)
              {
                v150 = 0;
LABEL_79:
                v148 = 0;
                v153 = a4;
                goto LABEL_88;
              }

              v29 = *&v11[3].flow_id[8];
              v148 = &v11[3].flow_id[8];
              if (v29 < a3)
              {
                if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                {
                  v134 = __nwlog_obj();
                  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
                  {
                    v135 = *&v11[3].flow_id[8];
                    *buf = 136447234;
                    v161 = "nw_protocol_implementation_get_output_frames";
                    v162 = 2082;
                    v163 = (&v11[7].output_handler_context + 7);
                    v164 = 2080;
                    v165 = " ";
                    v166 = 1024;
                    *v167 = a3;
                    *&v167[4] = 1024;
                    *&v167[6] = v135;
                    _os_log_impl(&dword_181A37000, v134, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sConnection is flow controlled below %u bytes (limit %u bytes), returning 0 frames", buf, 0x2Cu);
                  }
                }

                v30 = 0;
                BYTE4(v11[7].output_handler_context) |= 0x80u;
                goto LABEL_164;
              }

              v150 = 0;
              BYTE4(v11[7].output_handler_context) &= ~0x80u;
              if (v29 >= a4)
              {
                v29 = a4;
              }

LABEL_87:
              v153 = v29;
LABEL_88:
              default_input_handler = v11[2].default_input_handler;
              output_handler_context = v11[2].output_handler_context;
              if (*&v11[2].default_input_handler != 0)
              {
                v53 = 0xFFFFFFFF - (output_handler_context + default_input_handler);
                v54 = v153 + default_input_handler + output_handler_context;
                if (v53 < v153)
                {
                  v54 = -1;
                }

                v153 = v54;
              }

              if (!v25)
              {
                v59 = a2;
                outbound_data = nw_protocol_create_outbound_data(v18, v153, v151);
                metadata = nw_frame_get_metadata(outbound_data);
                if (metadata)
                {
                  v63 = metadata;
                  v64 = v18;
                  if (nw_protocol_definition_get_message_is_stream(v11[1].handle) && v11->default_input_handler == v59)
                  {
                    v59 = -2;
                  }

                  *v63 = v59;
                }

                if (*&v11[2].default_input_handler != 0)
                {
                  nw_frame_claim(outbound_data, v62, v11[2].default_input_handler, v11[2].output_handler_context);
                }

                outbound_data[4] = 0;
                tqh_last = a6->tqh_last;
                outbound_data[5] = tqh_last;
                *tqh_last = outbound_data;
                a6->tqh_last = outbound_data + 4;
                if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                {
                  v129 = __nwlog_obj();
                  if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136446978;
                    v161 = "nw_protocol_implementation_get_output_frames";
                    v162 = 2082;
                    v163 = (&v11[7].output_handler_context + 7);
                    v164 = 2080;
                    v165 = " ";
                    v166 = 1024;
                    *v167 = v153;
                    _os_log_impl(&dword_181A37000, v129, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCreated 1 outbound frame with total of %u bytes", buf, 0x26u);
                  }
                }

                if (v148 && *v148 != -1)
                {
                  *v148 -= v153;
                }

                v30 = 1;
                goto LABEL_164;
              }

              if (v21 + 1 >= 2)
              {
                v55 = v21;
              }

              else
              {
                v55 = 9216;
              }

              if (v153 >= v55)
              {
                v56 = v55;
              }

              else
              {
                v56 = v153;
              }

              if (v56 * a5 < a3)
              {
                v33 = v18;
                if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v57 = gLogObj;
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v58 = "s";
                    *buf = 136448002;
                    v161 = "nw_protocol_implementation_get_output_frames";
                    v162 = 2082;
                    v163 = (&v11[7].output_handler_context + 7);
                    v165 = " ";
                    v164 = 2080;
                    if (v152 == 1)
                    {
                      v58 = "";
                    }

                    v166 = 1024;
                    *v167 = v56;
                    *&v167[4] = 1024;
                    *&v167[6] = a3;
                    v168 = 1024;
                    v169 = a4;
                    v170 = 1024;
                    v171 = v152;
                    v172 = 2080;
                    v173 = v58;
                    _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot return %u/%u/%u bytes in %u datagram%s, returning 0 frames", buf, 0x42u);
                  }
                }

                if (v150)
                {
                  *(v150 + 26) |= 0x1000u;
                }

                else
                {
                  BYTE3(v11[7].output_handler_context) |= 1u;
                }

                v76 = a2->handle;
                v77 = a2;
                if (v76 != &nw_protocol_ref_counted_handle)
                {
                  if (v76 != &nw_protocol_ref_counted_additional_handle)
                  {
                    LOBYTE(v77) = 0;
                    goto LABEL_149;
                  }

                  v77 = *a2[1].flow_id;
                  if (!v77)
                  {
                    goto LABEL_149;
                  }
                }

                callbacks = v77[1].callbacks;
                if (callbacks)
                {
                  v77[1].callbacks = (&callbacks->add_input_handler + 1);
                }

                LOBYTE(v77) = -1;
LABEL_149:
                *type = a2;
                v159 = v77;
                v80 = v11->handle;
                v81 = v11;
                if (v80 == &nw_protocol_ref_counted_handle || v80 == &nw_protocol_ref_counted_additional_handle && (v81 = *v11[1].flow_id) != 0)
                {
                  v82 = v81[1].callbacks;
                  if (v82)
                  {
                    v81[1].callbacks = (&v82->add_input_handler + 1);
                  }

                  v44 = -1;
                }

                else
                {
                  v44 = 0;
                }

                v156 = v11;
                v157 = v44;
                v83 = a2->callbacks;
                if (v83)
                {
                  error = v83->error;
                  if (error)
                  {
                    error(a2, v11, 40);
LABEL_159:
                    if ((v157 & 1) == 0)
                    {
                      goto LABEL_161;
                    }

                    goto LABEL_160;
                  }
                }

                v124 = __nwlog_obj();
                identifier = a2->identifier;
                *buf = 136446722;
                v161 = "__nw_protocol_error";
                if (!identifier)
                {
                  identifier = "invalid";
                }

                v162 = 2082;
                v163 = identifier;
                v164 = 2048;
                v165 = a2;
                v115 = _os_log_send_and_compose_impl();

                v126 = a2;
                v155 = OS_LOG_TYPE_ERROR;
                v154 = 0;
                if (__nwlog_fault(v115, &v155, &v154))
                {
                  if (v155 == OS_LOG_TYPE_FAULT)
                  {
                    v117 = __nwlog_obj();
                    v127 = v155;
                    if (os_log_type_enabled(v117, v155))
                    {
                      name = v126->identifier->name;
                      if (!name)
                      {
                        name = "invalid";
                      }

                      *buf = 136446722;
                      v161 = "__nw_protocol_error";
                      v162 = 2082;
                      v163 = name;
                      v164 = 2048;
                      v165 = v126;
                      _os_log_impl(&dword_181A37000, v117, v127, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
                    }

LABEL_317:

                    goto LABEL_318;
                  }

                  if (v154 != 1)
                  {
                    v117 = __nwlog_obj();
                    v142 = v155;
                    if (os_log_type_enabled(v117, v155))
                    {
                      v143 = v126->identifier->name;
                      if (!v143)
                      {
                        v143 = "invalid";
                      }

                      *buf = 136446722;
                      v161 = "__nw_protocol_error";
                      v162 = 2082;
                      v163 = v143;
                      v164 = 2048;
                      v165 = v126;
                      _os_log_impl(&dword_181A37000, v117, v142, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
                    }

                    goto LABEL_317;
                  }

                  v130 = __nw_create_backtrace_string();
                  v117 = __nwlog_obj();
                  v137 = v155;
                  v138 = os_log_type_enabled(v117, v155);
                  if (!v130)
                  {
                    if (v138)
                    {
                      v147 = v126->identifier->name;
                      if (!v147)
                      {
                        v147 = "invalid";
                      }

                      *buf = 136446722;
                      v161 = "__nw_protocol_error";
                      v162 = 2082;
                      v163 = v147;
                      v164 = 2048;
                      v165 = v126;
                      _os_log_impl(&dword_181A37000, v117, v137, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
                    }

                    goto LABEL_317;
                  }

                  if (v138)
                  {
                    v139 = v126->identifier->name;
                    if (!v139)
                    {
                      v139 = "invalid";
                    }

                    *buf = 136446978;
                    v161 = "__nw_protocol_error";
                    v162 = 2082;
                    v163 = v139;
                    v164 = 2048;
                    v165 = v126;
                    v166 = 2082;
                    *v167 = v130;
                    _os_log_impl(&dword_181A37000, v117, v137, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
                  }

LABEL_280:

                  free(v130);
                  goto LABEL_318;
                }

                goto LABEL_318;
              }

              v149 = a2;
              v30 = 0;
              v66 = 0;
              if (a5)
              {
                v67 = v150;
                if (v153)
                {
                  LODWORD(v30) = 0;
                  v66 = 0;
                  do
                  {
                    v68 = nw_protocol_create_outbound_data(v18, v56, v151);
                    v69 = nw_frame_get_metadata(v68);
                    if (v69)
                    {
                      v71 = v69;
                      v72 = v18;
                      v73 = v18;
                      if (nw_protocol_definition_get_message_is_stream(v11[1].handle) && v11->default_input_handler == v149)
                      {
                        v74 = -2;
                      }

                      else
                      {
                        v74 = v149;
                      }

                      *v71 = v74;
                      v18 = v72;
                      v67 = v150;
                    }

                    if (*&v11[2].default_input_handler != 0)
                    {
                      nw_frame_claim(v68, v70, v11[2].default_input_handler, v11[2].output_handler_context);
                    }

                    v68[4] = 0;
                    v75 = a6->tqh_last;
                    v68[5] = v75;
                    *v75 = v68;
                    a6->tqh_last = v68 + 4;
                    v66 += v56;
                    v30 = (v30 + 1);
                  }

                  while (v30 < v152 && v66 < v153);
                }
              }

              else
              {
                v67 = v150;
              }

              if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
              {
                v136 = __nwlog_obj();
                if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136447234;
                  v161 = "nw_protocol_implementation_get_output_frames";
                  v162 = 2082;
                  v163 = (&v11[7].output_handler_context + 7);
                  v164 = 2080;
                  v165 = " ";
                  v166 = 1024;
                  *v167 = v30;
                  *&v167[4] = 1024;
                  *&v167[6] = v66;
                  _os_log_impl(&dword_181A37000, v136, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sCreated %u outbound frames with total of %u bytes", buf, 0x2Cu);
                }

                v67 = v150;
                if (v150)
                {
LABEL_143:
                  *(v67 + 26) &= ~0x1000u;
                  v78 = v148;
                  if (!v148)
                  {
                    goto LABEL_164;
                  }

                  goto LABEL_272;
                }
              }

              else if (v67)
              {
                goto LABEL_143;
              }

              BYTE3(v11[7].output_handler_context) &= ~1u;
              v78 = v148;
              if (!v148)
              {
                goto LABEL_164;
              }

LABEL_272:
              if (*v78 != -1)
              {
                *v78 -= v66;
              }

              goto LABEL_164;
            }

            v22 = a2->output_handler_context;
            if (!v22)
            {
              if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v31 = gLogObj;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v161 = "nw_protocol_implementation_get_output_frames";
                  v162 = 2082;
                  v163 = (&v11[7].output_handler_context + 7);
                  v164 = 2080;
                  v165 = " ";
                  v166 = 2048;
                  *v167 = a2;
                  _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sOutput handler context doesn't exist on protocol %p", buf, 0x2Au);
                }
              }

              goto LABEL_163;
            }

            v23 = *(v22 + 42);
            if ((v23 & 0x200) == 0)
            {
              v24 = BYTE2(v11[7].output_handler_context);
              if ((v23 & 2) == 0)
              {
                v24 = v20 | 0x10;
                BYTE2(v11[7].output_handler_context) = v20 | 0x10;
                v23 = *(v22 + 42);
              }

              if ((v23 & 0x800) != 0)
              {
                v21 = v22[19];
                v25 = 1;
                if (a5 == 1 && v21 < a3)
                {
                  v37 = v17;
                  maximum_datagram_size = nw_path_get_maximum_datagram_size(*v11[6].flow_id);
                  v39 = v22[20];
                  if (!v39)
                  {
                    maximum_message_size = nw_protocol_instance_get_maximum_message_size(v37, 0);
                    v39 = maximum_message_size - v21;
                    if (maximum_message_size <= v21)
                    {
                      v39 = v22[20];
                    }

                    else
                    {
                      v22[20] = v39;
                    }
                  }

                  v48 = v39 + v21;
                  v49 = maximum_datagram_size - v39;
                  if (maximum_datagram_size > v48)
                  {
                    v21 = v49;
                  }

                  v23 = *(v22 + 42);
                  v24 = BYTE2(v11[7].output_handler_context);
                  v25 = 1;
                  v18 = v37;
                  a5 = v152;
                }
              }

              else
              {
                v25 = v20 >> 7;
              }

              v150 = (v22 + 8);
              v151 = (v23 >> 10) & 1;
              if ((v24 & 0x40) == 0)
              {
                goto LABEL_79;
              }

              v50 = v22[18];
              v148 = (v22 + 18);
              if (v50 < a3)
              {
                if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0 && gLogDatapath == 1)
                {
                  v144 = __nwlog_obj();
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
                  {
                    v145 = *v148;
                    *buf = 136447234;
                    v161 = "nw_protocol_implementation_get_output_frames";
                    v162 = 2082;
                    v163 = (&v11[7].output_handler_context + 7);
                    v164 = 2080;
                    v165 = " ";
                    v166 = 1024;
                    *v167 = a3;
                    *&v167[4] = 1024;
                    *&v167[6] = v145;
                    _os_log_impl(&dword_181A37000, v144, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFlow is flow controlled below %u bytes (limit %u bytes), returning 0 frames", buf, 0x2Cu);
                  }

                  LOWORD(v23) = *(v22 + 42);
                }

                v30 = 0;
                *(v22 + 42) = v23 | 0x80;
                goto LABEL_164;
              }

              *(v22 + 42) = v23 & 0xFF7F;
              if (v50 >= a4)
              {
                v29 = a4;
              }

              else
              {
                v29 = v50;
              }

              goto LABEL_87;
            }

            v33 = v17;
            if ((SBYTE5(v11[7].output_handler_context) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136446722;
                v161 = "nw_protocol_implementation_get_output_frames";
                v162 = 2082;
                v163 = (&v11[7].output_handler_context + 7);
                v164 = 2080;
                v165 = " ";
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sIgnoring request for output frames from closed flow", buf, 0x20u);
              }
            }

            v35 = a2->handle;
            v36 = a2;
            if (v35 != &nw_protocol_ref_counted_handle)
            {
              if (v35 != &nw_protocol_ref_counted_additional_handle)
              {
                LOBYTE(v36) = 0;
                goto LABEL_64;
              }

              v36 = *a2[1].flow_id;
              if (!v36)
              {
                goto LABEL_64;
              }
            }

            v41 = v36[1].callbacks;
            if (v41)
            {
              v36[1].callbacks = (&v41->add_input_handler + 1);
            }

            LOBYTE(v36) = -1;
LABEL_64:
            *type = a2;
            v159 = v36;
            v42 = v11->handle;
            v43 = v11;
            if (v42 == &nw_protocol_ref_counted_handle || v42 == &nw_protocol_ref_counted_additional_handle && (v43 = *v11[1].flow_id) != 0)
            {
              v45 = v43[1].callbacks;
              if (v45)
              {
                v43[1].callbacks = (&v45->add_input_handler + 1);
              }

              v44 = -1;
            }

            else
            {
              v44 = 0;
            }

            v156 = v11;
            v157 = v44;
            v46 = a2->callbacks;
            if (v46)
            {
              v47 = v46->error;
              if (v47)
              {
                v47(a2, v11, 57);
                goto LABEL_159;
              }
            }

            v113 = __nwlog_obj();
            v114 = a2->identifier;
            *buf = 136446722;
            v161 = "__nw_protocol_error";
            if (!v114)
            {
              v114 = "invalid";
            }

            v162 = 2082;
            v163 = v114;
            v164 = 2048;
            v165 = a2;
            v115 = _os_log_send_and_compose_impl();

            v116 = a2;
            v155 = OS_LOG_TYPE_ERROR;
            v154 = 0;
            if (__nwlog_fault(v115, &v155, &v154))
            {
              if (v155 == OS_LOG_TYPE_FAULT)
              {
                v117 = __nwlog_obj();
                v118 = v155;
                if (os_log_type_enabled(v117, v155))
                {
                  v119 = v116->identifier->name;
                  if (!v119)
                  {
                    v119 = "invalid";
                  }

                  *buf = 136446722;
                  v161 = "__nw_protocol_error";
                  v162 = 2082;
                  v163 = v119;
                  v164 = 2048;
                  v165 = v116;
                  _os_log_impl(&dword_181A37000, v117, v118, "%{public}s protocol %{public}s (%p) has invalid error callback", buf, 0x20u);
                }

                goto LABEL_317;
              }

              if (v154 != 1)
              {
                v117 = __nwlog_obj();
                v140 = v155;
                if (os_log_type_enabled(v117, v155))
                {
                  v141 = v116->identifier->name;
                  if (!v141)
                  {
                    v141 = "invalid";
                  }

                  *buf = 136446722;
                  v161 = "__nw_protocol_error";
                  v162 = 2082;
                  v163 = v141;
                  v164 = 2048;
                  v165 = v116;
                  _os_log_impl(&dword_181A37000, v117, v140, "%{public}s protocol %{public}s (%p) has invalid error callback, backtrace limit exceeded", buf, 0x20u);
                }

                goto LABEL_317;
              }

              v130 = __nw_create_backtrace_string();
              v117 = __nwlog_obj();
              v131 = v155;
              v132 = os_log_type_enabled(v117, v155);
              if (!v130)
              {
                if (v132)
                {
                  v146 = v116->identifier->name;
                  if (!v146)
                  {
                    v146 = "invalid";
                  }

                  *buf = 136446722;
                  v161 = "__nw_protocol_error";
                  v162 = 2082;
                  v163 = v146;
                  v164 = 2048;
                  v165 = v116;
                  _os_log_impl(&dword_181A37000, v117, v131, "%{public}s protocol %{public}s (%p) has invalid error callback, no backtrace", buf, 0x20u);
                }

                goto LABEL_317;
              }

              if (v132)
              {
                v133 = v116->identifier->name;
                if (!v133)
                {
                  v133 = "invalid";
                }

                *buf = 136446978;
                v161 = "__nw_protocol_error";
                v162 = 2082;
                v163 = v133;
                v164 = 2048;
                v165 = v116;
                v166 = 2082;
                *v167 = v130;
                _os_log_impl(&dword_181A37000, v117, v131, "%{public}s protocol %{public}s (%p) has invalid error callback, dumping backtrace:%{public}s", buf, 0x2Au);
              }

              goto LABEL_280;
            }

LABEL_318:
            if (v115)
            {
              free(v115);
            }

            v18 = v33;
            if ((v44 & 1) == 0)
            {
              goto LABEL_161;
            }

LABEL_160:
            nw::release_if_needed<nw_protocol *>(&v156);
LABEL_161:
            if (v159)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

LABEL_163:
            v30 = 0;
            goto LABEL_164;
          }

          v98 = __nwlog_obj();
          *buf = 136446210;
          v161 = "nw_protocol_implementation_get_output_frames";
          v91 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v156) = 0;
          if (!__nwlog_fault(v91, type, &v156))
          {
LABEL_293:
            if (v91)
            {
              free(v91);
            }

            goto LABEL_163;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v92 = __nwlog_obj();
            v99 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v99, "%{public}s called with null return_array", buf, 0xCu);
            }

LABEL_292:

            goto LABEL_293;
          }

          if (v156 != 1)
          {
            v92 = __nwlog_obj();
            v123 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v123, "%{public}s called with null return_array, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_292;
          }

          v103 = __nw_create_backtrace_string();
          v92 = __nwlog_obj();
          v110 = type[0];
          v111 = os_log_type_enabled(v92, type[0]);
          if (!v103)
          {
            if (v111)
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v110, "%{public}s called with null return_array, no backtrace", buf, 0xCu);
            }

            goto LABEL_292;
          }

          if (v111)
          {
            *buf = 136446466;
            v161 = "nw_protocol_implementation_get_output_frames";
            v162 = 2082;
            v163 = v103;
            _os_log_impl(&dword_181A37000, v92, v110, "%{public}s called with null return_array, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }

        else
        {
          v96 = __nwlog_obj();
          *buf = 136446210;
          v161 = "nw_protocol_implementation_get_output_frames";
          v91 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          LOBYTE(v156) = 0;
          if (!__nwlog_fault(v91, type, &v156))
          {
            goto LABEL_293;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v92 = __nwlog_obj();
            v97 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v97, "%{public}s called with null input_protocol", buf, 0xCu);
            }

            goto LABEL_292;
          }

          if (v156 != 1)
          {
            v92 = __nwlog_obj();
            v122 = type[0];
            if (os_log_type_enabled(v92, type[0]))
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v122, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
            }

            goto LABEL_292;
          }

          v103 = __nw_create_backtrace_string();
          v92 = __nwlog_obj();
          v108 = type[0];
          v109 = os_log_type_enabled(v92, type[0]);
          if (!v103)
          {
            if (v109)
            {
              *buf = 136446210;
              v161 = "nw_protocol_implementation_get_output_frames";
              _os_log_impl(&dword_181A37000, v92, v108, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
            }

            goto LABEL_292;
          }

          if (v109)
          {
            *buf = 136446466;
            v161 = "nw_protocol_implementation_get_output_frames";
            v162 = 2082;
            v163 = v103;
            _os_log_impl(&dword_181A37000, v92, v108, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }
        }
      }

      else
      {
        v94 = __nwlog_obj();
        *buf = 136446210;
        v161 = "nw_protocol_implementation_get_output_frames";
        v91 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        LOBYTE(v156) = 0;
        if (!__nwlog_fault(v91, type, &v156))
        {
          goto LABEL_293;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v92 = __nwlog_obj();
          v95 = type[0];
          if (os_log_type_enabled(v92, type[0]))
          {
            *buf = 136446210;
            v161 = "nw_protocol_implementation_get_output_frames";
            _os_log_impl(&dword_181A37000, v92, v95, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_292;
        }

        if (v156 != 1)
        {
          v92 = __nwlog_obj();
          v121 = type[0];
          if (os_log_type_enabled(v92, type[0]))
          {
            *buf = 136446210;
            v161 = "nw_protocol_implementation_get_output_frames";
            _os_log_impl(&dword_181A37000, v92, v121, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_292;
        }

        v103 = __nw_create_backtrace_string();
        v92 = __nwlog_obj();
        v106 = type[0];
        v107 = os_log_type_enabled(v92, type[0]);
        if (!v103)
        {
          if (v107)
          {
            *buf = 136446210;
            v161 = "nw_protocol_implementation_get_output_frames";
            _os_log_impl(&dword_181A37000, v92, v106, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_292;
        }

        if (v107)
        {
          *buf = 136446466;
          v161 = "nw_protocol_implementation_get_output_frames";
          v162 = 2082;
          v163 = v103;
          _os_log_impl(&dword_181A37000, v92, v106, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v90 = __nwlog_obj();
      *buf = 136446210;
      v161 = "nw_protocol_implementation_get_output_frames";
      v91 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      LOBYTE(v156) = 0;
      if (!__nwlog_fault(v91, type, &v156))
      {
        goto LABEL_293;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v92 = __nwlog_obj();
        v93 = type[0];
        if (os_log_type_enabled(v92, type[0]))
        {
          *buf = 136446210;
          v161 = "nw_protocol_implementation_get_output_frames";
          _os_log_impl(&dword_181A37000, v92, v93, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_292;
      }

      if (v156 != 1)
      {
        v92 = __nwlog_obj();
        v120 = type[0];
        if (os_log_type_enabled(v92, type[0]))
        {
          *buf = 136446210;
          v161 = "nw_protocol_implementation_get_output_frames";
          _os_log_impl(&dword_181A37000, v92, v120, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_292;
      }

      v103 = __nw_create_backtrace_string();
      v92 = __nwlog_obj();
      v104 = type[0];
      v105 = os_log_type_enabled(v92, type[0]);
      if (!v103)
      {
        if (v105)
        {
          *buf = 136446210;
          v161 = "nw_protocol_implementation_get_output_frames";
          _os_log_impl(&dword_181A37000, v92, v104, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_292;
      }

      if (v105)
      {
        *buf = 136446466;
        v161 = "nw_protocol_implementation_get_output_frames";
        v162 = 2082;
        v163 = v103;
        _os_log_impl(&dword_181A37000, v92, v104, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v103);
    goto LABEL_293;
  }

  v86 = __nwlog_obj();
  *buf = 136446210;
  v161 = "nw_protocol_implementation_get_output_frames";
  v87 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  LOBYTE(v156) = 0;
  if (__nwlog_fault(v87, type, &v156))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v88 = __nwlog_obj();
      v89 = type[0];
      if (os_log_type_enabled(v88, type[0]))
      {
        *buf = 136446210;
        v161 = "nw_protocol_implementation_get_output_frames";
        _os_log_impl(&dword_181A37000, v88, v89, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v156 == 1)
    {
      v100 = __nw_create_backtrace_string();
      v88 = __nwlog_obj();
      v101 = type[0];
      v102 = os_log_type_enabled(v88, type[0]);
      if (v100)
      {
        if (v102)
        {
          *buf = 136446466;
          v161 = "nw_protocol_implementation_get_output_frames";
          v162 = 2082;
          v163 = v100;
          _os_log_impl(&dword_181A37000, v88, v101, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v100);
        goto LABEL_262;
      }

      if (v102)
      {
        *buf = 136446210;
        v161 = "nw_protocol_implementation_get_output_frames";
        _os_log_impl(&dword_181A37000, v88, v101, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v88 = __nwlog_obj();
      v112 = type[0];
      if (os_log_type_enabled(v88, type[0]))
      {
        *buf = 136446210;
        v161 = "nw_protocol_implementation_get_output_frames";
        _os_log_impl(&dword_181A37000, v88, v112, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_262:
  if (v87)
  {
    free(v87);
  }

  return 0;
}

id nw_interface_create_from_dictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && xpc_dictionary_get_string(v1, nw_interface_key_name))
  {
    string = xpc_dictionary_get_string(v2, nw_interface_key_name);
    uint64 = xpc_dictionary_get_uint64(v2, nw_interface_key_index);
    v5 = xpc_dictionary_get_uint64(v2, nw_interface_key_type);
    v6 = xpc_dictionary_get_uint64(v2, nw_interface_key_subtype);
    v7 = xpc_dictionary_get_uint64(v2, nw_interface_key_generation);
    v8 = nw_interface_create_static(string, uint64, v5, v6, v7, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void nw_array_remove_objects(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v19 = "nw_array_remove_objects";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v16 = 0;
    if (!__nwlog_fault(v7, &type, &v16))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_array_remove_objects";
        v10 = "%{public}s called with null array";
LABEL_32:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type;
      v13 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "nw_array_remove_objects";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null array, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v7);
        goto LABEL_4;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "nw_array_remove_objects";
        v10 = "%{public}s called with null array, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v19 = "nw_array_remove_objects";
        v10 = "%{public}s called with null array, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v4)
  {
    _nw_array_remove_objects(v3, v4);
    goto LABEL_4;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_array_remove_objects";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (!__nwlog_fault(v7, &type, &v16))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_array_remove_objects";
      v10 = "%{public}s called with null remove_block";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v16 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v19 = "nw_array_remove_objects";
      v10 = "%{public}s called with null remove_block, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = type;
  v15 = os_log_type_enabled(v8, type);
  if (!v14)
  {
    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_array_remove_objects";
      v10 = "%{public}s called with null remove_block, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v15)
  {
    *buf = 136446466;
    v19 = "nw_array_remove_objects";
    v20 = 2082;
    v21 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null remove_block, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void nw_http3_stream_connect_lower(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 732);
    if ((v2 & 4) == 0)
    {
      return;
    }

    *(a1 + 376) = 1;
    *(a1 + 732) = v2 & 0xFFF3 | 8;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          v5();
LABEL_7:
          *(a1 + 732) &= ~8u;
          return;
        }
      }
    }

    __nwlog_obj();
    v6 = *(a1 + 32);
    v7 = "invalid";
    if (v6)
    {
      v8 = *(v6 + 16);
      if (v8)
      {
        v7 = v8;
      }
    }

    *buf = 136446466;
    v36 = "nw_http3_stream_connect_lower";
    v37 = 2082;
    v38 = v7;
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v9, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_49;
        }

        v12 = *(a1 + 32);
        v13 = "invalid";
        if (v12)
        {
          v14 = *(v12 + 16);
          if (v14)
          {
            v13 = v14;
          }
        }

        *buf = 136446466;
        v36 = "nw_http3_stream_connect_lower";
        v37 = 2082;
        v38 = v13;
        v15 = "%{public}s protocol %{public}s has invalid connect callback";
        goto LABEL_48;
      }

      if (v33 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_49;
        }

        v27 = *(a1 + 32);
        v28 = "invalid";
        if (v27)
        {
          v29 = *(v27 + 16);
          if (v29)
          {
            v28 = v29;
          }
        }

        *buf = 136446466;
        v36 = "nw_http3_stream_connect_lower";
        v37 = 2082;
        v38 = v28;
        v15 = "%{public}s protocol %{public}s has invalid connect callback, backtrace limit exceeded";
        goto LABEL_48;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v21 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v21)
        {
          v22 = *(a1 + 32);
          v23 = "invalid";
          if (v22)
          {
            v24 = *(v22 + 16);
            if (v24)
            {
              v23 = v24;
            }
          }

          *buf = 136446722;
          v36 = "nw_http3_stream_connect_lower";
          v37 = 2082;
          v38 = v23;
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s protocol %{public}s has invalid connect callback, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(backtrace_string);
        goto LABEL_49;
      }

      if (v21)
      {
        v30 = *(a1 + 32);
        v31 = "invalid";
        if (v30)
        {
          v32 = *(v30 + 16);
          if (v32)
          {
            v31 = v32;
          }
        }

        *buf = 136446466;
        v36 = "nw_http3_stream_connect_lower";
        v37 = 2082;
        v38 = v31;
        v15 = "%{public}s protocol %{public}s has invalid connect callback, no backtrace";
LABEL_48:
        _os_log_impl(&dword_181A37000, v10, v11, v15, buf, 0x16u);
      }
    }

LABEL_49:
    if (v9)
    {
      free(v9);
    }

    goto LABEL_7;
  }

  __nwlog_obj();
  *buf = 136446210;
  v36 = "nw_http3_stream_connect_lower";
  v16 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v33 = 0;
  if (__nwlog_fault(v16, &type, &v33))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v36 = "nw_http3_stream_connect_lower";
      v19 = "%{public}s called with null http3_stream";
      goto LABEL_53;
    }

    if (v33 != 1)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v17, type))
      {
        goto LABEL_54;
      }

      *buf = 136446210;
      v36 = "nw_http3_stream_connect_lower";
      v19 = "%{public}s called with null http3_stream, backtrace limit exceeded";
      goto LABEL_53;
    }

    v25 = __nw_create_backtrace_string();
    v17 = __nwlog_obj();
    v18 = type;
    v26 = os_log_type_enabled(v17, type);
    if (v25)
    {
      if (v26)
      {
        *buf = 136446466;
        v36 = "nw_http3_stream_connect_lower";
        v37 = 2082;
        v38 = v25;
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v25);
      goto LABEL_54;
    }

    if (v26)
    {
      *buf = 136446210;
      v36 = "nw_http3_stream_connect_lower";
      v19 = "%{public}s called with null http3_stream, no backtrace";
LABEL_53:
      _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
    }
  }

LABEL_54:
  if (v16)
  {
    free(v16);
  }
}

void nw_http3_signal_output_pending(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 1397);
    if (((((v3 & 0x80) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 128;
      }

      else
      {
        v4 = 0;
      }

      *(a1 + 1397) = v3 & 0xFF7F | v4;
      if ((*(a1 + 1399) & 0x20) == 0 && gLogDatapath == 1)
      {
        v14 = a2;
        v15 = __nwlog_obj();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        LOBYTE(a2) = v14;
        if (v16)
        {
          v17 = *(a1 + 1304);
          v18 = "no longer ";
          *buf = 136447234;
          v22 = "nw_http3_signal_output_pending";
          v23 = 2082;
          if (v14)
          {
            v18 = "";
          }

          v24 = (a1 + 1313);
          v25 = 2080;
          v26 = " ";
          v27 = 1024;
          v28 = v17;
          v29 = 2082;
          v30 = v18;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> signalling output %{public}spending", buf, 0x30u);
          LOBYTE(a2) = v14;
        }
      }

      v5 = *(a1 + 32);
      buf[0] = a2;
      if (v5)
      {
        v6 = *(v5 + 24);
        if (v6)
        {
          v7 = *(v6 + 160);
          if (v7)
          {
            v7();
          }
        }
      }
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http3_signal_output_pending";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v8, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v22 = "nw_http3_signal_output_pending";
      v11 = "%{public}s called with null http3";
      goto LABEL_30;
    }

    if (v19 != 1)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (!os_log_type_enabled(v9, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v22 = "nw_http3_signal_output_pending";
      v11 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_30;
    }

    backtrace_string = __nw_create_backtrace_string();
    v9 = __nwlog_obj();
    v10 = type;
    v13 = os_log_type_enabled(v9, type);
    if (backtrace_string)
    {
      if (v13)
      {
        *buf = 136446466;
        v22 = "nw_http3_signal_output_pending";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null http3, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_31;
    }

    if (v13)
    {
      *buf = 136446210;
      v22 = "nw_http3_signal_output_pending";
      v11 = "%{public}s called with null http3, no backtrace";
LABEL_30:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
    }
  }

LABEL_31:
  if (v8)
  {
    free(v8);
  }
}

void sub_181D71A08(uint64_t a1, unsigned int (**a2)(void, void))
{
  v4 = *sub_182AD2388();
  v32 = v4;
  v5 = *(**(a1 + OBJC_IVAR____TtC7Network7NWArray_applyCount) + 136);

  if (__swp(0xFFFFFFFF, v5(v6)))
  {
    should_abort = __nwlog_should_abort("cannot remove during apply");

    _Block_release(a2);
    if ((should_abort & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v28 = v5;
  v8 = OBJC_IVAR____TtC7Network7NWArray_deque;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = v9[4];
  v11 = v9[3] + v10;
  if (v9[2] < v11)
  {
    v11 = v9[2];
  }

  v29 = *(a1 + v8);
  v30 = v9[4];
  v31 = v11;

  while (v10 != v31)
  {
LABEL_7:
    v13 = &v9[v10++];
    v30 = v10;
    v14 = v13[5];
    swift_unknownObjectRetain();
    if (a2[2](a2, v14))
    {
      isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    }

    else
    {
      v15 = v4[3];
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v4[2] < v16 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_181ACC600(isUniquelyReferenced_nonNull_native, v16);
        v4 = v32;
      }

      v17 = v4[3];
      v18 = v4[4];
      v21 = __OFADD__(v18, v17);
      v19 = v18 + v17;
      if (v21)
      {
        goto LABEL_31;
      }

      if (v17 < 0)
      {
        if (v19 < 0)
        {
          v23 = v4[2];
          v21 = __OFADD__(v19, v23);
          v19 += v23;
          if (v21)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = v4[2];
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v22 < 0 == v21)
        {
          v19 = v22;
          if (v21)
          {
            goto LABEL_34;
          }
        }
      }

      v4[v19 + 5] = v14;
      v21 = __OFADD__(v17, 1);
      v24 = v17 + 1;
      if (v21)
      {
        goto LABEL_32;
      }

      v4[3] = v24;
    }
  }

  if (sub_181AC81FC(isUniquelyReferenced_nonNull_native))
  {
    v9 = v29;
    v10 = v30;
    goto LABEL_7;
  }

  v26 = v28(v25);
  __swp(v27, v26);
  if (v27 == 255 || (__nwlog_should_abort("unexpected value for apply count") & 1) == 0)
  {
    *(a1 + v8) = v4;

    _Block_release(a2);
    return;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

id nw_interface_create_static(uint64_t a1, signed int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, char a7, char a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    v12 = __nwlog_obj();
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v22 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v22)
          {
            *buf = 136446722;
            v31 = "nw_interface_create_static";
            v32 = 2082;
            v33 = "Invalid interface index";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
LABEL_75:
          if (!v13)
          {
            return 0;
          }

LABEL_76:
          free(v13);
          return 0;
        }

        if (!v22)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_74;
      }

LABEL_60:
      *buf = 136446466;
      v31 = "nw_interface_create_static";
      v32 = 2082;
      v33 = "Invalid interface index";
      v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
      goto LABEL_73;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_74;
    }

    goto LABEL_24;
  }

  if ((a6 & 0x80000000) != 0)
  {
    v16 = __nwlog_obj();
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v28 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_74;
        }

        goto LABEL_60;
      }

      v23 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v24 = os_log_type_enabled(v14, type);
      if (!v23)
      {
        if (!v24)
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }

      if (!v24)
      {
        goto LABEL_51;
      }

      goto LABEL_45;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_74;
    }

LABEL_24:
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
LABEL_73:
    _os_log_impl(&dword_181A37000, v14, v15, v19, buf, 0x16u);
    goto LABEL_74;
  }

  if ((a5 & 0x80000000) != 0)
  {
    v17 = __nwlog_obj();
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_74;
      }

      goto LABEL_24;
    }

    if (v28 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_74;
      }

      goto LABEL_60;
    }

    v23 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v25 = os_log_type_enabled(v14, type);
    if (!v23)
    {
      if (!v25)
      {
        goto LABEL_74;
      }

      goto LABEL_70;
    }

    if (!v25)
    {
      goto LABEL_51;
    }

LABEL_45:
    *buf = 136446722;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v34 = 2082;
    v35 = v23;
    goto LABEL_50;
  }

  if ((a9 & 0x80000000) != 0)
  {
    v18 = __nwlog_obj();
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface index";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_74;
      }

      goto LABEL_24;
    }

    if (v28 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v26 = os_log_type_enabled(v14, type);
      if (v23)
      {
        if (!v26)
        {
          goto LABEL_51;
        }

        goto LABEL_45;
      }

      if (!v26)
      {
        goto LABEL_74;
      }

LABEL_70:
      *buf = 136446466;
      v31 = "nw_interface_create_static";
      v32 = 2082;
      v33 = "Invalid interface index";
      v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
      goto LABEL_73;
    }

    v14 = __nwlog_obj();
    v15 = type;
    if (!os_log_type_enabled(v14, type))
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  if (!a1)
  {
    v20 = __nwlog_obj();
    *buf = 136446466;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface name";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v13, &type, &v28))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446466;
        v31 = "nw_interface_create_static";
        v32 = 2082;
        v33 = "Invalid interface name";
        v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s";
        goto LABEL_73;
      }

LABEL_74:

      goto LABEL_75;
    }

    if (v28 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446466;
        v31 = "nw_interface_create_static";
        v32 = 2082;
        v33 = "Invalid interface name";
        v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, backtrace limit exceeded";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v23 = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v27 = os_log_type_enabled(v14, type);
    if (!v23)
    {
      if (v27)
      {
        *buf = 136446466;
        v31 = "nw_interface_create_static";
        v32 = 2082;
        v33 = "Invalid interface name";
        v19 = "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, no backtrace";
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    if (!v27)
    {
LABEL_51:

      free(v23);
      if (!v13)
      {
        return 0;
      }

      goto LABEL_76;
    }

    *buf = 136446722;
    v31 = "nw_interface_create_static";
    v32 = 2082;
    v33 = "Invalid interface name";
    v34 = 2082;
    v35 = v23;
LABEL_50:
    _os_log_impl(&dword_181A37000, v14, v15, "%{public}s BUG IN CLIENT OF LIBNETWORK: %{public}s, dumping backtrace:%{public}s", buf, 0x20u);
    goto LABEL_51;
  }

  return _nw_interface_create_static(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t __nw_protocol_remove_instance_block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 16))
  {
    __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_protocol_remove_instance_block_invoke";
    v6 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_21;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v22 = "nw_protocol_remove_instance_block_invoke";
      v9 = "%{public}s called with null protocol->identifier";
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v17 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          v22 = "nw_protocol_remove_instance_block_invoke";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (!v17)
      {
LABEL_21:
        if (v6)
        {
          free(v6);
        }

        return 1;
      }

      *buf = 136446210;
      v22 = "nw_protocol_remove_instance_block_invoke";
      v9 = "%{public}s called with null protocol->identifier, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_21;
      }

      *buf = 136446210;
      v22 = "nw_protocol_remove_instance_block_invoke";
      v9 = "%{public}s called with null protocol->identifier, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
    goto LABEL_21;
  }

  if (gLogDatapath == 1)
  {
    v10 = a2;
    v11 = __nwlog_obj();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    a2 = v10;
    if (v12)
    {
      logging_description = nw_endpoint_get_logging_description(v10);
      v14 = *(a1 + 32);
      v15 = *(v14 + 16);
      *buf = 136447234;
      v22 = "nw_protocol_remove_instance_block_invoke";
      v23 = 2080;
      v24 = logging_description;
      v25 = 2048;
      v26 = v10;
      v27 = 2048;
      v28 = v14;
      v29 = 2080;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s checking registered endpoint %s (%p) to remove instance %p of %s", buf, 0x34u);
      a2 = v10;
    }
  }

  v3 = nw_endpoint_copy_registrar_for_identifier(a2, *(*(a1 + 32) + 16), 0);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  nw_protocol_instance_registrar_remove_instance(v3, *(a1 + 32));
  v5 = nw_protocol_instance_registrar_get_instance_count(v4) == 0;
  os_release(v4);
  return v5;
}

id sub_181D72A44(uint64_t a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5, unsigned int a6, char a7, char a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  v33 = sub_182AD3158();
  v32 = v18;
  if (a4 > 4000)
  {
    if (a4 == 4001)
    {
      v19 = 3;
      goto LABEL_11;
    }

    if (a4 == 5001)
    {
      v19 = 4;
      goto LABEL_11;
    }

LABEL_8:
    v34 = 0;
    goto LABEL_12;
  }

  if (a4 == 1001)
  {
    v19 = 1;
    goto LABEL_11;
  }

  if (a4 != 1002)
  {
    goto LABEL_8;
  }

  v19 = 2;
LABEL_11:
  v34 = v19;
LABEL_12:
  if (a3 >= 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3;
  }

  v31 = v20;
  if (a7)
  {
    v21 = 65;
  }

  else
  {
    v21 = 64;
  }

  if (a8)
  {
    v22 = v21;
  }

  else
  {
    v22 = a7 & 1;
  }

  v23 = a5;
  v37 = 1;
  v36 = 1;
  type metadata accessor for Interface.BackingClass();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a6;
  *(v24 + 32) = v23;
  *(v24 + 40) = v33;
  *(v24 + 48) = v32;
  *(v24 + 56) = a9;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 80) = a10;
  *(v24 + 88) = a10 == 0;
  *(v24 + 96) = a11;
  *(v24 + 104) = a11 == 0;
  *(v24 + 120) = 0;
  *(v24 + 128) = 0;
  *(v24 + 112) = 0;
  *(v24 + 136) = v22;
  *(v24 + 148) = 0;
  *(v24 + 140) = 0;
  *(v24 + 153) = 0;
  *(v24 + 161) = 1;
  *(v24 + 175) = 0;
  *(v24 + 162) = 0;
  *(v24 + 170) = 0;
  *(v24 + 183) = 1;
  *(v24 + 184) = v31;
  *(v24 + 185) = v34;
  v25 = type metadata accessor for __NWInterface();
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtC7Network13__NWInterface_lock;

  v28 = swift_slowAlloc();
  *&v26[v27] = v28;
  *&v26[OBJC_IVAR____TtC7Network13__NWInterface_nameStorage] = 0;
  *&v26[OBJC_IVAR____TtC7Network13__NWInterface_interface] = v24;
  *v28 = 0;
  v35.receiver = v26;
  v35.super_class = v25;
  v29 = objc_msgSendSuper2(&v35, sel_init);

  return v29;
}

uint64_t nw_parameters_get_prohibit_joining_protocols(char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_parameters_get_prohibit_joining_protocols(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_parameters_get_prohibit_joining_protocols";
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
        v12 = "nw_parameters_get_prohibit_joining_protocols";
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
            v12 = "nw_parameters_get_prohibit_joining_protocols";
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
        v12 = "nw_parameters_get_prohibit_joining_protocols";
        v6 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_parameters_get_prohibit_joining_protocols";
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

void nw_protocol_instance_registrar_remove_instance(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!a2)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v27 = "nw_protocol_instance_registrar_remove_instance";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v6, &type, &v24))
    {
      goto LABEL_42;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_registrar_remove_instance";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v14 = type;
      v15 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v27 = "nw_protocol_instance_registrar_remove_instance";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v6)
        {
          goto LABEL_5;
        }

LABEL_43:
        free(v6);
        goto LABEL_5;
      }

      if (v15)
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_registrar_remove_instance";
        _os_log_impl(&dword_181A37000, v7, v14, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v27 = "nw_protocol_instance_registrar_remove_instance";
        _os_log_impl(&dword_181A37000, v7, v19, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (*(a2 + 16))
  {
    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a2 + 16);
        *buf = 136446978;
        v27 = "nw_protocol_instance_registrar_remove_instance";
        v28 = 2112;
        v29 = v3;
        v30 = 2048;
        v31 = a2;
        v32 = 2080;
        v33 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %@ checking to remove instance %p of %s", buf, 0x2Au);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __nw_protocol_instance_registrar_remove_instance_block_invoke;
    aBlock[3] = &unk_1E6A3AC58;
    v22 = v3;
    v23 = a2;
    v4 = _Block_copy(aBlock);
    os_unfair_lock_lock(v3 + 2);
    v4[2](v4);
    os_unfair_lock_unlock(v3 + 2);

    goto LABEL_5;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v27 = "nw_protocol_instance_registrar_remove_instance";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v6, &type, &v24))
  {
    goto LABEL_42;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v10 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_registrar_remove_instance";
      _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null protocol->identifier", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v24 != 1)
  {
    v7 = __nwlog_obj();
    v20 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_registrar_remove_instance";
      _os_log_impl(&dword_181A37000, v7, v20, "%{public}s called with null protocol->identifier, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_41;
  }

  v16 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v17 = type;
  v18 = os_log_type_enabled(v7, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "nw_protocol_instance_registrar_remove_instance";
      _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol->identifier, no backtrace", buf, 0xCu);
    }

    goto LABEL_41;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "nw_protocol_instance_registrar_remove_instance";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v7, v17, "%{public}s called with null protocol->identifier, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_5:
}

void __nw_protocol_instance_registrar_remove_instance_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  if (v1)
  {
    v3 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
    v4 = "nw_protocol_instance_registrar_remove_instance_block_invoke";
    v5 = &dword_181A37000;
    while (1)
    {
      v6 = *v1;
      if (v1[2] != *(a1 + 40))
      {
        goto LABEL_5;
      }

      if (BYTE1(v3[82].isa) == 1)
      {
        v33 = __nwlog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v34 = *(a1 + 32);
          v35 = *(a1 + 40);
          v36 = *(v35 + 16);
          *buf = 136446978;
          v40 = v4;
          v41 = 2112;
          v42 = v34;
          v43 = 2048;
          v44 = v35;
          v45 = 2080;
          v46 = v36;
          _os_log_impl(v5, v33, OS_LOG_TYPE_DEBUG, "%{public}s %@ found instance %p of %s, removing", buf, 0x2Au);
        }
      }

      v7 = v1[3];
      v1[3] = 0;

      v8 = *v1;
      v9 = v1[1];
      if (*v1)
      {
        v8[1] = v9;
      }

      *v9 = v8;
      v10 = *(a1 + 32);
      v11 = *(v10 + 64);
      *(v10 + 64) = v11 - 1;
      if (!v11)
      {
        break;
      }

LABEL_4:
      free(v1);
LABEL_5:
      v1 = v6;
      if (!v6)
      {
        return;
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    v13 = *(*(a1 + 32) + 64);
    *buf = 136446978;
    v40 = v4;
    v41 = 2082;
    v42 = "registrar->instance_count";
    v43 = 2048;
    v44 = 1;
    v45 = 2048;
    v46 = v13;
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (!__nwlog_fault(v14, &type, &v37))
    {
LABEL_24:
      if (!v14)
      {
LABEL_3:
        *(*(a1 + 32) + 64) = 0;
        goto LABEL_4;
      }

LABEL_25:
      free(v14);
      goto LABEL_3;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
LABEL_23:

        goto LABEL_24;
      }

      v17 = *(*(a1 + 32) + 64);
      *buf = 136446978;
      v40 = v4;
      v41 = 2082;
      v42 = "registrar->instance_count";
      v43 = 2048;
      v44 = 1;
      v45 = 2048;
      v46 = v17;
      v18 = v5;
      v19 = v15;
      v20 = v16;
      v21 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu";
    }

    else
    {
      if (v37 == 1)
      {
        v22 = v3;
        v23 = v5;
        v24 = v4;
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        v28 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v28)
          {
            v29 = *(*(a1 + 32) + 64);
            *buf = 136447234;
            v40 = v24;
            v41 = 2082;
            v42 = "registrar->instance_count";
            v43 = 2048;
            v44 = 1;
            v45 = 2048;
            v46 = v29;
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(v23, v26, v27, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
        }

        else
        {
          if (v28)
          {
            v32 = *(*(a1 + 32) + 64);
            *buf = 136446978;
            v40 = v24;
            v41 = 2082;
            v42 = "registrar->instance_count";
            v43 = 2048;
            v44 = 1;
            v45 = 2048;
            v46 = v32;
            _os_log_impl(v23, v26, v27, "%{public}s Underflow: %{public}s, decrement %llu, result %llu, no backtrace", buf, 0x2Au);
          }
        }

        v4 = v24;
        v5 = v23;
        v3 = v22;
        if (!v14)
        {
          goto LABEL_3;
        }

        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v30 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_23;
      }

      v31 = *(*(a1 + 32) + 64);
      *buf = 136446978;
      v40 = v4;
      v41 = 2082;
      v42 = "registrar->instance_count";
      v43 = 2048;
      v44 = 1;
      v45 = 2048;
      v46 = v31;
      v18 = v5;
      v19 = v15;
      v20 = v30;
      v21 = "%{public}s Underflow: %{public}s, decrement %llu, result %llu, backtrace limit exceeded";
    }

    _os_log_impl(v18, v19, v20, v21, buf, 0x2Au);
    goto LABEL_23;
  }
}

BOOL sub_181D739D0(uint64_t a1, unint64_t a2, char a3, uint64_t a4, char a5)
{
  v11 = *(a1 + 272);
  v85[8] = *(a1 + 256);
  v85[9] = v11;
  v12 = *(a1 + 208);
  v85[4] = *(a1 + 192);
  v85[5] = v12;
  v13 = *(a1 + 240);
  v85[6] = *(a1 + 224);
  v85[7] = v13;
  v14 = *(a1 + 144);
  v85[0] = *(a1 + 128);
  v85[1] = v14;
  v15 = *(a1 + 176);
  v85[2] = *(a1 + 160);
  v85[3] = v15;
  v16 = *(v5 + 256);
  v17 = *(v5 + 272);
  v18 = *(v5 + 224);
  v86[7] = *(v5 + 240);
  v86[8] = v16;
  v86[9] = v17;
  v86[10] = *(v5 + 288);
  v19 = *(v5 + 192);
  v20 = *(v5 + 208);
  v21 = *(v5 + 160);
  v86[3] = *(v5 + 176);
  v86[4] = v19;
  v22 = *(a1 + 288);
  v86[5] = v20;
  v86[6] = v18;
  v23 = *(v5 + 128);
  v24 = *(v5 + 144);
  v85[10] = v22;
  v86[0] = v23;
  v25 = *(a1 + 344);
  v86[1] = v24;
  v86[2] = v21;
  v26 = *(v5 + 344);
  v27 = *(v5 + 360);
  if (v27 && (v28 = *(v27 + 32)) != 0)
  {
    is_privacy_proxy = nw_proxy_config_is_privacy_proxy(v28, 0);
    if (a5)
    {
      if (is_privacy_proxy)
      {
        v30 = 4;
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  else if (a5)
  {
LABEL_7:
    v30 = 3;
    goto LABEL_11;
  }

  if (a4)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

LABEL_11:
  v31 = *(v5 + 256);
  v32 = *(v5 + 272);
  v33 = *(v5 + 224);
  v79 = *(v5 + 240);
  v80 = v31;
  v34 = *(v5 + 288);
  v81 = v32;
  v82 = v34;
  v35 = *(v5 + 192);
  v36 = *(v5 + 208);
  v37 = *(v5 + 160);
  v75 = *(v5 + 176);
  v76 = v35;
  v77 = v36;
  v78 = v33;
  v38 = *(v5 + 128);
  v73 = *(v5 + 144);
  v74 = v37;
  v39 = *(a1 + 272);
  v69 = *(a1 + 256);
  v70 = v39;
  v71 = *(a1 + 288);
  v72 = v38;
  v40 = *(a1 + 208);
  v65 = *(a1 + 192);
  v66 = v40;
  v41 = *(a1 + 240);
  v67 = *(a1 + 224);
  v68 = v41;
  v42 = *(a1 + 144);
  v61 = *(a1 + 128);
  v62 = v42;
  v43 = *(a1 + 176);
  v63 = *(a1 + 160);
  v64 = v43;
  LOBYTE(v60) = v30;
  sub_181A41E20(v86, v84);
  sub_181A41E20(v85, v84);
  v44 = sub_181B02888(&v61, &v60);
  v83[8] = v69;
  v83[9] = v70;
  v83[10] = v71;
  v83[4] = v65;
  v83[5] = v66;
  v83[6] = v67;
  v83[7] = v68;
  v83[0] = v61;
  v83[1] = v62;
  v83[2] = v63;
  v83[3] = v64;
  sub_181A41E7C(v83);
  v84[8] = v80;
  v84[9] = v81;
  v84[10] = v82;
  v84[4] = v76;
  v84[5] = v77;
  v84[6] = v78;
  v84[7] = v79;
  v84[0] = v72;
  v84[1] = v73;
  v84[2] = v74;
  v84[3] = v75;
  sub_181A41E7C(v84);
  if (v44)
  {
    if (a4)
    {
      v56 = a3;
      v57 = a2;
      ProtocolStack.transport.getter(&v72);
      v45 = v72;
      ProtocolStack.transport.getter(&v61);
      v46 = v61;
      v47 = *(&v61 + 1) & 0xF000000000000007;
      if ((~*(&v45 + 1) & 0xF000000000000007) != 0)
      {
        if (v47 == 0xF000000000000007)
        {
          sub_181A53008(v45, *(&v45 + 1));
          sub_181A53008(v46, *(&v46 + 1));
          return 0;
        }

        v60 = v45;
        v59 = v61;
        v58 = v30;
        sub_181AC8268(v45, *(&v45 + 1));
        sub_181AC8268(v46, *(&v46 + 1));
        v49 = sub_181B0227C(&v59, &v58);
        sub_181A53008(v45, *(&v45 + 1));
        sub_181A53008(v46, *(&v46 + 1));
        sub_181A53008(v46, *(&v46 + 1));
        sub_181A53008(v45, *(&v45 + 1));
        if ((v49 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        sub_181A53008(v45, *(&v45 + 1));
        sub_181A53008(v46, *(&v46 + 1));
        if (v47 != 0xF000000000000007)
        {
          return 0;
        }
      }

      swift_beginAccess();
      v51 = *(v26 + 48);
      v50 = *(v26 + 56);
      swift_beginAccess();
      v53 = v25[6];
      v52 = v25[7];
      v54 = v52 & 0xF000000000000007;
      if ((~v50 & 0xF000000000000007) == 0)
      {
        if (v54 == 0xF000000000000007)
        {
          sub_181A52FE0(v51, v50);
          sub_181A52FE0(v53, v52);
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v54 == 0xF000000000000007)
      {
LABEL_25:
        sub_181B687F0(v51, v50);
        sub_181B687F0(v53, v52);
        sub_181A52FE0(v51, v50);
        sub_181A52FE0(v53, v52);
        return 0;
      }

      *&v60 = v51;
      *(&v60 + 1) = v50;
      *&v59 = v53;
      *(&v59 + 1) = v52;
      v58 = v30;
      sub_181B687F0(v53, v52);
      sub_181B687F0(v51, v50);
      sub_181B687F0(v51, v50);
      sub_181B687F0(v53, v52);
      v55 = sub_181B03A70(&v59, &v58);
      sub_181A52FE0(v51, v50);
      sub_181A52FE0(v53, v52);
      sub_181A52FE0(v53, v52);
      sub_181A52FE0(v51, v50);
      if (v55)
      {
LABEL_27:
        LOBYTE(v60) = v30;
        return (sub_181D101A4(v57, v56 & 1, v25, a4, &v60) & 1) != 0;
      }
    }

    else
    {
      LOBYTE(v72) = v30;
      if (sub_181C59BE4(v25, &v72))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _nw_parameters_are_compatible(void *a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = a2 == -1;
  if (a2 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = a1;
  v11 = a3;
  v12 = sub_1821F46A8(v11, v9, v8, a4, a5);

  return v12;
}

void sub_181D73F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NWConcrete_nw_fd_wrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void nw_quic_save_token_on_queue(void *a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_quic_save_token_on_queue";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v23, &type, &v32))
    {
      goto LABEL_56;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v26 = "%{public}s called with null association";
LABEL_54:
        _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v29 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v35 = "nw_quic_save_token_on_queue";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null association, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_56;
        }

        if (!v29)
        {
          goto LABEL_55;
        }

        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v26 = "%{public}s called with null association, no backtrace";
        goto LABEL_54;
      }

      v24 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v24, type))
      {
        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v26 = "%{public}s called with null association, backtrace limit exceeded";
        goto LABEL_54;
      }
    }

LABEL_55:

LABEL_56:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_9;
  }

  if (nw_protocol_copy_quic_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_quic_connection_definition_onceToken, &__block_literal_global_30937);
  }

  v5 = nw_protocol_copy_quic_connection_definition_quic_definition;
  if (!v5)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_quic_save_token_on_queue";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v13, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null definition";
        goto LABEL_23;
      }

      if (v32 != 1)
      {
        v14 = __nwlog_obj();
        v15 = type;
        if (!os_log_type_enabled(v14, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null definition, backtrace limit exceeded";
        goto LABEL_23;
      }

      v30 = __nw_create_backtrace_string();
      v14 = __nwlog_obj();
      v15 = type;
      v31 = os_log_type_enabled(v14, type);
      if (!v30)
      {
        if (!v31)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null definition, no backtrace";
        goto LABEL_23;
      }

      if (v31)
      {
        *buf = 136446466;
        v35 = "nw_quic_save_token_on_queue";
        v36 = 2082;
        v37 = v30;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v30);
    }

LABEL_26:
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_27:
    free(v13);
    goto LABEL_8;
  }

  cached_content_for_protocol = nw_association_get_cached_content_for_protocol(v3, v5);
  if (cached_content_for_protocol || (cached_content_for_protocol = malloc_type_calloc(1uLL, 0x30uLL, 0x3C1EB61EuLL)) != 0)
  {
    v7 = cached_content_for_protocol;
    objc_storeStrong(cached_content_for_protocol, a2);
    int64_with_default = networkd_settings_get_int64_with_default(nw_setting_quic_failure_cache_seconds, 1800);
    v9 = time(0);
    nw_association_set_cached_content_for_protocol(v3, v5, v7, v9 + int64_with_default);
LABEL_8:

LABEL_9:
    return;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v35 = "nw_quic_save_token_on_queue";
  v36 = 2048;
  v37 = 1;
  v38 = 2048;
  v39 = 48;
  v11 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v11))
  {
    free(v11);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    v35 = "nw_quic_save_token_on_queue";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v13, &type, &v32))
    {
      goto LABEL_26;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null association_cache";
LABEL_23:
        v20 = v14;
        v21 = v15;
LABEL_24:
        _os_log_impl(&dword_181A37000, v20, v21, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v14 = gLogObj;
        v18 = type;
        v19 = os_log_type_enabled(v14, type);
        if (v17)
        {
          if (v19)
          {
            *buf = 136446466;
            v35 = "nw_quic_save_token_on_queue";
            v36 = 2082;
            v37 = v17;
            _os_log_impl(&dword_181A37000, v14, v18, "%{public}s called with null association_cache, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v17);
          if (!v13)
          {
            goto LABEL_8;
          }

          goto LABEL_27;
        }

        if (!v19)
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null association_cache, no backtrace";
        v20 = v14;
        v21 = v18;
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v35 = "nw_quic_save_token_on_queue";
        v16 = "%{public}s called with null association_cache, backtrace limit exceeded";
        goto LABEL_23;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  __break(1u);
}

void nw_fd_wrapper_close(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    os_unfair_lock_lock(v1 + 3);
    os_unfair_lock_opaque = v2[2]._os_unfair_lock_opaque;
    if ((v2[6]._os_unfair_lock_opaque & 1) == 0)
    {
      if (os_unfair_lock_opaque < 0)
      {
LABEL_20:
        os_unfair_lock_unlock(v2 + 3);
        goto LABEL_21;
      }

      close(os_unfair_lock_opaque);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v31 = "nw_fd_wrapper_close";
        v32 = 2114;
        *v33 = v2;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s closed %{public}@", buf, 0x16u);
      }

LABEL_19:
      v2[2]._os_unfair_lock_opaque = -1;
      goto LABEL_20;
    }

    if (!guarded_close_np())
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v31 = "nw_fd_wrapper_close";
        v32 = 2114;
        *v33 = v2;
        _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s closed %{public}@", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = v2[2]._os_unfair_lock_opaque;
    *buf = 136446722;
    v31 = "nw_fd_wrapper_close";
    v32 = 1024;
    *v33 = v7;
    *&v33[4] = 1024;
    *&v33[6] = v5;
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v8, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          v11 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v31 = "nw_fd_wrapper_close";
          v32 = 1024;
          *v33 = v11;
          *&v33[4] = 1024;
          *&v33[6] = v5;
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s Failed to close guarded fd %d %{darwin.errno}d", buf, 0x18u);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v14 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            v16 = v2[2]._os_unfair_lock_opaque;
            *buf = 136446978;
            v31 = "nw_fd_wrapper_close";
            v32 = 1024;
            *v33 = v16;
            *&v33[4] = 1024;
            *&v33[6] = v5;
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v14, "%{public}s Failed to close guarded fd %d %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
          }

          free(backtrace_string);
          if (!v8)
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        if (v15)
        {
          v19 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v31 = "nw_fd_wrapper_close";
          v32 = 1024;
          *v33 = v19;
          *&v33[4] = 1024;
          *&v33[6] = v5;
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s Failed to close guarded fd %d %{darwin.errno}d, no backtrace", buf, 0x18u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          v18 = v2[2]._os_unfair_lock_opaque;
          *buf = 136446722;
          v31 = "nw_fd_wrapper_close";
          v32 = 1024;
          *v33 = v18;
          *&v33[4] = 1024;
          *&v33[6] = v5;
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s Failed to close guarded fd %d %{darwin.errno}d, backtrace limit exceeded", buf, 0x18u);
        }
      }
    }

    if (!v8)
    {
LABEL_18:
      LOBYTE(v2[6]._os_unfair_lock_opaque) &= ~1u;
      goto LABEL_19;
    }

LABEL_14:
    free(v8);
    goto LABEL_18;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v31 = "nw_fd_wrapper_close";
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
        v31 = "nw_fd_wrapper_close";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null wrapper", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v24 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v22, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446466;
          v31 = "nw_fd_wrapper_close";
          v32 = 2082;
          *v33 = v24;
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null wrapper, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v24);
        goto LABEL_50;
      }

      if (v26)
      {
        *buf = 136446210;
        v31 = "nw_fd_wrapper_close";
        _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null wrapper, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v31 = "nw_fd_wrapper_close";
        _os_log_impl(&dword_181A37000, v22, v27, "%{public}s called with null wrapper, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_50:
  if (v21)
  {
    free(v21);
  }

LABEL_21:
}

void nw_quic_stream_set_id(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_id(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_id";
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
        v14 = "nw_quic_stream_set_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_id";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_id";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

LABEL_3:
}

uint64_t _nw_quic_stream_set_stream_idTm(uint64_t a1, uint64_t a2)
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
      *(v6 + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_181D7524C()
{
  sub_181F48350(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t ProtocolOptions.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_181F49A24(v3, v4, v5);
}

uint64_t _nw_quic_stream_set_type_0(uint64_t a1, char a2)
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
      if ((a2 - 1) <= 2u)
      {
        *(v6 + 66) = a2 - 1;
      }
    }
  }

  return result;
}

BOOL nw_protocol_http3_accept(uint64_t a1, uint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_protocol_http3_accept";
    v26 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v26, &type, &v36))
    {
      goto LABEL_65;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v36 != 1)
      {
        v27 = __nwlog_obj();
        v28 = type;
        if (!os_log_type_enabled(v27, type))
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v39 = "nw_protocol_http3_accept";
        v29 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_64;
      }

      backtrace_string = __nw_create_backtrace_string();
      v27 = __nwlog_obj();
      v28 = type;
      v31 = os_log_type_enabled(v27, type);
      if (!backtrace_string)
      {
        if (!v31)
        {
          goto LABEL_65;
        }

        *buf = 136446210;
        v39 = "nw_protocol_http3_accept";
        v29 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_64;
      }

      if (v31)
      {
        *buf = 136446466;
        v39 = "nw_protocol_http3_accept";
        v40 = 2082;
        v41 = backtrace_string;
        v32 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_52:
        _os_log_impl(&dword_181A37000, v27, v28, v32, buf, 0x16u);
      }

LABEL_53:
      free(backtrace_string);
      goto LABEL_65;
    }

    v27 = __nwlog_obj();
    v28 = type;
    if (!os_log_type_enabled(v27, type))
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v39 = "nw_protocol_http3_accept";
    v29 = "%{public}s called with null protocol";
LABEL_64:
    _os_log_impl(&dword_181A37000, v27, v28, v29, buf, 0xCu);
LABEL_65:
    if (v26)
    {
      free(v26);
    }

    return 0;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v39 = "nw_protocol_http3_accept";
    v26 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (!__nwlog_fault(v26, &type, &v36))
    {
      goto LABEL_65;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v39 = "nw_protocol_http3_accept";
      v29 = "%{public}s called with null http3";
      goto LABEL_64;
    }

    if (v36 != 1)
    {
      v27 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v27, type))
      {
        goto LABEL_65;
      }

      *buf = 136446210;
      v39 = "nw_protocol_http3_accept";
      v29 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_64;
    }

    backtrace_string = __nw_create_backtrace_string();
    v27 = __nwlog_obj();
    v28 = type;
    v33 = os_log_type_enabled(v27, type);
    if (backtrace_string)
    {
      if (v33)
      {
        *buf = 136446466;
        v39 = "nw_protocol_http3_accept";
        v40 = 2082;
        v41 = backtrace_string;
        v32 = "%{public}s called with null http3, dumping backtrace:%{public}s";
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    if (!v33)
    {
      goto LABEL_65;
    }

    *buf = 136446210;
    v39 = "nw_protocol_http3_accept";
    v29 = "%{public}s called with null http3, no backtrace";
    goto LABEL_64;
  }

  if ((*(v3 + 1397) & 0x10) == 0)
  {
    v5 = *(v3 + 1000);
    if (v5)
    {
      v6 = mach_continuous_approximate_time();
      v7 = v6 <= 1 ? 1 : v6;
      v8 = nw_delta_nanos(v5, v7);
      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_proxy_setup_threshold_seconds, 5);
      if (v8 > 1000000000 * int64_with_default)
      {
        if ((*(v3 + 1399) & 0x20) == 0)
        {
          v10 = int64_with_default;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v11 = gLogObj;
          result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
          if (!result)
          {
            return result;
          }

          v13 = *(v3 + 1304);
          *buf = 136447234;
          v39 = "nw_protocol_http3_accept";
          v40 = 2082;
          v41 = (v3 + 1313);
          v42 = 2080;
          v43 = " ";
          v44 = 1024;
          v45 = v13;
          v46 = 2048;
          v47 = v10;
          v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http3 connection not ready within %lld seconds";
          v15 = v11;
          v16 = 48;
          goto LABEL_33;
        }

        return 0;
      }
    }
  }

  if (*(v3 + 1308) && networkd_settings_get_int64_with_default(nw_setting_proxy_maximum_stall_count, 5) < *(v3 + 1308))
  {
    if ((*(v3 + 1399) & 0x20) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v18 = *(v3 + 1304);
      v19 = *(v3 + 1308);
      *buf = 136447234;
      v39 = "nw_protocol_http3_accept";
      v40 = 2082;
      v41 = (v3 + 1313);
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = v18;
      v46 = 1024;
      LODWORD(v47) = v19;
      v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http3 connection has hit %u stalls";
      v15 = v17;
      v16 = 44;
      goto LABEL_33;
    }

    return 0;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v20 = nw_parameters_copy_protocol_options_for_definition(a3, nw_protocol_copy_http_messaging_definition_definition);
  if (v20)
  {
    v21 = v20;
    is_websocket = nw_http_messaging_options_is_websocket(v20);
    os_release(v21);
    if (is_websocket)
    {
      return 0;
    }
  }

  if ((*(v3 + 1397) & 8) != 0)
  {
    if ((*(v3 + 1399) & 0x20) != 0)
    {
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v24 = *(v3 + 1304);
    *buf = 136446978;
    v39 = "nw_protocol_http3_accept";
    v40 = 2082;
    v41 = (v3 + 1313);
    v42 = 2080;
    v43 = " ";
    v44 = 1024;
    v45 = v24;
    v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http3 connection is closed";
LABEL_32:
    v15 = v23;
    v16 = 38;
LABEL_33:
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
    return 0;
  }

  if ((*(v3 + 1399) & 4) != 0)
  {
    if ((*(v3 + 1399) & 0x20) != 0)
    {
      return 0;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v25 = *(v3 + 1304);
    *buf = 136446978;
    v39 = "nw_protocol_http3_accept";
    v40 = 2082;
    v41 = (v3 + 1313);
    v42 = 2080;
    v43 = " ";
    v44 = 1024;
    v45 = v25;
    v14 = "%{public}s %{public}s%s<i%u> denying join attempt because http3 has a better alternate path";
    goto LABEL_32;
  }

  if ((*(v3 + 1399) & 0x20) == 0 && gLogDatapath == 1)
  {
    v34 = __nwlog_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = *(v3 + 1304);
      *buf = 136446978;
      v39 = "nw_protocol_http3_accept";
      v40 = 2082;
      v41 = (v3 + 1313);
      v42 = 2080;
      v43 = " ";
      v44 = 1024;
      v45 = v35;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> allowing join attempt", buf, 0x26u);
    }
  }

  return 1;
}

uint64_t _nw_protocol_stack_iterate_application_protocols_with_index(int a1, char a2, int a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v9[2] = v6;

  sub_181D75EDC(v7, a2, sub_181D785C0, v9, a3);
  _Block_release(v6);
}

void nw_quic_stream_set_type(void *a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (nw_protocol_metadata_is_quic_stream(v3))
  {
    _nw_quic_stream_set_type(v3, a2);
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_quic_stream_set_type";
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
        v14 = "nw_quic_stream_set_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata)";
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
            v14 = "nw_quic_stream_set_type";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v10)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v14 = "nw_quic_stream_set_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), no backtrace";
        goto LABEL_17;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_quic_stream_set_type";
        v8 = "%{public}s called with null nw_protocol_metadata_is_quic_stream(metadata), backtrace limit exceeded";
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

LABEL_3:
}

uint64_t sub_181D75EDC(uint64_t result, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = a3;
  v33 = a4;
  if ((a2 & 1) == 0)
  {
    goto LABEL_18;
  }

  v31 = a5;
  v38 = 0;
  v30 = result;
  result = sub_181AC9084();
  v5 = result;
  v6 = *(result + 32);
  v7 = *(result + 24) + v6;
  if (*(result + 16) < v7)
  {
    v7 = *(result + 16);
  }

  v35 = result;
  v36 = v6;
  v37 = v7;
  while (1)
  {
    if (v6 != v7)
    {
      goto LABEL_9;
    }

    result = sub_181AC81FC(result);
    if ((result & 1) == 0)
    {

      LOBYTE(a5) = v31;
LABEL_18:
      if ((a5 & 1) == 0)
      {
        return result;
      }

      v15 = *(sub_181AC9084() + 24);

      v38 = v15;
      result = sub_181A54748();
      v16 = result;
      v17 = *(result + 32);
      v18 = *(result + 24) + v17;
      if (*(result + 16) < v18)
      {
        v18 = *(result + 16);
      }

      v35 = result;
      v36 = v17;
      v37 = v18;
      while (1)
      {
        if (v17 == v18)
        {
          result = sub_181AC81FC(result);
          if ((result & 1) == 0)
          {
          }

          v16 = v35;
          v17 = v36;
        }

        v19 = v17 + 1;
        v36 = v17 + 1;
        v20 = v16 + 16 * v17;
        v21 = *(v20 + 40);
        v22 = *(v20 + 48);
        if (v22 >> 62)
        {
          if (v22 >> 62 != 1)
          {
            goto LABEL_22;
          }

          v23 = v22 & 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
        }

        ObjectType = swift_getObjectType();
        MEMORY[0x1EEE9AC00](ObjectType);
        v27 = v32;
        v28 = v33;
        v29 = &v38;
        v25 = *(v23 + 344);
        sub_181B2C3E0(v21, v22);
        v25(&v34, sub_181D78740, v26, MEMORY[0x1E69E6370], ObjectType, v23);
        result = sub_181AAD084(v21, v22);
        if ((v34 & 1) == 0)
        {
        }

        if (__OFADD__(v38, 1))
        {
          goto LABEL_36;
        }

        ++v38;
LABEL_22:
        v18 = v37;
        v17 = v19;
      }
    }

    v5 = v35;
    v6 = v36;
LABEL_9:
    v8 = v6 + 1;
    v36 = v6 + 1;
    v9 = v5 + 16 * v6;
    v10 = *(v9 + 40);
    v11 = *(v9 + 48);
    if (v11 >> 62)
    {
      if (v11 >> 62 != 1)
      {
        goto LABEL_5;
      }

      v12 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
    }

    v13 = swift_getObjectType();
    MEMORY[0x1EEE9AC00](v13);
    v27 = v32;
    v28 = v33;
    v29 = &v38;
    v14 = *(v12 + 344);
    sub_181B2C3E0(v10, v11);
    v14(&v34, sub_181D78740, v26, MEMORY[0x1E69E6370], v13, v12);
    result = sub_181AAD084(v10, v11);
    if ((v34 & 1) == 0)
    {
    }

    if (__OFADD__(v38, 1))
    {
      break;
    }

    ++v38;
LABEL_5:
    v7 = v37;
    v6 = v8;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t nw_flow_listener_new_flow(uint64_t a1, void *a2, void *a3)
{
  v271 = *MEMORY[0x1E69E9840];
  v248 = a2;
  v249 = a3;
  v6 = *(*(a1 + 24) + 160);
  if (v6)
  {
    v247 = v6;
    v7 = v6;
    mode = v7->mode;

    if (mode != 2)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v22 = "unknown-mode";
        }

        else
        {
          v22 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v254 = "nw_flow_listener_new_flow";
        v255 = 2082;
        id_str = v22;
        v257 = 2082;
        v258 = "flow";
        _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }

      v33 = 0;
      goto LABEL_145;
    }

    v244 = v7;
    v9 = nw_endpoint_handler_copy_flow(v7);
    v245 = v9;
    if (*(v9 + 96))
    {
      v10 = malloc_type_calloc(1uLL, 0x150uLL, 0x865533ABuLL);
      v246 = v10;
      if (!v10)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        v254 = "nw_flow_listener_new_flow";
        v255 = 2048;
        id_str = 1;
        v257 = 2048;
        v258 = 336;
        v12 = _os_log_send_and_compose_impl();

        if (__nwlog_should_abort(v12))
        {
          __break(1u);
          goto LABEL_263;
        }

        free(v12);
        v9 = v245;
        v10 = 0;
      }

      nw_endpoint_flow_initialize_protocol(v7, v10, 1);
      v13 = *(v9 + 97);
      if (v13)
      {
        if (v10)
        {
          if (v13 != v10)
          {
            v14 = *(v13 + 3);
            if (v14 && *v14)
            {
              v15 = nw_protocol_add_input_handler(*(v9 + 97), v10);
              v16 = v7;
              if (v15)
              {
                v17 = *(*(v13 + 3) + 224);
                if (v17)
                {
                  v18 = v17(v13, 255, v246);
                  v19 = v18;
                  if (v18)
                  {
                    object = _nw_array_copy_last_object(v18);
                  }

                  else
                  {
                    object = 0;
                  }

                  v52 = *(v246 + 30);
                  *(v246 + 30) = object;

                  v16 = v7;
                }

                v53 = v245;
                v54 = v246;
                if (*(v246 + 30))
                {
                  type = OS_LOG_TYPE_DEFAULT;
                  if (nw_hash_table_add_object(v245[108], v246, &type) && (type & 1) != 0)
                  {
                    minimize_logging = nw_endpoint_handler_get_minimize_logging(v16);
                    logging_disabled = nw_endpoint_handler_get_logging_disabled(v16);
                    if (!minimize_logging)
                    {
                      if (logging_disabled)
                      {
LABEL_73:
                        (*(*(v13 + 3) + 24))(v13, v54);
                        *(v54 + 332) |= 0x400u;
                        v33 = 1;
LABEL_144:

LABEL_145:
                        v133 = v247;
                        goto LABEL_146;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v57 = gconnectionLogObj;
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v244);
                        v59 = nw_endpoint_handler_dry_run_string(v244);
                        v60 = nw_endpoint_handler_copy_endpoint(v244);
                        v61 = v13;
                        logging_description = nw_endpoint_get_logging_description(v60);
                        v63 = nw_endpoint_handler_state_string(v244);
                        v64 = nw_endpoint_handler_mode_string(v244);
                        v65 = nw_endpoint_handler_copy_current_path(v244);
                        v66 = *(v61 + 2);
                        *buf = 136448258;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = id_string;
                        v257 = 2082;
                        v258 = v59;
                        v259 = 2082;
                        v260 = logging_description;
                        v261 = 2082;
                        v262 = v63;
                        v13 = v61;
                        v263 = 2082;
                        v264 = v64;
                        v265 = 2114;
                        v266 = v65;
                        v267 = 2048;
                        v268 = v246;
                        v269 = 2080;
                        v270 = v66;
                        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added inbound per-message protocol %p to %s", buf, 0x5Cu);
                      }

LABEL_72:

                      v53 = v245;
                      v54 = v246;
                      goto LABEL_73;
                    }

                    if (logging_disabled)
                    {
                      goto LABEL_73;
                    }

                    v3 = v13;
                    if (__nwlog_connection_log::onceToken[0] == -1)
                    {
LABEL_259:
                      v57 = gconnectionLogObj;
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                      {
                        v221 = nw_endpoint_handler_get_id_string(v244);
                        v222 = nw_endpoint_handler_dry_run_string(v244);
                        v223 = nw_endpoint_handler_copy_endpoint(v244);
                        v224 = nw_endpoint_get_logging_description(v223);
                        v225 = nw_endpoint_handler_state_string(v244);
                        v226 = nw_endpoint_handler_mode_string(v244);
                        v227 = nw_endpoint_handler_copy_current_path(v244);
                        v228 = *(v3 + 2);
                        *buf = 136448258;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = v221;
                        v257 = 2082;
                        v258 = v222;
                        v259 = 2082;
                        v260 = v224;
                        v261 = 2082;
                        v262 = v225;
                        v13 = v3;
                        v263 = 2082;
                        v264 = v226;
                        v265 = 2114;
                        v266 = v227;
                        v267 = 2048;
                        v268 = v246;
                        v269 = 2080;
                        v270 = v228;
                        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added inbound per-message protocol %p to %s", buf, 0x5Cu);
                      }

                      else
                      {
                        v13 = v3;
                      }

                      goto LABEL_72;
                    }

LABEL_263:
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    goto LABEL_259;
                  }

                  v67 = v16;
                  v68 = (*(v67 + 284) & 0x40) == 0;

                  v69 = v246;
                  if (!v68)
                  {
                    goto LABEL_196;
                  }

                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v70 = gconnectionLogObj;
                  v71 = v67;

                  v72 = v71;
                  v73 = (*(v67 + 284) & 1) == 0;

                  if (v73)
                  {
                    v74 = "";
                  }

                  else
                  {
                    v74 = "dry-run ";
                  }

                  v75 = nw_endpoint_handler_copy_endpoint(v72);
                  v76 = v75;
                  if (v75)
                  {
                    v77 = _nw_endpoint_get_logging_description(v75);
                  }

                  else
                  {
                    v77 = "<NULL>";
                  }

                  v135 = v72;
                  v136 = v135;
                  v137 = v135[30];
                  if (v137 > 5)
                  {
                    v138 = "unknown-state";
                  }

                  else
                  {
                    v138 = off_1E6A31048[v137];
                  }

                  v139 = v136;
                  v140 = v139;
                  v141 = v244->mode;
                  if (v141 > 2)
                  {
                    if (v141 == 3)
                    {
                      v142 = "proxy";
                      goto LABEL_170;
                    }

                    if (v141 != 4)
                    {
                      if (v141 == 5)
                      {
                        v142 = "transform";
                        goto LABEL_170;
                      }

                      goto LABEL_167;
                    }

                    v142 = "fallback";
                  }

                  else
                  {
                    if (!v141)
                    {
                      v142 = "path";
                      goto LABEL_170;
                    }

                    if (v141 != 1)
                    {
                      if (v141 == 2)
                      {
                        v142 = nw_endpoint_flow_mode_string(v139[33]);
                        goto LABEL_170;
                      }

LABEL_167:
                      v142 = "unknown-mode";
                      goto LABEL_170;
                    }

                    v142 = "resolver";
                  }

LABEL_170:

                  v152 = v140;
                  os_unfair_lock_lock(v152 + 28);
                  v153 = v152[8];
                  os_unfair_lock_unlock(v152 + 28);

                  *buf = 136447746;
                  v254 = "nw_flow_listener_new_flow";
                  v255 = 2082;
                  id_str = v71->id_str;
                  v257 = 2082;
                  v258 = v74;
                  v259 = 2082;
                  v260 = v77;
                  v261 = 2082;
                  v262 = v138;
                  v263 = 2082;
                  v264 = v142;
                  v265 = 2114;
                  v266 = v153;
                  v154 = _os_log_send_and_compose_impl();

                  v251 = OS_LOG_TYPE_ERROR;
                  v250 = 0;
                  if (__nwlog_fault(v154, &v251, &v250))
                  {
                    if (v251 == OS_LOG_TYPE_FAULT)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v155 = gconnectionLogObj;
                      v156 = v251;
                      if (os_log_type_enabled(v155, v251))
                      {
                        v229 = v154;
                        v157 = nw_endpoint_handler_get_id_string(v152);
                        v158 = nw_endpoint_handler_dry_run_string(v152);
                        logd = v155;
                        v159 = nw_endpoint_handler_copy_endpoint(v152);
                        v160 = nw_endpoint_get_logging_description(v159);
                        v161 = nw_endpoint_handler_state_string(v152);
                        v162 = nw_endpoint_handler_mode_string(v152);
                        v163 = nw_endpoint_handler_copy_current_path(v152);
                        *buf = 136447746;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = v157;
                        v257 = 2082;
                        v258 = v158;
                        v259 = 2082;
                        v260 = v160;
                        v261 = 2082;
                        v262 = v161;
                        v263 = 2082;
                        v264 = v162;
                        v265 = 2114;
                        v266 = v163;
                        _os_log_impl(&dword_181A37000, logd, v156, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add inbound flow protocol to hash table", buf, 0x48u);

                        v154 = v229;
                        v155 = logd;
                      }
                    }

                    else if (v250 == 1)
                    {
                      backtrace_string = __nw_create_backtrace_string();
                      if (backtrace_string)
                      {
                        v165 = backtrace_string;
                        if (__nwlog_connection_log::onceToken[0] != -1)
                        {
                          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                        }

                        v166 = gconnectionLogObj;
                        v167 = v251;
                        if (os_log_type_enabled(v166, v251))
                        {
                          v230 = v154;
                          loge = v166;
                          v168 = nw_endpoint_handler_get_id_string(v152);
                          v169 = nw_endpoint_handler_dry_run_string(v152);
                          v170 = v168;
                          v234 = nw_endpoint_handler_copy_endpoint(v152);
                          v171 = nw_endpoint_get_logging_description(v234);
                          v172 = nw_endpoint_handler_state_string(v152);
                          v173 = nw_endpoint_handler_mode_string(v152);
                          v174 = nw_endpoint_handler_copy_current_path(v152);
                          *buf = 136448002;
                          v254 = "nw_flow_listener_new_flow";
                          v255 = 2082;
                          id_str = v170;
                          v257 = 2082;
                          v258 = v169;
                          v259 = 2082;
                          v260 = v171;
                          v261 = 2082;
                          v262 = v172;
                          v263 = 2082;
                          v264 = v173;
                          v265 = 2114;
                          v266 = v174;
                          v267 = 2082;
                          v268 = v165;
                          _os_log_impl(&dword_181A37000, loge, v167, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add inbound flow protocol to hash table, dumping backtrace:%{public}s", buf, 0x52u);

                          v154 = v230;
                          v166 = loge;
                        }

                        free(v165);
                        goto LABEL_194;
                      }

                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v155 = gconnectionLogObj;
                      v183 = v251;
                      if (os_log_type_enabled(v155, v251))
                      {
                        v232 = v154;
                        v184 = nw_endpoint_handler_get_id_string(v152);
                        v185 = nw_endpoint_handler_dry_run_string(v152);
                        logg = v155;
                        v186 = nw_endpoint_handler_copy_endpoint(v152);
                        v187 = nw_endpoint_get_logging_description(v186);
                        v188 = nw_endpoint_handler_state_string(v152);
                        v189 = nw_endpoint_handler_mode_string(v152);
                        v190 = nw_endpoint_handler_copy_current_path(v152);
                        *buf = 136447746;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = v184;
                        v257 = 2082;
                        v258 = v185;
                        v259 = 2082;
                        v260 = v187;
                        v261 = 2082;
                        v262 = v188;
                        v263 = 2082;
                        v264 = v189;
                        v265 = 2114;
                        v266 = v190;
                        _os_log_impl(&dword_181A37000, logg, v183, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add inbound flow protocol to hash table, no backtrace", buf, 0x48u);

                        v154 = v232;
                        v155 = logg;
                      }
                    }

                    else
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v155 = gconnectionLogObj;
                      v175 = v251;
                      if (os_log_type_enabled(v155, v251))
                      {
                        v231 = v154;
                        v176 = nw_endpoint_handler_get_id_string(v152);
                        v177 = nw_endpoint_handler_dry_run_string(v152);
                        logf = v155;
                        v178 = nw_endpoint_handler_copy_endpoint(v152);
                        v179 = nw_endpoint_get_logging_description(v178);
                        v180 = nw_endpoint_handler_state_string(v152);
                        v181 = nw_endpoint_handler_mode_string(v152);
                        v182 = nw_endpoint_handler_copy_current_path(v152);
                        *buf = 136447746;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = v176;
                        v257 = 2082;
                        v258 = v177;
                        v259 = 2082;
                        v260 = v179;
                        v261 = 2082;
                        v262 = v180;
                        v263 = 2082;
                        v264 = v181;
                        v265 = 2114;
                        v266 = v182;
                        _os_log_impl(&dword_181A37000, logf, v175, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add inbound flow protocol to hash table, backtrace limit exceeded", buf, 0x48u);

                        v154 = v231;
                        v155 = logf;
                      }
                    }
                  }

LABEL_194:
                  v69 = v246;
                  if (v154)
                  {
                    free(v154);
                  }

LABEL_196:
                  nw_endpoint_flow_cleanup_protocol(v67, v69, 1);
                  v191 = *(v69 + 184);
                  *(v69 + 184) = 0;

                  goto LABEL_142;
                }

                if (nw_endpoint_handler_get_logging_disabled(v16))
                {
LABEL_205:
                  nw_endpoint_flow_cleanup_protocol(v16, v54, 1);
                  v201 = *(v54 + 184);
                  *(v54 + 184) = 0;

                  goto LABEL_142;
                }

                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v78 = gconnectionLogObj;
                v79 = nw_endpoint_handler_get_id_string(v16);
                v80 = nw_endpoint_handler_dry_run_string(v16);
                v81 = nw_endpoint_handler_copy_endpoint(v16);
                v82 = nw_endpoint_get_logging_description(v81);
                v83 = nw_endpoint_handler_state_string(v16);
                v84 = nw_endpoint_handler_mode_string(v16);
                v85 = nw_endpoint_handler_copy_current_path(v16);
                *buf = 136447746;
                v254 = "nw_flow_listener_new_flow";
                v255 = 2082;
                id_str = v79;
                v257 = 2082;
                v258 = v80;
                v259 = 2082;
                v260 = v82;
                v261 = 2082;
                v262 = v83;
                v263 = 2082;
                v264 = v84;
                v265 = 2114;
                v266 = v85;
                v86 = _os_log_send_and_compose_impl();

                type = OS_LOG_TYPE_ERROR;
                v251 = OS_LOG_TYPE_DEFAULT;
                if (__nwlog_fault(v86, &type, &v251))
                {
                  if (type == OS_LOG_TYPE_FAULT)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v87 = gconnectionLogObj;
                    v88 = type;
                    if (os_log_type_enabled(v87, type))
                    {
                      v89 = nw_endpoint_handler_get_id_string(v7);
                      v90 = nw_endpoint_handler_dry_run_string(v7);
                      loga = v87;
                      v91 = nw_endpoint_handler_copy_endpoint(v7);
                      v92 = v86;
                      v93 = nw_endpoint_get_logging_description(v91);
                      v94 = nw_endpoint_handler_state_string(v7);
                      v95 = nw_endpoint_handler_mode_string(v7);
                      v96 = nw_endpoint_handler_copy_current_path(v7);
                      *buf = 136447746;
                      v254 = "nw_flow_listener_new_flow";
                      v255 = 2082;
                      id_str = v89;
                      v257 = 2082;
                      v258 = v90;
                      v259 = 2082;
                      v260 = v93;
                      v261 = 2082;
                      v262 = v94;
                      v263 = 2082;
                      v264 = v95;
                      v265 = 2114;
                      v266 = v96;
                      _os_log_impl(&dword_181A37000, loga, v88, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find inbound flow metadata", buf, 0x48u);

                      v86 = v92;
                      v87 = loga;
                    }
                  }

                  else if (v251 == OS_LOG_TYPE_INFO)
                  {
                    v99 = __nw_create_backtrace_string();
                    if (v99)
                    {
                      v100 = v99;
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      v101 = gconnectionLogObj;
                      v102 = type;
                      if (os_log_type_enabled(v101, type))
                      {
                        v103 = nw_endpoint_handler_get_id_string(v7);
                        v104 = nw_endpoint_handler_dry_run_string(v7);
                        logb = v101;
                        v105 = nw_endpoint_handler_copy_endpoint(v7);
                        v233 = v86;
                        v106 = nw_endpoint_get_logging_description(v105);
                        v107 = nw_endpoint_handler_state_string(v7);
                        v108 = nw_endpoint_handler_mode_string(v7);
                        v109 = nw_endpoint_handler_copy_current_path(v7);
                        *buf = 136448002;
                        v254 = "nw_flow_listener_new_flow";
                        v255 = 2082;
                        id_str = v103;
                        v257 = 2082;
                        v258 = v104;
                        v259 = 2082;
                        v260 = v106;
                        v261 = 2082;
                        v262 = v107;
                        v263 = 2082;
                        v264 = v108;
                        v265 = 2114;
                        v266 = v109;
                        v267 = 2082;
                        v268 = v100;
                        _os_log_impl(&dword_181A37000, logb, v102, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find inbound flow metadata, dumping backtrace:%{public}s", buf, 0x52u);

                        v86 = v233;
                        v101 = logb;
                      }

                      free(v100);
                      goto LABEL_202;
                    }

                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v87 = gconnectionLogObj;
                    v192 = type;
                    if (os_log_type_enabled(v87, type))
                    {
                      v193 = nw_endpoint_handler_get_id_string(v7);
                      v194 = nw_endpoint_handler_dry_run_string(v7);
                      logh = v87;
                      v195 = nw_endpoint_handler_copy_endpoint(v7);
                      v196 = v86;
                      v197 = nw_endpoint_get_logging_description(v195);
                      v198 = nw_endpoint_handler_state_string(v7);
                      v199 = nw_endpoint_handler_mode_string(v7);
                      v200 = nw_endpoint_handler_copy_current_path(v7);
                      *buf = 136447746;
                      v254 = "nw_flow_listener_new_flow";
                      v255 = 2082;
                      id_str = v193;
                      v257 = 2082;
                      v258 = v194;
                      v259 = 2082;
                      v260 = v197;
                      v261 = 2082;
                      v262 = v198;
                      v263 = 2082;
                      v264 = v199;
                      v265 = 2114;
                      v266 = v200;
                      _os_log_impl(&dword_181A37000, logh, v192, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find inbound flow metadata, no backtrace", buf, 0x48u);

                      v86 = v196;
                      v87 = logh;
                    }
                  }

                  else
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v87 = gconnectionLogObj;
                    v143 = type;
                    if (os_log_type_enabled(v87, type))
                    {
                      v144 = nw_endpoint_handler_get_id_string(v7);
                      v145 = nw_endpoint_handler_dry_run_string(v7);
                      logc = v87;
                      v146 = nw_endpoint_handler_copy_endpoint(v7);
                      v147 = v86;
                      v148 = nw_endpoint_get_logging_description(v146);
                      v149 = nw_endpoint_handler_state_string(v7);
                      v150 = nw_endpoint_handler_mode_string(v7);
                      v151 = nw_endpoint_handler_copy_current_path(v7);
                      *buf = 136447746;
                      v254 = "nw_flow_listener_new_flow";
                      v255 = 2082;
                      id_str = v144;
                      v257 = 2082;
                      v258 = v145;
                      v259 = 2082;
                      v260 = v148;
                      v261 = 2082;
                      v262 = v149;
                      v263 = 2082;
                      v264 = v150;
                      v265 = 2114;
                      v266 = v151;
                      _os_log_impl(&dword_181A37000, logc, v143, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to find inbound flow metadata, backtrace limit exceeded", buf, 0x48u);

                      v86 = v147;
                      v87 = logc;
                    }
                  }
                }

LABEL_202:
                if (v86)
                {
                  free(v86);
                }

                v54 = v246;
                v16 = v7;
                goto LABEL_205;
              }

LABEL_112:
              v110 = v16;
              v111 = (*(v110 + 284) & 0x40) == 0;

              if (!v111)
              {
LABEL_141:
                nw_endpoint_flow_cleanup_protocol(v110, v246, 1);
                v132 = *(v246 + 23);
                *(v246 + 23) = 0;

LABEL_142:
                free(v246);
                goto LABEL_143;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v112 = gconnectionLogObj;
              if (!os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
              {
LABEL_140:

                goto LABEL_141;
              }

              v113 = v110;

              v114 = v113;
              v115 = (*(v110 + 284) & 1) == 0;

              if (v115)
              {
                v116 = "";
              }

              else
              {
                v116 = "dry-run ";
              }

              v117 = nw_endpoint_handler_copy_endpoint(v114);
              v118 = v117;
              if (v117)
              {
                log = _nw_endpoint_get_logging_description(v117);
              }

              else
              {
                log = "<NULL>";
              }

              v119 = v114;
              v120 = v119;
              v121 = v119[30];
              if (v121 > 5)
              {
                v122 = "unknown-state";
              }

              else
              {
                v122 = off_1E6A31048[v121];
              }

              v123 = v120;
              v124 = v123;
              v125 = v7->mode;
              if (v125 > 2)
              {
                switch(v125)
                {
                  case 3:
                    v126 = "proxy";
                    goto LABEL_139;
                  case 4:
                    v126 = "fallback";
                    goto LABEL_139;
                  case 5:
                    v126 = "transform";
                    goto LABEL_139;
                }
              }

              else
              {
                switch(v125)
                {
                  case 0:
                    v126 = "path";
                    goto LABEL_139;
                  case 1:
                    v126 = "resolver";
                    goto LABEL_139;
                  case 2:
                    v126 = nw_endpoint_flow_mode_string(v123[33]);
LABEL_139:

                    v127 = v13;
                    v128 = v124;
                    os_unfair_lock_lock(v128 + 28);
                    v129 = v128[8];
                    os_unfair_lock_unlock(v128 + 28);

                    v130 = *(v246 + 2);
                    v131 = *(v127 + 2);
                    *buf = 136448258;
                    v254 = "nw_flow_listener_new_flow";
                    v255 = 2082;
                    id_str = v113->id_str;
                    v257 = 2082;
                    v258 = v116;
                    v259 = 2082;
                    v260 = log;
                    v261 = 2082;
                    v262 = v122;
                    v263 = 2082;
                    v264 = v126;
                    v265 = 2114;
                    v266 = v129;
                    v267 = 2082;
                    v268 = v130;
                    v269 = 2082;
                    v270 = v131;
                    _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to add inbound protocol %{public}s to %{public}s", buf, 0x5Cu);

                    goto LABEL_140;
                }
              }

              v126 = "unknown-mode";
              goto LABEL_139;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v254 = "nw_protocol_utilities_add_input_handler";
              v255 = 2048;
              id_str = v13;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s Unable to invoke add_input_handler on protocol %p because it is not valid", buf, 0x16u);
            }

LABEL_111:
            v16 = v7;
            goto LABEL_112;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          *buf = 136446466;
          v254 = "nw_protocol_utilities_add_input_handler";
          v255 = 2048;
          id_str = v10;
          v35 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v251 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v35, &type, &v251))
          {
            goto LABEL_109;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v36 = gLogObj;
            v37 = type;
            if (os_log_type_enabled(v36, type))
            {
              *buf = 136446466;
              v254 = "nw_protocol_utilities_add_input_handler";
              v255 = 2048;
              id_str = v246;
              _os_log_impl(&dword_181A37000, v36, v37, "%{public}s Cannot add input handler %p to itself", buf, 0x16u);
            }
          }

          else if (v251 == OS_LOG_TYPE_INFO)
          {
            v39 = __nw_create_backtrace_string();
            v36 = __nwlog_obj();
            v40 = type;
            v41 = os_log_type_enabled(v36, type);
            if (v39)
            {
              if (v41)
              {
                *buf = 136446722;
                v254 = "nw_protocol_utilities_add_input_handler";
                v255 = 2048;
                id_str = v246;
                v257 = 2082;
                v258 = v39;
                _os_log_impl(&dword_181A37000, v36, v40, "%{public}s Cannot add input handler %p to itself, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(v39);
              if (!v35)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            }

            if (v41)
            {
              *buf = 136446466;
              v254 = "nw_protocol_utilities_add_input_handler";
              v255 = 2048;
              id_str = v246;
              _os_log_impl(&dword_181A37000, v36, v40, "%{public}s Cannot add input handler %p to itself, no backtrace", buf, 0x16u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v36 = gLogObj;
            v51 = type;
            if (os_log_type_enabled(v36, type))
            {
              *buf = 136446466;
              v254 = "nw_protocol_utilities_add_input_handler";
              v255 = 2048;
              id_str = v246;
              _os_log_impl(&dword_181A37000, v36, v51, "%{public}s Cannot add input handler %p to itself, backtrace limit exceeded", buf, 0x16u);
            }
          }

          goto LABEL_108;
        }

        v211 = __nwlog_obj();
        *buf = 136446210;
        v254 = "nw_protocol_utilities_add_input_handler";
        v35 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v251 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v35, &type, &v251))
        {
LABEL_109:
          if (!v35)
          {
            goto LABEL_111;
          }

LABEL_110:
          free(v35);
          goto LABEL_111;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v212 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v212, "%{public}s called with null input_protocol", buf, 0xCu);
          }

LABEL_108:

          goto LABEL_109;
        }

        if (v251 != OS_LOG_TYPE_INFO)
        {
          v36 = __nwlog_obj();
          v220 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v220, "%{public}s called with null input_protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_108;
        }

        v214 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v217 = type;
        v218 = os_log_type_enabled(v36, type);
        if (!v214)
        {
          if (v218)
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v217, "%{public}s called with null input_protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_108;
        }

        if (v218)
        {
          *buf = 136446466;
          v254 = "nw_protocol_utilities_add_input_handler";
          v255 = 2082;
          id_str = v214;
          _os_log_impl(&dword_181A37000, v36, v217, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v209 = __nwlog_obj();
        *buf = 136446210;
        v254 = "nw_protocol_utilities_add_input_handler";
        v35 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v251 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v35, &type, &v251))
        {
          goto LABEL_109;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v36 = __nwlog_obj();
          v210 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v210, "%{public}s called with null protocol", buf, 0xCu);
          }

          goto LABEL_108;
        }

        if (v251 != OS_LOG_TYPE_INFO)
        {
          v36 = __nwlog_obj();
          v219 = type;
          if (os_log_type_enabled(v36, type))
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v219, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_108;
        }

        v214 = __nw_create_backtrace_string();
        v36 = __nwlog_obj();
        v215 = type;
        v216 = os_log_type_enabled(v36, type);
        if (!v214)
        {
          if (v216)
          {
            *buf = 136446210;
            v254 = "nw_protocol_utilities_add_input_handler";
            _os_log_impl(&dword_181A37000, v36, v215, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
          }

          goto LABEL_108;
        }

        if (v216)
        {
          *buf = 136446466;
          v254 = "nw_protocol_utilities_add_input_handler";
          v255 = 2082;
          id_str = v214;
          _os_log_impl(&dword_181A37000, v36, v215, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(v214);
      goto LABEL_109;
    }

    v23 = v7;
    v24 = *(v23 + 284);

    if ((v24 & 0x40) != 0)
    {
LABEL_143:
      v33 = 0;
      v53 = v245;
      goto LABEL_144;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v25 = gconnectionLogObj;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_98:

      goto LABEL_143;
    }

    v26 = v23;

    v27 = v26;
    v28 = *(v23 + 284);

    if (v28)
    {
      v29 = "dry-run ";
    }

    else
    {
      v29 = "";
    }

    v30 = nw_endpoint_handler_copy_endpoint(v27);
    v31 = v30;
    if (v30)
    {
      v32 = _nw_endpoint_get_logging_description(v30);
    }

    else
    {
      v32 = "<NULL>";
    }

    v42 = v26->id_str;

    v43 = v27;
    v44 = v43;
    v45 = v43[30];
    if (v45 > 5)
    {
      v46 = "unknown-state";
    }

    else
    {
      v46 = off_1E6A31048[v45];
    }

    v47 = v44;
    v48 = v47;
    v49 = v7->mode;
    if (v49 > 2)
    {
      switch(v49)
      {
        case 3:
          v50 = "proxy";
          goto LABEL_97;
        case 4:
          v50 = "fallback";
          goto LABEL_97;
        case 5:
          v50 = "transform";
          goto LABEL_97;
      }
    }

    else
    {
      switch(v49)
      {
        case 0:
          v50 = "path";
          goto LABEL_97;
        case 1:
          v50 = "resolver";
          goto LABEL_97;
        case 2:
          v50 = nw_endpoint_flow_mode_string(v47[33]);
LABEL_97:

          v97 = v48;
          os_unfair_lock_lock(v97 + 28);
          v98 = v97[8];
          os_unfair_lock_unlock(v97 + 28);

          *buf = 136447746;
          v254 = "nw_flow_listener_new_flow";
          v255 = 2082;
          id_str = v42;
          v257 = 2082;
          v258 = v29;
          v259 = 2082;
          v260 = v32;
          v261 = 2082;
          v262 = v46;
          v263 = 2082;
          v264 = v50;
          v265 = 2114;
          v266 = v98;
          _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot receive new flows on non-multiplexed protocols", buf, 0x48u);

          goto LABEL_98;
      }
    }

    v50 = "unknown-mode";
    goto LABEL_97;
  }

  v133 = 0;
  v202 = __nwlog_obj();
  *buf = 136446210;
  v254 = "nw_flow_listener_new_flow";
  v203 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v251 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v203, &type, &v251))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v204 = __nwlog_obj();
      v205 = type;
      if (os_log_type_enabled(v204, type))
      {
        *buf = 136446210;
        v254 = "nw_flow_listener_new_flow";
        _os_log_impl(&dword_181A37000, v204, v205, "%{public}s called with null handler", buf, 0xCu);
      }
    }

    else if (v251 == OS_LOG_TYPE_INFO)
    {
      v206 = __nw_create_backtrace_string();
      v204 = __nwlog_obj();
      v207 = type;
      v208 = os_log_type_enabled(v204, type);
      if (v206)
      {
        if (v208)
        {
          *buf = 136446466;
          v254 = "nw_flow_listener_new_flow";
          v255 = 2082;
          id_str = v206;
          _os_log_impl(&dword_181A37000, v204, v207, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v206);
        goto LABEL_242;
      }

      if (v208)
      {
        *buf = 136446210;
        v254 = "nw_flow_listener_new_flow";
        _os_log_impl(&dword_181A37000, v204, v207, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v204 = __nwlog_obj();
      v213 = type;
      if (os_log_type_enabled(v204, type))
      {
        *buf = 136446210;
        v254 = "nw_flow_listener_new_flow";
        _os_log_impl(&dword_181A37000, v204, v213, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_242:
  if (v203)
  {
    free(v203);
  }

  v33 = 0;
LABEL_146:

  return v33;
}

uint64_t sub_181D785EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(**(v2 + 32), a1);
  *a2 = result & 1;
  return result;
}

uint64_t _nw_array_copy_last_object(void *a1)
{
  v1 = a1;
  sub_181D7866C(v1, &v3);

  return v3;
}

uint64_t sub_181D7866C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC7Network7NWArray_deque;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  v7 = v6[3];
  if (!v7)
  {
    *a2 = 0;
    return result;
  }

  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v8 >= v7)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = v6[4] + v8;
  v10 = v6[2];
  if (v9 < v10)
  {
    v10 = 0;
  }

  *a2 = v6[v9 - v10 + 5];
  return swift_unknownObjectRetain();
}

uint64_t nw_flow_protocol_get_key(void *a1, _BOOL4 *a2)
{
  v2 = a1[30];
  v3 = v2 == 0;
  v4 = v2 != 0;
  v5 = 31;
  if (!v3)
  {
    v5 = 30;
  }

  *a2 = v4;
  return a1[v5];
}

uint64_t __nw_parameters_inherit_protocol_instances_block_invoke(uint64_t *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = a1[5];
  v8 = a2 - v7;
  if (a2 > v7)
  {
    v9 = a1[6];
    v10 = nw_protocol_options_copy_definition(v5);
    v11 = nw_protocol_stack_copy_application_protocol_at_index(a1[4], v8 + v9);
    v12 = v11;
    if (v6 && v11 && nw_protocol_options_matches_definition(v11, v10))
    {
      v13 = v12;
      v14 = v6;
      _nw_protocol_options_inherit_log_id(v13, v14);

      protocol_handle = _nw_protocol_options_get_protocol_handle(v13);
      _nw_protocol_options_set_instance(v14, protocol_handle);
    }
  }

  return 1;
}

uint64_t nw::retained_ptr<nw_protocol *>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = result;
      v4 = a2;
      nw::release_if_needed<nw_protocol *>(result);
      a2 = v4;
      result = v3;
      v2 = *(v3 + 8);
    }

    *result = 0;
    *result = *a2;
    *(result + 8) = v2 & 0xFE | *(a2 + 8) & 1;
    *a2 = 0;
    *(a2 + 8) &= ~1u;
  }

  return result;
}

void nw_quic_connection_set_stream_metadata(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (nw_protocol_metadata_is_quic_connection(v3))
  {
    _nw_quic_connection_set_stream_metadata(v3, v4);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_quic_connection_set_stream_metadata";
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
        v15 = "nw_quic_connection_set_stream_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata)";
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
            v15 = "nw_quic_connection_set_stream_metadata";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v11)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v15 = "nw_quic_connection_set_stream_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), no backtrace";
        goto LABEL_17;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_quic_connection_set_stream_metadata";
        v9 = "%{public}s called with null nw_protocol_metadata_is_quic_connection(connection_metadata), backtrace limit exceeded";
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

uint64_t nw_protocol_implementation_updated_path(uint64_t a1, nw_protocol *a2, void *a3)
{
  v116 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    v8 = a1;
    if (v7 != &nw_protocol_ref_counted_handle)
    {
      if (v7 != &nw_protocol_ref_counted_additional_handle)
      {
        v9 = __nwlog_obj();
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        v10 = _os_log_send_and_compose_impl();

        LOBYTE(v106) = 16;
        LOBYTE(v104) = 0;
        if (__nwlog_fault(v10, &v106, &v104))
        {
          if (v106 == 17)
          {
            v11 = __nwlog_obj();
            v12 = v106;
            if (os_log_type_enabled(v11, v106))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_updated_path";
              _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null instance", buf, 0xCu);
            }
          }

          else if (v104 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v11 = __nwlog_obj();
            v22 = v106;
            v23 = os_log_type_enabled(v11, v106);
            if (backtrace_string)
            {
              if (v23)
              {
                *buf = 136446466;
                v109 = "nw_protocol_implementation_updated_path";
                v110 = 2082;
                v111 = backtrace_string;
                _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              if (!v10)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            if (v23)
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_updated_path";
              _os_log_impl(&dword_181A37000, v11, v22, "%{public}s called with null instance, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v11 = __nwlog_obj();
            v24 = v106;
            if (os_log_type_enabled(v11, v106))
            {
              *buf = 136446210;
              v109 = "nw_protocol_implementation_updated_path";
              _os_log_impl(&dword_181A37000, v11, v24, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

        if (!v10)
        {
LABEL_47:
          v13 = 0;
          v16 = 0;
          goto LABEL_88;
        }

LABEL_46:
        free(v10);
        goto LABEL_47;
      }

      v8 = *(a1 + 64);
    }

    v13 = (v8 + 96);
    v14 = *(v8 + 104);
    if (v14)
    {
      if (*(v14 + 80))
      {
        if (v6)
        {
          if ((*(v8 + 509) & 0x80000000) == 0 && gLogDatapath == 1)
          {
            v70 = __nwlog_obj();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446722;
              v109 = "nw_protocol_implementation_updated_path";
              v110 = 2082;
              v111 = (v8 + 511);
              v112 = 2080;
              v113 = " ";
              _os_log_impl(&dword_181A37000, v70, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s", buf, 0x20u);
            }
          }

          objc_storeStrong((v8 + 384), a3);
          if (nw_path_get_status(*(v8 + 384)) == nw_path_status_unsatisfied && nw_path_policy_abort(*(v8 + 384)))
          {
            if ((*(v8 + 509) & 0x80000000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v15 = gLogObj;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v109 = "nw_protocol_implementation_updated_path";
                v110 = 2082;
                v111 = (v8 + 511);
                v112 = 2080;
                v113 = " ";
                _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sreceived policy abort", buf, 0x20u);
              }
            }

            nw_protocol_implementation_error(a1, a2, 53);
LABEL_22:
            v16 = 0;
LABEL_88:

            goto LABEL_89;
          }

          if (*(*(*(v8 + 104) + 80) + 232))
          {
            v17 = *(v8 + 376);
            if (v17)
            {
              LODWORD(v106) = 0;
              LODWORD(v104) = 0;
              *type = 0;
              ctl_command = nw_path_flow_registration_get_ctl_command(v6, v17, &v106, &v104, type);
              v19 = v106 == 5 ? ctl_command : 0;
              if (v19 == 1)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v20 = gLogObj;
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446466;
                  v109 = "nw_protocol_implementation_updated_path";
                  v110 = 1024;
                  LODWORD(v111) = v104;
                  _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s receive PRC_MSGSIZE %u", buf, 0x12u);
                }

                if (*(v8 + 392))
                {
                  v99[0] = MEMORY[0x1E69E9820];
                  v99[1] = 3221225472;
                  v99[2] = ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke;
                  v99[3] = &unk_1E6A2D110;
                  v100 = v13;
                  v101 = v104;
                  nw_path_enumerate_interface_options(v6, v99);
                }

                else
                {
                  (*(*(*(v8 + 104) + 80) + 232))(v13, 0, v104);
                }
              }
            }
          }

          v25 = *(a1 + 32);
          v26 = v6;
          v27 = v26;
          if (!v25)
          {
            goto LABEL_73;
          }

          v28 = *(v25 + 3);
          if (!v28)
          {
            goto LABEL_73;
          }

          v29 = *(v28 + 168) == 0;

          if (v29)
          {
LABEL_74:

            v41 = *(v8 + 392);
            if (v41)
            {
              v95[0] = MEMORY[0x1E69E9820];
              v95[1] = 3221225472;
              v95[2] = ___ZL39nw_protocol_implementation_updated_pathP11nw_protocolS0_PU21objcproto10OS_nw_path8NSObject_block_invoke_3;
              v95[3] = &unk_1E6A2D138;
              v97 = v25;
              v98 = a1;
              v96 = v27;
              nw_hash_table_apply(v41, v95);
            }

            v42 = v27;
            v43 = _nw_path_is_traffic_mgmt_background(v42);

            v44 = *(*(v8 + 104) + 80);
            v45 = *(v44 + 152);
            if (v45)
            {
              v45(v13, v43);
              v44 = *(*(v8 + 104) + 80);
            }

            if (*(v44 + 168))
            {
              v46 = v42;
              v47 = _nw_path_should_probe_connectivity(v46);

              v48 = *(v8 + 506);
              if (v47 != (v48 & 1))
              {
                *(v8 + 506) = v48 & 0xFE | v47;
                (*(*(*(v8 + 104) + 80) + 168))(v13, v47);
              }
            }

            v49 = v42;
            v50 = _nw_path_is_tunneled(v49);

            if (v50)
            {
              if ((*(v8 + 509) & 0x80000000) == 0)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v51 = gLogObj;
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136446978;
                  v109 = "nw_protocol_implementation_updated_path";
                  v110 = 2082;
                  v111 = (v8 + 511);
                  v112 = 2080;
                  v113 = " ";
                  v114 = 2112;
                  v115 = v49;
                  _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sIgnoring update on path %@", buf, 0x2Au);
                }
              }
            }

            else
            {
              nw_protocol_instance_update_available_paths(v13);
            }

            v16 = 1;
            goto LABEL_88;
          }

          v30 = v27;
          v31 = *(v25 + 5);
          v32 = v25;
          if (v31 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_56;
          }

          if (v31 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v32) = 0;
            v33 = 1;
            goto LABEL_59;
          }

          v32 = *(v25 + 8);
          if (v32)
          {
LABEL_56:
            v34 = *(v32 + 11);
            v33 = 0;
            if (v34)
            {
              *(v32 + 11) = v34 + 1;
            }

            LOBYTE(v32) = -1;
          }

          else
          {
            v33 = 1;
          }

LABEL_59:
          v106 = v25;
          v107 = v32;
          v35 = *(a1 + 40);
          v36 = a1;
          if (v35 != &nw_protocol_ref_counted_handle)
          {
            if (v35 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v36) = 0;
              v37 = 1;
              goto LABEL_66;
            }

            v36 = *(a1 + 64);
            if (!v36)
            {
              v37 = 1;
              goto LABEL_66;
            }
          }

          v38 = *(v36 + 88);
          v37 = 0;
          if (v38)
          {
            *(v36 + 88) = v38 + 1;
          }

          LOBYTE(v36) = -1;
LABEL_66:
          v104 = a1;
          v105 = v36;
          v39 = *(v25 + 3);
          if (v39)
          {
            v40 = *(v39 + 168);
            if (v40)
            {
              v40(v25, a1, v30);
LABEL_69:
              if ((v37 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(&v104);
              }

              if ((v33 & 1) == 0)
              {
                nw::release_if_needed<nw_protocol *>(&v106);
              }

LABEL_73:

              goto LABEL_74;
            }
          }

          v57 = __nwlog_obj();
          v58 = *(v25 + 2);
          *buf = 136446722;
          v109 = "__nw_protocol_updated_path";
          if (!v58)
          {
            v58 = "invalid";
          }

          v110 = 2082;
          v111 = v58;
          v112 = 2048;
          v113 = v25;
          v94 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v103 = 0;
          v59 = v94;
          if (!__nwlog_fault(v94, type, &v103))
          {
LABEL_180:
            if (v59)
            {
              free(v59);
            }

            goto LABEL_69;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v60 = __nwlog_obj();
            v91 = type[0];
            if (os_log_type_enabled(v60, type[0]))
            {
              v61 = *(v25 + 2);
              if (!v61)
              {
                v61 = "invalid";
              }

              *buf = 136446722;
              v109 = "__nw_protocol_updated_path";
              v110 = 2082;
              v111 = v61;
              v112 = 2048;
              v113 = v25;
              _os_log_impl(&dword_181A37000, v60, v91, "%{public}s protocol %{public}s (%p) has invalid updated_path callback", buf, 0x20u);
            }
          }

          else
          {
            if (v103 == 1)
            {
              v74 = __nw_create_backtrace_string();
              v92 = __nwlog_obj();
              v90 = type[0];
              v75 = os_log_type_enabled(v92, type[0]);
              if (v74)
              {
                if (v75)
                {
                  v76 = *(v25 + 2);
                  if (!v76)
                  {
                    v76 = "invalid";
                  }

                  *buf = 136446978;
                  v109 = "__nw_protocol_updated_path";
                  v110 = 2082;
                  v111 = v76;
                  v112 = 2048;
                  v113 = v25;
                  v114 = 2082;
                  v115 = v74;
                  _os_log_impl(&dword_181A37000, v92, v90, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v74);
              }

              else
              {
                if (v75)
                {
                  v89 = *(v25 + 2);
                  if (!v89)
                  {
                    v89 = "invalid";
                  }

                  *buf = 136446722;
                  v109 = "__nw_protocol_updated_path";
                  v110 = 2082;
                  v111 = v89;
                  v112 = 2048;
                  v113 = v25;
                  _os_log_impl(&dword_181A37000, v92, v90, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, no backtrace", buf, 0x20u);
                }
              }

              goto LABEL_179;
            }

            v60 = __nwlog_obj();
            v93 = type[0];
            if (os_log_type_enabled(v60, type[0]))
            {
              v85 = *(v25 + 2);
              if (!v85)
              {
                v85 = "invalid";
              }

              *buf = 136446722;
              v109 = "__nw_protocol_updated_path";
              v110 = 2082;
              v111 = v85;
              v112 = 2048;
              v113 = v25;
              _os_log_impl(&dword_181A37000, v60, v93, "%{public}s protocol %{public}s (%p) has invalid updated_path callback, backtrace limit exceeded", buf, 0x20u);
            }
          }

LABEL_179:
          v59 = v94;
          goto LABEL_180;
        }

        v68 = __nwlog_obj();
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        v63 = _os_log_send_and_compose_impl();

        LOBYTE(v106) = 16;
        LOBYTE(v104) = 0;
        if (!__nwlog_fault(v63, &v106, &v104))
        {
LABEL_191:
          if (v63)
          {
            free(v63);
          }

          goto LABEL_22;
        }

        if (v106 == 17)
        {
          v64 = __nwlog_obj();
          v69 = v106;
          if (os_log_type_enabled(v64, v106))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v69, "%{public}s called with null path", buf, 0xCu);
          }

LABEL_190:

          goto LABEL_191;
        }

        if (v104 != 1)
        {
          v64 = __nwlog_obj();
          v88 = v106;
          if (os_log_type_enabled(v64, v106))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v88, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_190;
        }

        v77 = __nw_create_backtrace_string();
        v64 = __nwlog_obj();
        v82 = v106;
        v83 = os_log_type_enabled(v64, v106);
        if (!v77)
        {
          if (v83)
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v82, "%{public}s called with null path, no backtrace", buf, 0xCu);
          }

          goto LABEL_190;
        }

        if (v83)
        {
          *buf = 136446466;
          v109 = "nw_protocol_implementation_updated_path";
          v110 = 2082;
          v111 = v77;
          _os_log_impl(&dword_181A37000, v64, v82, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        v66 = __nwlog_obj();
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        v63 = _os_log_send_and_compose_impl();

        LOBYTE(v106) = 16;
        LOBYTE(v104) = 0;
        if (!__nwlog_fault(v63, &v106, &v104))
        {
          goto LABEL_191;
        }

        if (v106 == 17)
        {
          v64 = __nwlog_obj();
          v67 = v106;
          if (os_log_type_enabled(v64, v106))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v67, "%{public}s called with null instance->parent_definition->extended_state", buf, 0xCu);
          }

          goto LABEL_190;
        }

        if (v104 != 1)
        {
          v64 = __nwlog_obj();
          v87 = v106;
          if (os_log_type_enabled(v64, v106))
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v87, "%{public}s called with null instance->parent_definition->extended_state, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_190;
        }

        v77 = __nw_create_backtrace_string();
        v64 = __nwlog_obj();
        v80 = v106;
        v81 = os_log_type_enabled(v64, v106);
        if (!v77)
        {
          if (v81)
          {
            *buf = 136446210;
            v109 = "nw_protocol_implementation_updated_path";
            _os_log_impl(&dword_181A37000, v64, v80, "%{public}s called with null instance->parent_definition->extended_state, no backtrace", buf, 0xCu);
          }

          goto LABEL_190;
        }

        if (v81)
        {
          *buf = 136446466;
          v109 = "nw_protocol_implementation_updated_path";
          v110 = 2082;
          v111 = v77;
          _os_log_impl(&dword_181A37000, v64, v80, "%{public}s called with null instance->parent_definition->extended_state, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }
    }

    else
    {
      v62 = __nwlog_obj();
      *buf = 136446210;
      v109 = "nw_protocol_implementation_updated_path";
      v63 = _os_log_send_and_compose_impl();

      LOBYTE(v106) = 16;
      LOBYTE(v104) = 0;
      if (!__nwlog_fault(v63, &v106, &v104))
      {
        goto LABEL_191;
      }

      if (v106 == 17)
      {
        v64 = __nwlog_obj();
        v65 = v106;
        if (os_log_type_enabled(v64, v106))
        {
          *buf = 136446210;
          v109 = "nw_protocol_implementation_updated_path";
          _os_log_impl(&dword_181A37000, v64, v65, "%{public}s called with null instance->parent_definition", buf, 0xCu);
        }

        goto LABEL_190;
      }

      if (v104 != 1)
      {
        v64 = __nwlog_obj();
        v86 = v106;
        if (os_log_type_enabled(v64, v106))
        {
          *buf = 136446210;
          v109 = "nw_protocol_implementation_updated_path";
          _os_log_impl(&dword_181A37000, v64, v86, "%{public}s called with null instance->parent_definition, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_190;
      }

      v77 = __nw_create_backtrace_string();
      v64 = __nwlog_obj();
      v78 = v106;
      v79 = os_log_type_enabled(v64, v106);
      if (!v77)
      {
        if (v79)
        {
          *buf = 136446210;
          v109 = "nw_protocol_implementation_updated_path";
          _os_log_impl(&dword_181A37000, v64, v78, "%{public}s called with null instance->parent_definition, no backtrace", buf, 0xCu);
        }

        goto LABEL_190;
      }

      if (v79)
      {
        *buf = 136446466;
        v109 = "nw_protocol_implementation_updated_path";
        v110 = 2082;
        v111 = v77;
        _os_log_impl(&dword_181A37000, v64, v78, "%{public}s called with null instance->parent_definition, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v77);
    goto LABEL_191;
  }

  v53 = __nwlog_obj();
  *buf = 136446210;
  v109 = "nw_protocol_implementation_updated_path";
  v54 = _os_log_send_and_compose_impl();

  LOBYTE(v106) = 16;
  LOBYTE(v104) = 0;
  if (__nwlog_fault(v54, &v106, &v104))
  {
    if (v106 == 17)
    {
      v55 = __nwlog_obj();
      v56 = v106;
      if (os_log_type_enabled(v55, v106))
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        _os_log_impl(&dword_181A37000, v55, v56, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (v104 == 1)
    {
      v71 = __nw_create_backtrace_string();
      v55 = __nwlog_obj();
      v72 = v106;
      v73 = os_log_type_enabled(v55, v106);
      if (v71)
      {
        if (v73)
        {
          *buf = 136446466;
          v109 = "nw_protocol_implementation_updated_path";
          v110 = 2082;
          v111 = v71;
          _os_log_impl(&dword_181A37000, v55, v72, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v71);
        goto LABEL_171;
      }

      if (v73)
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        _os_log_impl(&dword_181A37000, v55, v72, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v55 = __nwlog_obj();
      v84 = v106;
      if (os_log_type_enabled(v55, v106))
      {
        *buf = 136446210;
        v109 = "nw_protocol_implementation_updated_path";
        _os_log_impl(&dword_181A37000, v55, v84, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_171:
  if (v54)
  {
    free(v54);
  }

  v16 = 0;
LABEL_89:

  return v16;
}

uint64_t nw_path_flow_registration_get_ctl_command(void *a1, void *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  if (a3)
  {
    if (a4)
    {
      v11 = nw_path_copy_flow_for_registration(v9, v10);
      v12 = v11;
      if (v11 && (*buf = 0, _nw_path_flow_get_protoctl_event(v11, a3, a4, buf)))
      {
        if (a5)
        {
          *a5 = *buf;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_10;
    }

    v19 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_get_ctl_command";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v16, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v20, "%{public}s called with null value", buf, 0xCu);
        }

LABEL_42:

        goto LABEL_43;
      }

      if (v28 != 1)
      {
        v17 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v27, "%{public}s called with null value, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_42;
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
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null value, no backtrace", buf, 0xCu);
        }

        goto LABEL_42;
      }

      if (v25)
      {
        *buf = 136446466;
        v31 = "nw_path_flow_registration_get_ctl_command";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null value, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_30;
    }
  }

  else
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_path_flow_registration_get_ctl_command";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v16, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v17 = __nwlog_obj();
        v18 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null code", buf, 0xCu);
        }

        goto LABEL_42;
      }

      if (v28 != 1)
      {
        v17 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v17, type))
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v26, "%{public}s called with null code, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_42;
      }

      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v22 = type;
      v23 = os_log_type_enabled(v17, type);
      if (!backtrace_string)
      {
        if (v23)
        {
          *buf = 136446210;
          v31 = "nw_path_flow_registration_get_ctl_command";
          _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null code, no backtrace", buf, 0xCu);
        }

        goto LABEL_42;
      }

      if (v23)
      {
        *buf = 136446466;
        v31 = "nw_path_flow_registration_get_ctl_command";
        v32 = 2082;
        v33 = backtrace_string;
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s called with null code, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_30:

      free(backtrace_string);
    }
  }

LABEL_43:
  if (v16)
  {
    free(v16);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

uint64_t _nw_quic_connection_set_stream_metadata_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A390);
  result = sub_181A93260(a1);
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    v6 = *(v5 + 64);

    if (v6)
    {
      os_unfair_lock_lock((*(v6 + 248) + 16));
      *(v6 + 64) = a2;
      os_unfair_lock_unlock((*(v6 + 248) + 16));
    }
  }

  return result;
}

uint64_t __nw_protocol_implementation_finalize_pending_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  object = nw_hash_node_get_object(a2);
  extra = nw_hash_node_get_extra(a2);
  if (!*(extra + 120))
  {
    return 1;
  }

  v6 = extra;
  v7 = *(a1 + 32);
  if ((!v7 || (*(v7 + 413) & 0x80000000) == 0) && gLogDatapath == 1)
  {
    v28 = __nwlog_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
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
      v49 = "nw_protocol_implementation_finalize_pending_frames_block_invoke";
      v50 = 2082;
      v51 = v31;
      if (v30)
      {
        v32 = "";
      }

      else
      {
        v32 = " ";
      }

      v52 = 2080;
      v53 = v32;
      v54 = 2048;
      v55 = object;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%sFinalizing outbound frames for %lx (batched)", buf, 0x2Au);
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
        goto LABEL_13;
      }

      v10 = *(v8 + 8);
      if (!v10)
      {
        v11 = 1;
        goto LABEL_13;
      }
    }

    v12 = *(v10 + 88);
    v11 = 0;
    if (v12)
    {
      *(v10 + 88) = v12 + 1;
    }

    LOBYTE(v10) = -1;
LABEL_13:
    *v45 = v8;
    v46 = v10;
    v13 = *(v8 + 3);
    if (v13)
    {
      v14 = *(v13 + 96);
      if (v14)
      {
        v14();
LABEL_16:
        if ((v11 & 1) == 0)
        {
          nw::release_if_needed<nw_protocol *>(v45);
        }

        return 1;
      }
    }

    v16 = v8;
    v17 = __nwlog_obj();
    v18 = *(v16 + 2);
    *buf = 136446722;
    v49 = "__nw_protocol_finalize_output_frames";
    if (!v18)
    {
      v18 = "invalid";
    }

    v50 = 2082;
    v51 = v18;
    v52 = 2048;
    v19 = v16;
    v53 = v16;
    v20 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v20, &type, &v44))
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
          v49 = "__nw_protocol_finalize_output_frames";
          v50 = 2082;
          v51 = v23;
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback", buf, 0x20u);
        }
      }

      else if (v44 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v21, type);
        if (backtrace_string)
        {
          if (v35)
          {
            if (*(v19 + 2))
            {
              v36 = *(v19 + 2);
            }

            else
            {
              v36 = "invalid";
            }

            *buf = 136446978;
            v49 = "__nw_protocol_finalize_output_frames";
            v50 = 2082;
            v51 = v36;
            v52 = 2048;
            v53 = v19;
            v54 = 2082;
            v55 = backtrace_string;
            _os_log_impl(&dword_181A37000, v21, v34, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(backtrace_string);
          goto LABEL_70;
        }

        if (v35)
        {
          if (*(v19 + 2))
          {
            v43 = *(v19 + 2);
          }

          else
          {
            v43 = "invalid";
          }

          *buf = 136446722;
          v49 = "__nw_protocol_finalize_output_frames";
          v50 = 2082;
          v51 = v43;
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&dword_181A37000, v21, v34, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        v21 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v21, type))
        {
          v41 = *(v19 + 2);
          if (!v41)
          {
            v41 = "invalid";
          }

          *buf = 136446722;
          v49 = "__nw_protocol_finalize_output_frames";
          v50 = 2082;
          v51 = v41;
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&dword_181A37000, v21, v40, "%{public}s protocol %{public}s (%p) has invalid finalize_output_frames callback, backtrace limit exceeded", buf, 0x20u);
        }
      }
    }

LABEL_70:
    if (v20)
    {
      free(v20);
    }

    goto LABEL_16;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  v49 = "__nw_protocol_finalize_output_frames";
  v25 = _os_log_send_and_compose_impl();

  v45[0] = OS_LOG_TYPE_ERROR;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, v45, &type))
  {
    if (v45[0] == OS_LOG_TYPE_FAULT)
    {
      v26 = __nwlog_obj();
      v27 = v45[0];
      if (os_log_type_enabled(v26, v45[0]))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v37 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v38 = v45[0];
      v39 = os_log_type_enabled(v26, v45[0]);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v49 = "__nw_protocol_finalize_output_frames";
          v50 = 2082;
          v51 = v37;
          _os_log_impl(&dword_181A37000, v26, v38, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v37);
        goto LABEL_75;
      }

      if (v39)
      {
        *buf = 136446210;
        v49 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v38, "%{public}s called with null protocol, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v42 = v45[0];
      if (os_log_type_enabled(v26, v45[0]))
      {
        *buf = 136446210;
        v49 = "__nw_protocol_finalize_output_frames";
        _os_log_impl(&dword_181A37000, v26, v42, "%{public}s called with null protocol, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_75:
  if (v25)
  {
    free(v25);
  }

  return 1;
}

void sub_181D7AC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    _Unwind_Resume(exception_object);
  }

  nw::release_if_needed<nw_protocol *>(&a14);
  _Unwind_Resume(exception_object);
}

char *_nw_path_is_traffic_mgmt_background(char *result)
{
  if (result)
  {
    v1 = &result[OBJC_IVAR____TtC7Network8__NWPath_path];
    v2 = result;
    swift_beginAccess();
    LODWORD(v1) = *(v1 + 39);

    return ((v1 >> 9) & 1);
  }

  return result;
}

uint64_t nw_protocol_create_inbound_data(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_create_inbound_data";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v21, &type, &v38))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null instance", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v38 != 1)
    {
      v22 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v35, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v29 = type;
    v30 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v30)
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v30)
    {
      *buf = 136446466;
      v41 = "nw_protocol_create_inbound_data";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_57:

    free(backtrace_string);
    goto LABEL_76;
  }

  v7 = *&v5->protocol_outbound_data_limit;
  if (!v7)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_create_inbound_data";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v38 = 0;
    if (!__nwlog_fault(v21, &type, &v38))
    {
      goto LABEL_76;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null instance->context", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v38 != 1)
    {
      v22 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v36, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_75;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v31 = type;
    v32 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v32)
      {
        *buf = 136446210;
        v41 = "nw_protocol_create_inbound_data";
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
      }

      goto LABEL_75;
    }

    if (v32)
    {
      *buf = 136446466;
      v41 = "nw_protocol_create_inbound_data";
      v42 = 2082;
      v43 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_57;
  }

  if (!a2)
  {
LABEL_10:
    v9 = 0;
    sized_typed = 0;
    goto LABEL_11;
  }

  buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(v7, a2);
  if (buffer_manager_with_context)
  {
    v9 = buffer_manager_with_context;
    sized_typed = nw_mem_buffer_allocate_sized_typed(a2, 0x100004077774924uLL, buffer_manager_with_context);
    if (sized_typed)
    {
LABEL_11:
      if (v6)
      {
        data_from_pool = nw_protocol_create_data_from_pool(v5, 0);
        if (data_from_pool)
        {
          nw_frame_reset(data_from_pool, sized_typed, a2, nw_protocol_inbound_data_finalizer, v5);
          v15 = 0;
          goto LABEL_16;
        }
      }

      v16 = nw_frame_create(16 * (v6 != 0), sized_typed, a2, nw_protocol_inbound_data_finalizer, v5);
      if (v16)
      {
        data_from_pool = v16;
        v15 = 1;
        if (!v6)
        {
LABEL_20:
          if (v9)
          {
            data_from_pool[13] = v9;
          }

          else if (sized_typed)
          {
            *(data_from_pool + 102) |= 1u;
          }

          if (v15)
          {
            v18 = data_from_pool;
          }

          data_from_pool[2] = 0;
          context = v5->context;
          data_from_pool[3] = context;
          *context = data_from_pool;
          v5->context = (data_from_pool + 2);
LABEL_27:

          return data_from_pool;
        }

LABEL_16:
        if ((*(data_from_pool + 102) & 4) != 0)
        {
          v17 = (data_from_pool + 26);
        }

        else
        {
          v17 = 0;
        }

        *(v17 + 1) = _Block_copy(v6);
        goto LABEL_20;
      }

      v26 = __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_create_inbound_data";
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v38 = 0;
      if (__nwlog_fault(v21, &type, &v38))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v22 = __nwlog_obj();
          v27 = type;
          if (os_log_type_enabled(v22, type))
          {
            *buf = 136446210;
            v41 = "nw_protocol_create_inbound_data";
            _os_log_impl(&dword_181A37000, v22, v27, "%{public}s nw_frame_create failed", buf, 0xCu);
          }

LABEL_75:

          goto LABEL_76;
        }

        if (v38 != 1)
        {
          v22 = __nwlog_obj();
          v37 = type;
          if (os_log_type_enabled(v22, type))
          {
            *buf = 136446210;
            v41 = "nw_protocol_create_inbound_data";
            _os_log_impl(&dword_181A37000, v22, v37, "%{public}s nw_frame_create failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_75;
        }

        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v33 = type;
        v34 = os_log_type_enabled(v22, type);
        if (!backtrace_string)
        {
          if (v34)
          {
            *buf = 136446210;
            v41 = "nw_protocol_create_inbound_data";
            _os_log_impl(&dword_181A37000, v22, v33, "%{public}s nw_frame_create failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_75;
        }

        if (v34)
        {
          *buf = 136446466;
          v41 = "nw_protocol_create_inbound_data";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v33, "%{public}s nw_frame_create failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_57;
      }

LABEL_76:
      if (v21)
      {
        free(v21);
      }

      data_from_pool = 0;
      goto LABEL_27;
    }
  }

  sized_typed = malloc_type_malloc(a2, 0xDF3A3BDBuLL);
  if (sized_typed)
  {
    v9 = 0;
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v41 = "nw_protocol_create_inbound_data";
  v12 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v12);
  if (!result)
  {
    free(v12);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void nw_socket_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v43 = "nw_socket_output_finished";
    v2 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (!__nwlog_fault(v2, &type, &v40))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v43 = "nw_socket_output_finished";
      v36 = "%{public}s called with null protocol";
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v38 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v38)
        {
          *buf = 136446466;
          v43 = "nw_socket_output_finished";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v2)
        {
          goto LABEL_53;
        }

        return;
      }

      if (!v38)
      {
LABEL_94:
        if (!v2)
        {
          return;
        }

        goto LABEL_53;
      }

      *buf = 136446210;
      v43 = "nw_socket_output_finished";
      v36 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (!os_log_type_enabled(v34, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v43 = "nw_socket_output_finished";
      v36 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
    goto LABEL_94;
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
  if (handle != &nw_protocol_ref_counted_handle)
  {
    if (handle != &nw_protocol_ref_counted_additional_handle)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v43 = "nw_socket_output_finished";
      v8 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v40 = 0;
      if (!__nwlog_fault(v8, &type, &v40))
      {
        goto LABEL_40;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v43 = "nw_socket_output_finished";
        v11 = "%{public}s called with null socket_handler";
      }

      else
      {
        if (v40 == 1)
        {
          v18 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v20 = type;
          v21 = os_log_type_enabled(gLogObj, type);
          if (v18)
          {
            if (v21)
            {
              *buf = 136446466;
              v43 = "nw_socket_output_finished";
              v44 = 2082;
              v45 = v18;
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v18);
            goto LABEL_40;
          }

          if (!v21)
          {
LABEL_40:
            if (v8)
            {
              free(v8);
            }

            goto LABEL_42;
          }

          *buf = 136446210;
          v43 = "nw_socket_output_finished";
          v11 = "%{public}s called with null socket_handler, no backtrace";
          v22 = v19;
          v23 = v20;
LABEL_39:
          _os_log_impl(&dword_181A37000, v22, v23, v11, buf, 0xCu);
          goto LABEL_40;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v43 = "nw_socket_output_finished";
        v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
      }

      v22 = v9;
      v23 = v10;
      goto LABEL_39;
    }

    v7 = *a1[1].flow_id;
  }

  callbacks_high = HIDWORD(v7[4].callbacks);
  if (callbacks_high < 0)
  {
    if ((*(&v7[6].callbacks + 5) & 0x80) != 0)
    {
      goto LABEL_42;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v13 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v43 = "nw_socket_output_finished";
    v44 = 2082;
    v45 = &v7[6].output_handler + 4;
    v14 = "%{public}s %{public}s Socket protocol does not have valid fd";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_29:
    v17 = 22;
LABEL_30:
    _os_log_impl(&dword_181A37000, v15, v16, v14, buf, v17);
    goto LABEL_42;
  }

  if (*&v7[5].flow_id[8] || v7[5].callbacks)
  {
    if ((*(&v7[6].callbacks + 5) & 0x80) == 0 && gLogDatapath == 1)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v39 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v43 = "nw_socket_output_finished";
        v44 = 2082;
        v45 = &v7[6].output_handler + 4;
        _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Waiting for writes to finish, deferring output_finished", buf, 0x16u);
      }
    }

    *(&v7[6].callbacks + 5) |= 8u;
    goto LABEL_42;
  }

  v29 = *(&v7[6].callbacks + 5);
  *(&v7[6].callbacks + 5) = v29 & 0xFFF7;
  if (LODWORD(v7[4].output_handler) != 2)
  {
    if ((v29 & 0x80) != 0)
    {
      goto LABEL_42;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v43 = "nw_socket_output_finished";
    v44 = 2082;
    v45 = &v7[6].output_handler + 4;
    v14 = "%{public}s %{public}s Ignoring output finished for non-stream socket";
    goto LABEL_68;
  }

  if (!shutdown(callbacks_high, 1))
  {
    if ((*(&v7[6].callbacks + 5) & 0x80) != 0 || gLogDatapath != 1)
    {
      goto LABEL_42;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v33 = gconnectionLogObj;
    if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_42;
    }

    *buf = 136446466;
    v43 = "nw_socket_output_finished";
    v44 = 2082;
    v45 = &v7[6].output_handler + 4;
    v14 = "%{public}s %{public}s Closed writes based on output finished";
LABEL_68:
    v15 = v33;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_29;
  }

  v30 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v31 = gconnectionLogObj;
  if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
  {
    v32 = HIDWORD(v7[4].callbacks);
    *buf = 136446978;
    v43 = "nw_socket_output_finished";
    v44 = 2082;
    v45 = &v7[6].output_handler + 4;
    v46 = 1024;
    v47 = v32;
    v48 = 1024;
    v49 = v30;
    v14 = "%{public}s %{public}s shutdown(%d, SHUT_WR) %{darwin.errno}d";
    v15 = v31;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 34;
    goto LABEL_30;
  }

LABEL_42:
  if ((v5 & 1) == 0)
  {
    v24 = v2->handle;
    if (v24 == &nw_protocol_ref_counted_handle || v24 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v25 = v2[1].callbacks;
      if (v25)
      {
        v26 = (v25 - 1);
        v2[1].callbacks = v26;
        if (!v26)
        {
          v27 = *v2[1].flow_id;
          if (v27)
          {
            *v2[1].flow_id = 0;
            (v27)[2](v27, a2);
            _Block_release(v27);
          }

          if (v2[1].flow_id[8])
          {
            v28 = *v2[1].flow_id;
            if (v28)
            {
              _Block_release(v28);
            }
          }

LABEL_53:
          free(v2);
        }
      }
    }
  }
}

id nw_protocol_create_data_from_pool(NWConcrete_nw_protocol_instance *a1, char a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*&a1->protocol_outbound_data_limit)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_create_data_from_pool";
    v14 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v14, type, &v28))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type[0];
        if (os_log_type_enabled(v15, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_create_data_from_pool";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null instance->context", buf, 0xCu);
        }
      }

      else if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v18 = type[0];
        v19 = os_log_type_enabled(v15, type[0]);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_create_data_from_pool";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null instance->context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_32;
        }

        if (v19)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_create_data_from_pool";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null instance->context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type[0];
        if (os_log_type_enabled(v15, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_create_data_from_pool";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null instance->context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_32:
    if (v14)
    {
      free(v14);
    }

    return 0;
  }

  if (!LODWORD(a1->outbound_frames.tqh_first))
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__12441;
  v39 = __Block_byref_object_dispose__12442;
  v40 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v24 = ___ZL33nw_protocol_create_data_from_poolP31NWConcrete_nw_protocol_instanceb_block_invoke;
  v25 = &unk_1E6A2D160;
  v27 = a2;
  v26 = buf;
  tqh_last = a1->outbound_frames.tqh_last;
  do
  {
    if (!tqh_last)
    {
      break;
    }

    v4 = tqh_last[2];
    v5 = (v24)(v23);
    tqh_last = v4;
  }

  while ((v5 & 1) != 0);
  v6 = *(*&buf[8] + 40);
  if (v6)
  {
    p_empty_frame_pool_count = &a1->empty_frame_pool_count;
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v8)
    {
      p_empty_frame_pool_count = (v8 + 24);
    }

    *p_empty_frame_pool_count = v9;
    *v9 = v8;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    tqh_first = a1->outbound_frames.tqh_first;
    LODWORD(a1->outbound_frames.tqh_first) = tqh_first - 1;
    if (!tqh_first)
    {
      if (gLogDatapath == 1)
      {
        v21 = __nwlog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          tqh_first_low = LODWORD(a1->outbound_frames.tqh_first);
          *type = 136446978;
          v30 = "nw_protocol_create_data_from_pool";
          v31 = 2082;
          v32 = "instance->empty_frame_pool_count";
          v33 = 2048;
          v34 = 1;
          v35 = 2048;
          v36 = tqh_first_low;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", type, 0x2Au);
        }
      }

      LODWORD(a1->outbound_frames.tqh_first) = 0;
    }
  }

  v11 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v11;
}

void nw_protocol_instance_add_inbound(void *a1, uint64_t a2, void *a3, void *a4, int a5, int a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  if (!v11)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_add_inbound";
    v72 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v72, type, &v90))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v74 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v74, "%{public}s called with null instance", buf, 0xCu);
      }
    }

    else if (v90 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v78 = type[0];
      v79 = os_log_type_enabled(v73, type[0]);
      if (backtrace_string)
      {
        if (v79)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_instance_add_inbound";
          v94 = 2082;
          v95 = backtrace_string;
          _os_log_impl(&dword_181A37000, v73, v78, "%{public}s called with null instance, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_171:
        if (!v72)
        {
          goto LABEL_117;
        }

LABEL_172:
        free(v72);
        goto LABEL_117;
      }

      if (v79)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v78, "%{public}s called with null instance, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v73 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v85, "%{public}s called with null instance, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_170:

    goto LABEL_171;
  }

  if (!v12)
  {
    v75 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_add_inbound";
    v72 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v72, type, &v90))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v76 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v76, "%{public}s called with null data", buf, 0xCu);
      }

      goto LABEL_170;
    }

    if (v90 != 1)
    {
      v73 = __nwlog_obj();
      v86 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v86, "%{public}s called with null data, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_170;
    }

    v82 = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v83 = type[0];
    v84 = os_log_type_enabled(v73, type[0]);
    if (!v82)
    {
      if (v84)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v83, "%{public}s called with null data, no backtrace", buf, 0xCu);
      }

      goto LABEL_170;
    }

    if (v84)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_add_inbound";
      v94 = 2082;
      v95 = v82;
      _os_log_impl(&dword_181A37000, v73, v83, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_157;
  }

  v14 = *(v11 + 15);
  if (v14)
  {
    v15 = v14;
    v16 = v15;
    if ((v15[19] & 8) == 0)
    {
      dispatch_assert_queue_V2(v15[1]);
    }
  }

  if (v13)
  {
    nw_frame_set_metadata(v12, v13, 1, a5);
  }

  if (a6)
  {
    *(v12 + 186) |= 0x80u;
  }

  if (*(*(v11 + 1) + 64) != 3)
  {
    if (a2 == -1)
    {
      v28 = v12[13];
      if (v28)
      {
        v28 -= v12[14] + v12[15];
      }

      v29.i32[0] = 1;
      v29.i32[1] = v28;
      *(v11 + 25) = vadd_s32(*(v11 + 200), v29);
      *(v12 + 4) = 0;
      v30 = *(v11 + 24);
      *(v12 + 5) = v30;
      *v30 = v12;
      *(v11 + 24) = v12 + 8;
      if ((v11[410] & 8) == 0)
      {
        goto LABEL_117;
      }

      if ((v11[411] & 0x10) != 0)
      {
        if (a6)
        {
          v11[411] |= 0x40u;
        }

        goto LABEL_117;
      }

      v31 = *(v11 - 6);
      if (!v31 || (v32 = v31[3]) == 0 || (v33 = *(v32 + 64)) == 0)
      {
LABEL_57:
        if (!a6)
        {
          goto LABEL_117;
        }

        v43 = *(v11 - 6);
        if (!v43)
        {
          goto LABEL_117;
        }

        v44 = v43[3];
        if (!v44)
        {
          goto LABEL_117;
        }

        v45 = *(v44 + 184);
        if (!v45)
        {
          goto LABEL_117;
        }

        v46 = v43[5];
        v47 = *(v11 - 6);
        if (v46 != &nw_protocol_ref_counted_handle)
        {
          if (v46 != &nw_protocol_ref_counted_additional_handle)
          {
            LOBYTE(v47) = 0;
            v48 = 1;
LABEL_89:
            *buf = v43;
            buf[8] = v47;
            v61 = *(v11 - 7);
            v62 = v11 - 96;
            if (v61 == &nw_protocol_ref_counted_handle)
            {
              goto LABEL_93;
            }

            if (v61 != &nw_protocol_ref_counted_additional_handle)
            {
              LOBYTE(v62) = 0;
              v63 = 1;
              goto LABEL_96;
            }

            v62 = *(v11 - 4);
            if (v62)
            {
LABEL_93:
              v64 = *(v62 + 11);
              v63 = 0;
              if (v64)
              {
                *(v62 + 11) = v64 + 1;
              }

              LOBYTE(v62) = -1;
            }

            else
            {
              v63 = 1;
            }

LABEL_96:
            *type = v11 - 96;
            v92 = v62;
            v45();
            if ((v63 & 1) == 0)
            {
              nw::release_if_needed<nw_protocol *>(type);
            }

            if ((v48 & 1) == 0)
            {
              goto LABEL_116;
            }

            goto LABEL_117;
          }

          v47 = v43[8];
          if (!v47)
          {
            v48 = 1;
            goto LABEL_89;
          }
        }

        v60 = *(v47 + 88);
        v48 = 0;
        if (v60)
        {
          *(v47 + 88) = v60 + 1;
        }

        LOBYTE(v47) = -1;
        goto LABEL_89;
      }

      v34 = v31[5];
      v35 = *(v11 - 6);
      if (v34 == &nw_protocol_ref_counted_handle)
      {
        goto LABEL_43;
      }

      if (v34 != &nw_protocol_ref_counted_additional_handle)
      {
        LOBYTE(v35) = 0;
        v36 = 1;
        goto LABEL_46;
      }

      v35 = v31[8];
      if (v35)
      {
LABEL_43:
        v38 = *(v35 + 88);
        v36 = 0;
        if (v38)
        {
          *(v35 + 88) = v38 + 1;
        }

        LOBYTE(v35) = -1;
      }

      else
      {
        v36 = 1;
      }

LABEL_46:
      *buf = v31;
      buf[8] = v35;
      v39 = *(v11 - 7);
      v40 = v11 - 96;
      if (v39 != &nw_protocol_ref_counted_handle)
      {
        if (v39 != &nw_protocol_ref_counted_additional_handle)
        {
          LOBYTE(v40) = 0;
          v41 = 1;
LABEL_53:
          *type = v11 - 96;
          v92 = v40;
          v33();
          if ((v41 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

          if ((v36 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(buf);
          }

          goto LABEL_57;
        }

        v40 = *(v11 - 4);
        if (!v40)
        {
          v41 = 1;
          goto LABEL_53;
        }
      }

      v42 = *(v40 + 11);
      v41 = 0;
      if (v42)
      {
        *(v40 + 11) = v42 + 1;
      }

      LOBYTE(v40) = -1;
      goto LABEL_53;
    }

    v80 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_instance_add_inbound";
    v72 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v90 = 0;
    if (!__nwlog_fault(v72, type, &v90))
    {
      goto LABEL_171;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v73 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v81, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW)", buf, 0xCu);
      }

      goto LABEL_170;
    }

    if (v90 != 1)
    {
      v73 = __nwlog_obj();
      v89 = type[0];
      if (os_log_type_enabled(v73, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v89, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_170;
    }

    v82 = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v87 = type[0];
    v88 = os_log_type_enabled(v73, type[0]);
    if (!v82)
    {
      if (v88)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        _os_log_impl(&dword_181A37000, v73, v87, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), no backtrace", buf, 0xCu);
      }

      goto LABEL_170;
    }

    if (v88)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_instance_add_inbound";
      v94 = 2082;
      v95 = v82;
      _os_log_impl(&dword_181A37000, v73, v87, "%{public}s called with null (flow == NW_PROTOCOL_DEFAULT_FLOW), dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_157:

    free(v82);
    if (!v72)
    {
      goto LABEL_117;
    }

    goto LABEL_172;
  }

  node = nw_hash_table_get_node(*(v11 + 29), a2, 8);
  if (!node)
  {
    if ((v11[413] & 0x80000000) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        *&buf[4] = "nw_protocol_instance_add_inbound";
        v94 = 2082;
        v95 = v11 + 415;
        v96 = 2080;
        v97 = " ";
        v98 = 2048;
        v99 = a2;
        _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%sCannot add inbound data, flow %llx does not exist", buf, 0x2Au);
      }
    }

    goto LABEL_117;
  }

  v18 = v12[13];
  if (v18)
  {
    v18 -= v12[14] + v12[15];
  }

  v19.i32[0] = 1;
  v19.i32[1] = v18;
  node[8] = vadd_s32(node[8], v19);
  *(v12 + 4) = 0;
  v20 = node[7];
  *(v12 + 5) = v20;
  *v20 = v12;
  node[7] = (v12 + 8);
  v21 = node[10].i16[2];
  if ((v21 & 0x10) == 0)
  {
    goto LABEL_117;
  }

  if ((v11[411] & 0x10) != 0)
  {
    if (a6)
    {
      node[10].i16[2] = v21 | 0x40;
    }

    goto LABEL_117;
  }

  v22 = node[2];
  if (!v22)
  {
    goto LABEL_117;
  }

  v23 = v22[3];
  if (v23)
  {
    v24 = *(v23 + 64);
    if (v24)
    {
      v25 = v22[5];
      v26 = node[2];
      if (v25 != &nw_protocol_ref_counted_handle)
      {
        if (v25 != &nw_protocol_ref_counted_additional_handle)
        {
          v26.i8[0] = 0;
          v27 = 1;
          goto LABEL_68;
        }

        v26 = v22[8];
        if (!*&v26)
        {
          v27 = 1;
LABEL_68:
          *buf = v22;
          buf[8] = v26.i8[0];
          v50 = *(v11 - 7);
          v51 = v11 - 96;
          if (v50 == &nw_protocol_ref_counted_handle || v50 == &nw_protocol_ref_counted_additional_handle && (v51 = *(v11 - 4)) != 0)
          {
            v54 = *(v51 + 11);
            v53 = 0;
            if (v54)
            {
              *(v51 + 11) = v54 + 1;
            }

            v52 = -1;
          }

          else
          {
            v52 = 0;
            v53 = 1;
          }

          *type = v11 - 96;
          v92 = v52;
          v24(v22, v11 - 96);
          if ((v53 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(type);
          }

          if ((v27 & 1) == 0)
          {
            nw::release_if_needed<nw_protocol *>(buf);
          }

          goto LABEL_79;
        }
      }

      v49 = *(*&v26 + 88);
      v27 = 0;
      if (v49)
      {
        *(*&v26 + 88) = v49 + 1;
      }

      v26.i8[0] = -1;
      goto LABEL_68;
    }
  }

LABEL_79:
  if (!a6)
  {
    goto LABEL_117;
  }

  v55 = v22[3];
  if (!v55)
  {
    goto LABEL_117;
  }

  v56 = *(v55 + 184);
  if (!v56)
  {
    goto LABEL_117;
  }

  v57 = v22[5];
  v58 = v22;
  if (v57 != &nw_protocol_ref_counted_handle)
  {
    if (v57 != &nw_protocol_ref_counted_additional_handle)
    {
      LOBYTE(v58) = 0;
      v59 = 1;
      goto LABEL_106;
    }

    v58 = v22[8];
    if (!v58)
    {
      v59 = 1;
      goto LABEL_106;
    }
  }

  v65 = v58[11];
  v59 = 0;
  if (v65)
  {
    v58[11] = v65 + 1;
  }

  LOBYTE(v58) = -1;
LABEL_106:
  *buf = v22;
  buf[8] = v58;
  v66 = *(v11 - 7);
  v67 = v11 - 96;
  if (v66 == &nw_protocol_ref_counted_handle || v66 == &nw_protocol_ref_counted_additional_handle && (v67 = *(v11 - 4)) != 0)
  {
    v70 = *(v67 + 11);
    v69 = 0;
    if (v70)
    {
      *(v67 + 11) = v70 + 1;
    }

    v68 = -1;
  }

  else
  {
    v68 = 0;
    v69 = 1;
  }

  *type = v11 - 96;
  v92 = v68;
  v56(v22, v11 - 96);
  if ((v69 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(type);
  }

  if ((v59 & 1) == 0)
  {
LABEL_116:
    nw::release_if_needed<nw_protocol *>(buf);
  }

LABEL_117:
}

void sub_181D7CFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if ((v11 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va);
  }

  if ((v10 & 1) == 0)
  {
    nw::release_if_needed<nw_protocol *>(va1);
  }

  _Unwind_Resume(a1);
}

uint64_t nw_quic_connection_execute_session_state_update_block(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_options_is_quic_connection(v5))
  {
    updated = _nw_quic_connection_execute_session_state_update_block(v5);
    goto LABEL_3;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "nw_quic_connection_execute_session_state_update_block";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_quic_connection_execute_session_state_update_block";
        v14 = "%{public}s called with null nw_protocol_options_is_quic_connection(options)";
LABEL_17:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "nw_quic_connection_execute_session_state_update_block";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null nw_protocol_options_is_quic_connection(options), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v16)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v20 = "nw_quic_connection_execute_session_state_update_block";
        v14 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), no backtrace";
        goto LABEL_17;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "nw_quic_connection_execute_session_state_update_block";
        v14 = "%{public}s called with null nw_protocol_options_is_quic_connection(options), backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v11)
  {
    free(v11);
  }

  updated = 0;
LABEL_3:

  return updated;
}
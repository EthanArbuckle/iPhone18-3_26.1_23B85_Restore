_BYTE *nw_read_request_list_report(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    do
    {
      if ((v3[22] & 1) == 0)
      {
        if ((v3[22] & 0xA) != 0 || (v5 = v3[9], v3[11] >= v5) && (v5 || v3[10] || v3[17] && !v3[10]))
        {
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          nw_read_request_report(v3, 0);
        }
      }

      v4 = v3[1];

      v3 = v4;
    }

    while (v4);
    do
    {
      if ((v2[176] & 1) == 0)
      {
        break;
      }

      v6 = nw_read_request_list_remove_head(v2);

      v2 = v6;
    }

    while (v6);
  }

  return v2;
}

BOOL nw_flow_process_input_frames(NWConcrete_nw_endpoint_handler *a1, NWConcrete_nw_endpoint_flow *a2, nw_protocol *a3, nw_frame_array_s *a4, int a5, char a6, int a7)
{
  v290 = *MEMORY[0x1E69E9840];
  v234 = a1;
  v253 = a2;
  handle = a3->handle;
  v237 = a4;
  tqh_first = a4->tqh_first;
  v259 = handle;
  if (!a4->tqh_first)
  {
    if ((*(handle + 166) & 0x10) == 0)
    {
      goto LABEL_359;
    }

    v29 = *(handle + 33);
    if (!v29)
    {
      v178 = *(handle + 32);
      if (v178 && nw_dictionary_get_count(v178))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v278 = __Block_byref_object_copy__17198;
        *v279 = __Block_byref_object_dispose__17199;
        *&v279[8] = 0;
        memset(out, 0, sizeof(out));
        v179 = *(handle + 32);
        v274[0] = MEMORY[0x1E69E9820];
        v274[1] = 3221225472;
        v274[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke;
        v274[3] = &unk_1E6A34C68;
        v274[4] = buf;
        v274[5] = out;
        nw_dictionary_apply(v179, v274);
        nw_dictionary_set_value(*(handle + 32), out, 0);

        if (nw_content_context_get_is_final(*(*&buf[8] + 40)))
        {
          *(handle + 166) |= 0x80u;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {

        *(handle + 166) |= 0x80u;
      }

      goto LABEL_314;
    }

    v30 = handle;
    v31 = v29;
    v32 = *(v30 + 33);
    *(v30 + 33) = 0;

    v33 = v31;
    v34 = v33;
    if (v33 == &__block_literal_global_44658 || v33 == &__block_literal_global_10_44685)
    {

      goto LABEL_38;
    }

    if (v33 == &__block_literal_global_6_44667 || v33 == &__block_literal_global_8_44676)
    {
    }

    else
    {
      v37 = v33[118];

      if ((v37 & 1) == 0)
      {
LABEL_38:

        handle = v259;
LABEL_314:
        request_list_report = nw_read_request_list_report(*(handle + 27));
        v186 = *(handle + 27);
        *(handle + 27) = request_list_report;
        goto LABEL_358;
      }
    }

    *(v259 + 166) |= 0x80u;
    goto LABEL_38;
  }

  is_inline = nw_context_is_inline(*(handle + 23));
  v11 = handle;
  v12 = a4->tqh_first;
  v13 = v12;
  v273 = 0;
  v14 = v11[27];
  if (v14)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || (*(v12 + 102) & 1) != 0)
  {
LABEL_19:
    LODWORD(v17) = 0;
    alloc = 0;
    goto LABEL_20;
  }

  alloc = 0;
  LODWORD(v17) = 0;
  if (!*(v12 + 13) && (a5 & 1) == 0)
  {
    v18 = v14;
    v19 = v18[17];

    if (v19 != 3)
    {
      *buf = 0;
      nw_frame_array_get_frame_count(v237, 1, buf);
      v20 = *buf;
      next_max_size = nw_read_request_get_next_max_size(*(v259 + 27));
      if (next_max_size)
      {
        if (v20 >= next_max_size)
        {
          v17 = next_max_size;
        }

        else
        {
          v17 = v20;
        }

        if ((is_inline & 1) != 0 || (buffer_manager_with_context = nw_frame_get_buffer_manager_with_context(*(v259 + 23), v17)) == 0 || (v23 = buffer_manager_with_context, sized_typed = nw_mem_buffer_allocate_sized_typed(v17, 0x100004077774924uLL, buffer_manager_with_context), (v273 = sized_typed) == 0) || (v25 = sized_typed, v26 = nw_queue_copy_current_workloop(), destructor[0] = MEMORY[0x1E69E9820], destructor[1] = 3221225472, destructor[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_2, destructor[3] = &__block_descriptor_48_e5_v8__0l, destructor[4] = v23, destructor[5] = v273, alloc = dispatch_data_create(v25, v17, v26, destructor), v26, !alloc))
        {
          alloc = dispatch_data_create_alloc();
        }

        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v27 = *(v259 + 27);
  if (v27)
  {
    v28 = v13 == 0;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    data1 = 0;
    goto LABEL_340;
  }

  v244 = v17;
  data1 = 0;
  v256 = 0;
  v228 = *MEMORY[0x1E69E9648];
  v38 = v13;
  while (1)
  {
    v39 = *(v38 + 32);
    v242 = (v38 + 32);
    if (!v39 && !*(v38 + 40))
    {
      v39 = 0;
    }

    v40 = v259;
    v251 = v39;
    if (!*(v38 + 112) || (*(v38 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v38, *(v38 + 88)))
    {
      v43 = 0;
      buffer = 0;
    }

    else
    {
      v42 = *(v38 + 52);
      v41 = *(v38 + 56);
      v43 = v42 ? v42 - (v41 + *(v38 + 60)) : 0;
      buffer = (*(v38 + 112) + v41);
    }

    memset(uu, 0, sizeof(uu));
    memset(out, 0, sizeof(out));
    v44 = *(v38 + 204);
    v45 = *(v38 + 64);
    v254 = v43;
    if (v45)
    {
      v248 = (*(v45 + 66) >> 6) & 1;
      if (*(v45 + 48))
      {
        *uu = *(v45 + 16);
        goto LABEL_58;
      }
    }

    else
    {
      v248 = 0;
    }

    if ((v44 & 0x80000000) == 0)
    {
      v260 = 0;
      v46 = *(v259 + 27);
      if (!v46)
      {
        break;
      }

      goto LABEL_87;
    }

LABEL_58:
    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v261 = gconnectionLogObj;
      if (os_log_type_enabled(v261, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v234);
        v139 = nw_endpoint_handler_dry_run_string(v234);
        v140 = nw_endpoint_handler_copy_endpoint(v234);
        logging_description = nw_endpoint_get_logging_description(v140);
        v142 = nw_endpoint_handler_state_string(v234);
        v143 = nw_endpoint_handler_mode_string(v234);
        v144 = nw_endpoint_handler_copy_current_path(v234);
        v145 = v144;
        *buf = 136448770;
        v146 = ", complete";
        if (!v248)
        {
          v146 = "";
        }

        *&buf[4] = "nw_flow_process_input_frames";
        v147 = ", wake_packet";
        if (v44 >= 0)
        {
          v147 = "";
        }

        *&buf[12] = 2082;
        *&buf[14] = id_string;
        *&buf[22] = 2082;
        v278 = v139;
        *v279 = 2082;
        *&v279[2] = logging_description;
        *&v279[10] = 2082;
        *&v279[12] = v142;
        v280 = 2082;
        v281 = v143;
        v282 = 2114;
        v283 = v144;
        v284 = 1042;
        *v285 = 16;
        *&v285[4] = 2098;
        *&v285[6] = uu;
        *&v285[14] = 2080;
        *&v285[16] = v146;
        *&v285[24] = 2080;
        *&v285[26] = v147;
        _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Found frame with context %{public,uuid_t}.16P%s%s", buf, 0x6Cu);
      }

      v40 = v259;
    }

    if ((a6 & 1) != 0 || v253->multiplexed_message_definition)
    {
      v47 = *(v40 + 33);
      if (v47)
      {
        goto LABEL_62;
      }

      v49 = nw_content_context_create(*(*(v40 + 4) + 16));
      nw_content_context_set_is_final(v49, 1);
      objc_storeStrong(v40 + 33, v49);
    }

    else
    {
      if (!*(v40 + 32))
      {
        v60 = nw_dictionary_create();
        v61 = *(v40 + 32);
        *(v40 + 32) = v60;

        v40 = v259;
      }

      uuid_unparse_upper(uu, out);
      v47 = nw_dictionary_copy_value(*(v40 + 32), out);
      if (v47)
      {
LABEL_62:
        v48 = v47;
        v49 = v48;
        goto LABEL_65;
      }

      v49 = nw_content_context_create(*(*(v40 + 4) + 16));
      nw_dictionary_set_value(*(v40 + 32), out, v49);
    }

    v48 = 0;
LABEL_65:

    v268[0] = MEMORY[0x1E69E9820];
    v268[1] = 3221225472;
    v268[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_79;
    v268[3] = &unk_1E6A2DBB8;
    v271 = v259;
    v269 = v253;
    v260 = v49;
    v270 = v260;
    nw_frame_foreach_protocol_metadata(v38, a5, v268);
    if (v44 >= 0)
    {
      goto LABEL_86;
    }

    v50 = v260;
    v51 = v50;
    if (v50)
    {
      if (v50 != &__block_literal_global_10_44685 && v50 != &__block_literal_global_8_44676 && v50 != &__block_literal_global_6_44667 && v50 != &__block_literal_global_44658)
      {
        BYTE6(v50[14].isa) |= 0x80u;
      }

      goto LABEL_72;
    }

    v156 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_content_context_set_is_wake_packet";
    v157 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v275 = 0;
    if (__nwlog_fault(v157, &type, &v275))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v158 = __nwlog_obj();
        v159 = type;
        if (os_log_type_enabled(v158, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v158, v159, "%{public}s called with null context", buf, 0xCu);
        }
      }

      else if (v275 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v158 = __nwlog_obj();
        v168 = type;
        v169 = os_log_type_enabled(v158, type);
        if (backtrace_string)
        {
          if (v169)
          {
            *buf = 136446466;
            *&buf[4] = "nw_content_context_set_is_wake_packet";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v158, v168, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_293;
        }

        if (v169)
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v158, v168, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v158 = __nwlog_obj();
        v170 = type;
        if (os_log_type_enabled(v158, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_content_context_set_is_wake_packet";
          _os_log_impl(&dword_181A37000, v158, v170, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_293:
    if (v157)
    {
      free(v157);
    }

LABEL_72:

    minimize_logging = nw_endpoint_handler_get_minimize_logging(v234);
    logging_disabled = nw_endpoint_handler_get_logging_disabled(v234);
    if (!minimize_logging)
    {
      if (logging_disabled)
      {
        goto LABEL_86;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v54 = gconnectionLogObj;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = nw_endpoint_handler_get_id_string(v234);
        v56 = nw_endpoint_handler_dry_run_string(v234);
        v57 = nw_endpoint_handler_copy_endpoint(v234);
        v58 = v57;
        if (v57)
        {
          v59 = _nw_endpoint_get_logging_description(v57);
        }

        else
        {
          v59 = "<NULL>";
        }

        v62 = nw_endpoint_handler_state_string(v234);
        v63 = nw_endpoint_handler_mode_string(v234);
        v64 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136447746;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v55;
        *&buf[22] = 2082;
        v278 = v56;
        *v279 = 2082;
        *&v279[2] = v59;
        *&v279[10] = 2082;
        *&v279[12] = v62;
        v280 = 2082;
        v281 = v63;
        v282 = 2114;
        v283 = v64;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_INFO, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] content_context is wake packet", buf, 0x48u);
      }

      goto LABEL_85;
    }

    if ((logging_disabled & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v54 = gconnectionLogObj;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v160 = nw_endpoint_handler_get_id_string(v234);
        v161 = nw_endpoint_handler_dry_run_string(v234);
        v162 = nw_endpoint_handler_copy_endpoint(v234);
        v163 = nw_endpoint_get_logging_description(v162);
        v164 = nw_endpoint_handler_state_string(v234);
        v165 = nw_endpoint_handler_mode_string(v234);
        v166 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136447746;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v160;
        *&buf[22] = 2082;
        v278 = v161;
        *v279 = 2082;
        *&v279[2] = v163;
        *&v279[10] = 2082;
        *&v279[12] = v164;
        v280 = 2082;
        v281 = v165;
        v282 = 2114;
        v283 = v166;
        _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] content_context is wake packet", buf, 0x48u);
      }

LABEL_85:
    }

LABEL_86:

    v40 = v259;
    v43 = v254;
    v46 = *(v259 + 27);
    if (!v46)
    {
      break;
    }

LABEL_87:
    if (v43)
    {
      break;
    }

    if (!alloc || !v251 || v256 >= v244)
    {
      if (alloc)
      {
        v116 = data1;
LABEL_204:
        if (dispatch_data_get_size(alloc))
        {
          v118 = *(v259 + 40);
          if (v118 && (*(v253 + 36) & 1) != 0)
          {
            *(v259 + 40) = 0;

            last_error = v253->last_error;
            v253->last_error = 0;

            *(v253 + 36) &= ~1u;
          }

          v117 = alloc;
        }

        else
        {

          v117 = 0;
        }
      }

      else
      {
        v116 = 0;
        v117 = 0;
        alloc = data1;
        if (data1)
        {
          goto LABEL_204;
        }
      }

      v120 = v248;
      if (!v260)
      {
        v120 = 0;
      }

      if (v120 == 1)
      {
        v121 = v260;
        if (v121 == &__block_literal_global_44658 || v121 == &__block_literal_global_10_44685)
        {
        }

        else if (v121 == &__block_literal_global_6_44667 || v121 == &__block_literal_global_8_44676)
        {

LABEL_218:
          *(v259 + 166) |= 0x80u;
        }

        else
        {
          v122 = (BYTE6(v121[14].isa) & 1) == 0;

          if (!v122)
          {
            goto LABEL_218;
          }
        }
      }

      v65 = 0;
      alloc = 0;
      data1 = v116;
LABEL_220:
      v40 = v259;
      v43 = v254;
LABEL_221:
      if (v65 < v43)
      {
        goto LABEL_295;
      }

      goto LABEL_222;
    }

    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v148 = gconnectionLogObj;
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        v149 = nw_endpoint_handler_get_id_string(v234);
        v150 = nw_endpoint_handler_dry_run_string(v234);
        v151 = nw_endpoint_handler_copy_endpoint(v234);
        v152 = nw_endpoint_get_logging_description(v151);
        v153 = nw_endpoint_handler_state_string(v234);
        v154 = nw_endpoint_handler_mode_string(v234);
        v155 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136449026;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v149;
        *&buf[22] = 2082;
        v278 = v150;
        *v279 = 2082;
        *&v279[2] = v152;
        *&v279[10] = 2082;
        *&v279[12] = v153;
        v280 = 2082;
        v281 = v154;
        v282 = 2114;
        v283 = v155;
        v284 = 2048;
        *v285 = v38;
        *&v285[8] = 2112;
        *&v285[10] = alloc;
        *&v285[18] = 2048;
        *&v285[20] = v251;
        *&v285[28] = 1024;
        *&v285[30] = v256;
        v286 = 1024;
        v287 = v244;
        _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Skipping 0 length frame %p, aggregated_data %@, next_frame %p, aggregrated_amount_read %u, aggregated_data_length %u", buf, 0x72u);
      }

      v65 = 0;
      goto LABEL_220;
    }

LABEL_222:
    if (v260 && v248)
    {
      v123 = *(v40 + 33);
      if (v123 == v260)
      {
        *(v40 + 33) = 0;
      }

      else
      {
        v124 = *(v40 + 32);
        if (v124)
        {
          nw_dictionary_set_value(v124, out, 0);
        }
      }
    }

    v125 = *(v38 + 32);
    v126 = *(v38 + 40);
    v127 = (v125 + 40);
    if (!v125)
    {
      v127 = v237 + 1;
    }

    *v127 = v126;
    *v126 = v125;
    *v242 = 0;
    *(v38 + 40) = 0;
    nw_frame_finalize(v38);
    v13 = v251;

    v27 = *(v259 + 27);
    if (v27)
    {
      v38 = v13;
      if (v13)
      {
        continue;
      }
    }

    goto LABEL_340;
  }

  v65 = 0;
  if (!v46 || !v43)
  {
    goto LABEL_221;
  }

  v65 = 0;
  v66 = a5;
  if (!v251)
  {
    v66 = 1;
  }

  v235 = v66;
  v68 = v260 == &__block_literal_global_44658 || v260 == &__block_literal_global_10_44685;
  v240 = v68;
  v70 = v260 == &__block_literal_global_6_44667 || v260 == &__block_literal_global_8_44676;
  v238 = v70;
  v71 = v43;
  while (2)
  {
    v72 = nw_read_request_get_next_max_size(v46);
    v73 = v72;
    if (!v72)
    {
      goto LABEL_221;
    }

    v74 = v43 - v65;
    if (v43 - v65 >= v72)
    {
      v75 = v72;
    }

    else
    {
      v75 = v74;
    }

    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v104 = gconnectionLogObj;
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        log = v104;
        v224 = nw_endpoint_handler_get_id_string(v234);
        v222 = nw_endpoint_handler_dry_run_string(v234);
        v231 = alloc;
        v105 = nw_endpoint_handler_copy_endpoint(v234);
        v106 = nw_endpoint_get_logging_description(v105);
        v221 = nw_endpoint_handler_state_string(v234);
        v107 = nw_endpoint_handler_mode_string(v234);
        v108 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136448770;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v224;
        *&buf[22] = 2082;
        v278 = v222;
        *v279 = 2082;
        *&v279[2] = v106;
        *&v279[10] = 2082;
        *&v279[12] = v221;
        v280 = 2082;
        v281 = v107;
        v282 = 2114;
        v283 = v108;
        v284 = 1024;
        *v285 = v75;
        *&v285[4] = 1024;
        *&v285[6] = v254;
        *&v285[10] = 1024;
        *&v285[12] = v73;
        *&v285[16] = 1024;
        *&v285[18] = v65;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Reading %u bytes out of a %u byte frame (max %u, %u so far)", buf, 0x60u);

        alloc = v231;
        v104 = log;
      }

      v40 = v259;
    }

    if (!alloc)
    {
      if (nw_frame_buffer_used_malloc(v38) && nw_frame_get_buffer(v38, 0) == buffer && !v65 && v75 == v254)
      {
        v77 = dispatch_data_create(buffer, v71, 0, v228);
        v78 = v77;
        if (data1 && v77)
        {
          v79 = data1;
          concat = dispatch_data_create_concat(data1, v77);
        }

        else
        {
          concat = v77;
          v79 = data1;
        }

        nw_frame_will_free_buffer_externally(v38);
LABEL_152:
        v76 = v71;
        data1 = concat;
LABEL_153:
        v40 = v259;
        goto LABEL_154;
      }

      if (nw_frame_buffer_used_manager(v38) && nw_frame_get_buffer(v38, 0) == buffer && !v65 && v75 == v254 && !((nw_frame_get_finalizer_context(v38) == 0) | is_inline & 1))
      {
        manager = nw_frame_buffer_get_manager(v38);
        nw_frame_will_free_buffer_externally(v38);
        v92 = nw_queue_copy_current_workloop();
        v267[0] = MEMORY[0x1E69E9820];
        v267[1] = 3221225472;
        v267[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_81;
        v267[3] = &__block_descriptor_48_e5_v8__0l;
        v267[4] = manager;
        v267[5] = buffer;
        v93 = dispatch_data_create(buffer, v71, v92, v267);

        if (data1 && v93)
        {
          v94 = data1;
          concat = dispatch_data_create_concat(data1, v93);
        }

        else
        {
          concat = v93;
          v94 = data1;
        }

        goto LABEL_152;
      }

      if (v65 || v75 != v254)
      {
        v82 = &buffer[v65];
        *buf = 0;
        if (data1)
        {
          v83 = dispatch_data_create_alloc();
          memcpy(*buf, v82, v75);
          v84 = dispatch_data_create_concat(data1, v83);

          v76 = v75;
          data1 = v84;
        }

        else
        {
          data1 = dispatch_data_create_alloc();
          memcpy(*buf, v82, v75);
          v76 = v75;
        }

        goto LABEL_153;
      }

      if (is_inline)
      {
        *buf = 0;
        v81 = v71;
      }

      else
      {
        v85 = nw_frame_get_buffer_manager_with_context(*(v40 + 23), v254);
        v81 = v71;
        v86 = nw_mem_buffer_allocate_sized_typed(v71, 0x100004077774924uLL, v85);
        *buf = v86;
        if (v86)
        {
          v87 = v86;
          v88 = nw_queue_copy_current_workloop();
          v266[0] = MEMORY[0x1E69E9820];
          v266[1] = 3221225472;
          v266[2] = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_2_82;
          v266[3] = &__block_descriptor_48_e5_v8__0l;
          v266[4] = v85;
          v266[5] = *buf;
          v89 = dispatch_data_create(v87, v71, v88, v266);

          v81 = v71;
LABEL_140:
          memcpy(*buf, buffer, v81);
          if (data1)
          {
            v90 = dispatch_data_create_concat(data1, v89);

            alloc = 0;
            data1 = v90;
          }

          else
          {
            data1 = v89;
            alloc = 0;
          }

          v76 = v71;
          goto LABEL_153;
        }
      }

      v89 = dispatch_data_create_alloc();
      goto LABEL_140;
    }

    if (v244 < v256 || v75 > v244 - v256)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v128 = gLogObj;
      *buf = 136446978;
      *&buf[4] = "nw_flow_process_input_frames";
      *&buf[12] = 1024;
      *&buf[14] = v75;
      *&buf[18] = 1024;
      *&buf[20] = v244;
      LOWORD(v278) = 1024;
      *(&v278 + 2) = v256;
      v129 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v275 = 0;
      if (!__nwlog_fault(v129, &type, &v275))
      {
        goto LABEL_252;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v130 = gLogObj;
        v131 = type;
        if (os_log_type_enabled(v130, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v75;
          *&buf[18] = 1024;
          *&buf[20] = v244;
          LOWORD(v278) = 1024;
          *(&v278 + 2) = v256;
          _os_log_impl(&dword_181A37000, v130, v131, "%{public}s Trying to write beyond buffer: %u > %u - %u", buf, 0x1Eu);
        }

        goto LABEL_251;
      }

      if (v275 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v130 = gLogObj;
        v136 = type;
        if (os_log_type_enabled(v130, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v75;
          *&buf[18] = 1024;
          *&buf[20] = v244;
          LOWORD(v278) = 1024;
          *(&v278 + 2) = v256;
          _os_log_impl(&dword_181A37000, v130, v136, "%{public}s Trying to write beyond buffer: %u > %u - %u, backtrace limit exceeded", buf, 0x1Eu);
        }

LABEL_251:

LABEL_252:
        if (!v129)
        {
          goto LABEL_220;
        }

LABEL_253:
        free(v129);
        goto LABEL_220;
      }

      v132 = __nw_create_backtrace_string();
      if (!v132)
      {
        v130 = __nwlog_obj();
        v137 = type;
        if (os_log_type_enabled(v130, type))
        {
          *buf = 136446978;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 1024;
          *&buf[14] = v75;
          *&buf[18] = 1024;
          *&buf[20] = v244;
          LOWORD(v278) = 1024;
          *(&v278 + 2) = v256;
          _os_log_impl(&dword_181A37000, v130, v137, "%{public}s Trying to write beyond buffer: %u > %u - %u, no backtrace", buf, 0x1Eu);
        }

        goto LABEL_251;
      }

      v133 = v132;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v134 = gLogObj;
      v135 = type;
      if (os_log_type_enabled(v134, type))
      {
        *buf = 136447234;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 1024;
        *&buf[14] = v75;
        *&buf[18] = 1024;
        *&buf[20] = v244;
        LOWORD(v278) = 1024;
        *(&v278 + 2) = v256;
        HIWORD(v278) = 2082;
        *v279 = v133;
        _os_log_impl(&dword_181A37000, v134, v135, "%{public}s Trying to write beyond buffer: %u > %u - %u, dumping backtrace:%{public}s", buf, 0x28u);
      }

      free(v133);
      if (v129)
      {
        goto LABEL_253;
      }

      goto LABEL_220;
    }

    memcpy(&v273[v256], &buffer[v65], v75);
    v76 = v75;
LABEL_154:
    v253->received_application_byte_count += v76;
    if ((*(v253 + 34) & 0x20) == 0)
    {
      nw_context_count_input_bytes(*(v40 + 23), v76);
    }

    v65 += v75;
    v256 += v75;
    if (alloc)
    {
      v43 = v254;
      if (v251 && v256 < v244)
      {
        goto LABEL_221;
      }

LABEL_163:
      if (v65 >= v43)
      {
        v96 = v248;
      }

      else
      {
        v96 = 0;
      }

      if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v109 = gconnectionLogObj;
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          loga = v109;
          v225 = nw_endpoint_handler_get_id_string(v234);
          v110 = nw_endpoint_handler_dry_run_string(v234);
          v111 = alloc;
          v112 = nw_endpoint_handler_copy_endpoint(v234);
          v113 = nw_endpoint_get_logging_description(v112);
          v223 = nw_endpoint_handler_state_string(v234);
          v114 = nw_endpoint_handler_mode_string(v234);
          v115 = nw_endpoint_handler_copy_current_path(v234);
          *buf = 136448770;
          *&buf[4] = "nw_flow_process_input_frames";
          *&buf[12] = 2082;
          *&buf[14] = v225;
          *&buf[22] = 2082;
          v278 = v110;
          *v279 = 2082;
          *&v279[2] = v113;
          *&v279[10] = 2082;
          *&v279[12] = v223;
          v280 = 2082;
          v281 = v114;
          v282 = 2114;
          v283 = v115;
          v284 = 1024;
          *v285 = v96;
          *&v285[4] = 1024;
          *&v285[6] = v248;
          *&v285[10] = 1024;
          *&v285[12] = v65;
          *&v285[16] = 1024;
          *&v285[18] = v254;
          _os_log_impl(&dword_181A37000, loga, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] mark_complete: %u, context_complete: %u, amount_read: %u, frame_length: %u", buf, 0x60u);

          alloc = v111;
          v109 = loga;
        }

        v40 = v259;
      }

      v97 = *(v40 + 40);
      if (v97 && (*(v253 + 36) & 1) != 0)
      {
        *(v40 + 40) = 0;

        v98 = v253->last_error;
        v253->last_error = 0;

        *(v253 + 36) &= ~1u;
        v40 = v259;
      }

      if (alloc)
      {
        request_receive = nw_read_request_receive(*(v40 + 27), alloc, v260, v96, *(v40 + 40));
        v100 = alloc;
        goto LABEL_172;
      }

      if (data1)
      {
        request_receive = nw_read_request_receive(*(v40 + 27), data1, v260, v96, *(v40 + 40));
        v100 = data1;
        data1 = 0;
LABEL_172:
      }

      else
      {
        data1 = 0;
      }

      if (v260)
      {
        v101 = v96;
      }

      else
      {
        v101 = 0;
      }

      if (v101 == 1)
      {
        v102 = v260;
        if (v240)
        {
        }

        else if (v238)
        {

LABEL_182:
          *(v259 + 166) |= 0x80u;
        }

        else
        {
          v103 = (BYTE6(v260[14].isa) & 1) == 0;

          if (!v103)
          {
            goto LABEL_182;
          }
        }
      }

      alloc = 0;
      v40 = v259;
      v46 = *(v259 + 27);
      v43 = v254;
      if (!v46 || v65 >= v254)
      {
        goto LABEL_221;
      }

      continue;
    }

    break;
  }

  v95 = v235;
  if (v74 >= v73)
  {
    v95 = 1;
  }

  v43 = v254;
  if (v95 == 1)
  {
    goto LABEL_163;
  }

  alloc = 0;
  if (v65 >= v254)
  {
    goto LABEL_222;
  }

LABEL_295:
  v171 = nw_endpoint_handler_get_logging_disabled(v234);
  if (v260)
  {
    if ((v171 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v173 = gconnectionLogObj;
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        v174 = nw_endpoint_handler_get_id_string(v234);
        v175 = nw_endpoint_handler_dry_run_string(v234);
        v176 = nw_endpoint_handler_copy_endpoint(v234);
        v177 = v176;
        if (v176)
        {
          v257 = _nw_endpoint_get_logging_description(v176);
        }

        else
        {
          v257 = "<NULL>";
        }

        v187 = nw_endpoint_handler_state_string(v234);
        v188 = nw_endpoint_handler_mode_string(v234);
        v189 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136448514;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v174;
        *&buf[22] = 2082;
        v278 = v175;
        *v279 = 2082;
        *&v279[2] = v257;
        *&v279[10] = 2082;
        *&v279[12] = v187;
        v280 = 2082;
        v281 = v188;
        v282 = 2114;
        v283 = v189;
        v284 = 1024;
        *v285 = v65;
        *&v285[4] = 1024;
        *&v285[6] = v254;
        *&v285[10] = 2082;
        *&v285[12] = out;
        _os_log_impl(&dword_181A37000, v173, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not read entire frame (requests only took %u, had %u), saving for context %{public}s", buf, 0x5Eu);
      }
    }

    nw_frame_claim(v38, v172, v65, 0);
    if (a7)
    {
      do
      {
        v191 = (v38 + 32);
        v190 = *(v38 + 32);
        if (!v190 && !*(v38 + 40))
        {
          v190 = 0;
        }

        v192 = v190;

        if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v255 = gconnectionLogObj;
          if (os_log_type_enabled(v255, OS_LOG_TYPE_DEBUG))
          {
            v249 = nw_endpoint_handler_get_id_string(v234);
            buffera = nw_endpoint_handler_dry_run_string(v234);
            v245 = nw_endpoint_handler_copy_endpoint(v234);
            v243 = nw_endpoint_get_logging_description(v245);
            v241 = nw_endpoint_handler_state_string(v234);
            v239 = nw_endpoint_handler_mode_string(v234);
            v252 = nw_endpoint_handler_copy_current_path(v234);
            v197 = nw_frame_unclaimed_length(v38);
            *buf = 136448514;
            *&buf[4] = "nw_flow_process_input_frames";
            *&buf[12] = 2082;
            *&buf[14] = v249;
            *&buf[22] = 2082;
            v278 = buffera;
            *v279 = 2082;
            *&v279[2] = v243;
            *&v279[10] = 2082;
            *&v279[12] = v241;
            v280 = 2082;
            v281 = v239;
            v282 = 2114;
            v283 = v252;
            v284 = 2048;
            *v285 = v38;
            *&v285[8] = 1024;
            *&v285[10] = v197;
            *&v285[14] = 2082;
            *&v285[16] = out;
            _os_log_impl(&dword_181A37000, v255, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Saving frame %p of length %u for context %{public}s", buf, 0x62u);
          }
        }

        v193 = *(v38 + 32);
        v194 = *(v38 + 40);
        v195 = (v193 + 40);
        if (!v193)
        {
          v195 = v237 + 1;
        }

        *v195 = v194;
        *v194 = v193;
        *v191 = 0;
        *(v38 + 40) = 0;
        v196 = *(v259 + 35);
        *(v38 + 40) = v196;
        *v196 = v38;
        *(v259 + 35) = v191;
        v251 = v192;

        v38 = v251;
      }

      while (v251);
      v251 = 0;
    }
  }

  else
  {
    if ((v171 & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v180 = gconnectionLogObj;
      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
      {
        v181 = nw_endpoint_handler_get_id_string(v234);
        v182 = nw_endpoint_handler_dry_run_string(v234);
        v183 = nw_endpoint_handler_copy_endpoint(v234);
        v184 = v183;
        if (v183)
        {
          v258 = _nw_endpoint_get_logging_description(v183);
        }

        else
        {
          v258 = "<NULL>";
        }

        v198 = nw_endpoint_handler_state_string(v234);
        v199 = nw_endpoint_handler_mode_string(v234);
        v200 = nw_endpoint_handler_copy_current_path(v234);
        *buf = 136448258;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v181;
        *&buf[22] = 2082;
        v278 = v182;
        *v279 = 2082;
        *&v279[2] = v258;
        *&v279[10] = 2082;
        *&v279[12] = v198;
        v280 = 2082;
        v281 = v199;
        v282 = 2114;
        v283 = v200;
        v284 = 1024;
        *v285 = v65;
        *&v285[4] = 1024;
        *&v285[6] = v254;
        _os_log_impl(&dword_181A37000, v180, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Could not read entire frame (requests only took %u, had %u)", buf, 0x54u);
      }
    }

    v201 = *(v38 + 32);
    v202 = *(v38 + 40);
    v203 = (v201 + 40);
    if (!v201)
    {
      v203 = v237 + 1;
    }

    *v203 = v202;
    *v202 = v201;
    *v242 = 0;
    *(v38 + 40) = 0;
    nw_frame_finalize(v38);
  }

  v27 = *(v259 + 27);
  v13 = v38;
LABEL_340:
  v204 = nw_read_request_list_report(v27);
  v205 = *(v259 + 27);
  *(v259 + 27) = v204;

  if (a7 && *v237)
  {
    *out = 0;
    *&out[8] = out;
    *&out[16] = 0x2020000000;
    *&out[24] = 0;
    v262[0] = MEMORY[0x1E69E9820];
    v262[1] = 3221225472;
    v263 = ___ZL28nw_flow_process_input_framesP30NWConcrete_nw_endpoint_handlerP27NWConcrete_nw_endpoint_flowP11nw_protocolP16nw_frame_array_sbbb_block_invoke_83;
    v264 = &unk_1E6A2DBE0;
    v265 = out;
    do
    {
      v206 = *v237;
      if (!*v237)
      {
        break;
      }

      v207 = *(v206 + 32);
      v208 = *(v206 + 40);
      v209 = (v207 + 40);
      if (!v207)
      {
        v209 = v237 + 1;
      }

      *v209 = v208;
      *v208 = v207;
      *(v206 + 32) = 0;
      *(v206 + 40) = 0;
    }

    while (((v263)(v262) & 1) != 0);
    if ((nw_endpoint_handler_get_logging_disabled(v234) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v210 = gconnectionLogObj;
      if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
      {
        v211 = nw_endpoint_handler_get_id_string(v234);
        v212 = nw_endpoint_handler_dry_run_string(v234);
        v213 = nw_endpoint_handler_copy_endpoint(v234);
        v214 = v213;
        if (v213)
        {
          v215 = _nw_endpoint_get_logging_description(v213);
        }

        else
        {
          v215 = "<NULL>";
        }

        v216 = nw_endpoint_handler_state_string(v234);
        v217 = nw_endpoint_handler_mode_string(v234);
        v218 = nw_endpoint_handler_copy_current_path(v234);
        v219 = *(*&out[8] + 24);
        *buf = 136448002;
        *&buf[4] = "nw_flow_process_input_frames";
        *&buf[12] = 2082;
        *&buf[14] = v211;
        *&buf[22] = 2082;
        v278 = v212;
        *v279 = 2082;
        *&v279[2] = v215;
        *&v279[10] = 2082;
        *&v279[12] = v216;
        v280 = 2082;
        v281 = v217;
        v282 = 2114;
        v283 = v218;
        v284 = 1024;
        *v285 = v219;
        _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Failed to use %u frames, marking as failed", buf, 0x4Eu);
      }
    }

    _Block_object_dispose(out, 8);
  }

  v186 = data1;
LABEL_358:

LABEL_359:
  return tqh_first != 0;
}

NSObject *nw_read_request_receive(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  obj = a3;
  v10 = a3;
  v92 = a5;
  v11 = a5;
  v12 = v11;
  if (v8)
  {
    v13 = 1;
    v91 = v11;
    while (1)
    {
      v14 = v8;
      v15 = v14;
      if ((v14[22] & 1) == 0)
      {
        break;
      }

LABEL_161:
      v8 = v15[1];

      if (!v8)
      {
        goto LABEL_165;
      }
    }

    v17 = v14 + 17;
    v16 = v14[17];
    if (v16 != v10 && ((v16 == 0) & v13) == 0)
    {
LABEL_144:
      if (!v10 || *v17 == v10)
      {
        v84 = *(v15 + 17);
        v85 = v84 != 4 && v9 == 0;
        if (v85 && (a4 & 1) != 0 || v84 == 4 && (v15[10] <= v15[11] || a4))
        {
          *(v15 + 176) |= 2u;
          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }
        }
      }

      v13 |= v9 != 0;
      goto LABEL_161;
    }

    objc_storeStrong(v14 + 17, obj);
    if (v12)
    {
      objc_storeStrong(v15 + 19, v92);
    }

    if (!v9 || (size = dispatch_data_get_size(v9)) == 0)
    {
LABEL_143:
      v13 = 0;
      goto LABEL_144;
    }

    v20 = *(v15 + 17);
    if (v20 - 1 >= 2)
    {
      if (v20 == 3)
      {
        if (v15[11] < v15[10])
        {
          v78 = v15[20];
          if (v78)
          {
            _nw_array_append(v78, v9);
          }

          v79 = v15[21];
          if (v79 && v10)
          {
            _nw_array_append(v79, v10);
          }

          v15[11] = v15[11] + 1;

          v80 = v15[17];
          v15[17] = 0;

          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled != 1)
          {
            subrange = 0;
            goto LABEL_139;
          }

          if (!kdebug_is_enabled())
          {
            goto LABEL_126;
          }

          v9 = 0;
          kdebug_trace();
        }
      }

      else if (v20 == 4)
      {
        v110 = 0;
        v111 = &v110;
        v112 = 0x3032000000;
        v113 = __Block_byref_object_copy__55438;
        v114 = __Block_byref_object_dispose__55439;
        v21 = v9;
        v115 = v21;
        v23 = v15[10];
        v22 = v15[11];
        v24 = v23 >= v22;
        v25 = v23 - v22;
        if (v25 == 0 || !v24)
        {
LABEL_125:

          _Block_object_dispose(&v110, 8);
LABEL_126:
          v9 = 0;
          goto LABEL_137;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = &v117;
        v117 = 0;
        v118 = &v117;
        v119 = 0x2020000000;
        LOBYTE(v120) = 0;
        v94 = MEMORY[0x1E69E9820];
        while (1)
        {
          v103 = 0;
          v104 = &v103;
          v105 = 0x2020000000;
          v106 = 0;
          *(v27 + 24) = 0;
          v28 = *(v111 + 40);
          v29 = dispatch_data_get_size(v28);
          v30 = v29;
          applier[0] = v94;
          if (v26 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v26;
          }

          applier[1] = 3221225472;
          applier[2] = __nw_read_request_receive_block_invoke;
          applier[3] = &unk_1E6A35860;
          v102 = v31;
          v32 = v15;
          v97 = v32;
          v98 = &v110;
          v99 = &v103;
          v100 = &v117;
          v101 = v30;
          dispatch_data_apply(v28, applier);
          v33 = v15[11] + *(v104 + 6);
          v15[11] = v33;
          if (!v33 || (v15[22] & 4) != 0)
          {
            goto LABEL_64;
          }

          v35 = v32;
          v36 = v15[7];
          if (!v36)
          {
            v59 = __nwlog_obj();
            *buf = 136446210;
            v125 = "nw_read_request_start_file_updates";
            v60 = _os_log_send_and_compose_impl();

            LOBYTE(location) = 16;
            type = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v60, &location, &type))
            {
              if (location == 17)
              {
                v61 = __nwlog_obj();
                v62 = location;
                if (os_log_type_enabled(v61, location))
                {
                  *buf = 136446210;
                  v125 = "nw_read_request_start_file_updates";
                  _os_log_impl(&dword_181A37000, v61, v62, "%{public}s called with null request->connection", buf, 0xCu);
                }

                goto LABEL_87;
              }

              if (type == OS_LOG_TYPE_INFO)
              {
                backtrace_string = __nw_create_backtrace_string();
                v64 = __nwlog_obj();
                v65 = location;
                loga = v64;
                v66 = os_log_type_enabled(v64, location);
                if (backtrace_string)
                {
                  if (v66)
                  {
                    *buf = 136446466;
                    v125 = "nw_read_request_start_file_updates";
                    v126 = 2082;
                    *v127 = backtrace_string;
                    _os_log_impl(&dword_181A37000, loga, v65, "%{public}s called with null request->connection, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  v12 = v91;
                  free(backtrace_string);
                }

                else
                {
                  if (v66)
                  {
                    *buf = 136446210;
                    v125 = "nw_read_request_start_file_updates";
                    _os_log_impl(&dword_181A37000, loga, v65, "%{public}s called with null request->connection, no backtrace", buf, 0xCu);
                  }

                  v12 = v91;
                }
              }

              else
              {
                v61 = __nwlog_obj();
                v67 = location;
                if (os_log_type_enabled(v61, location))
                {
                  *buf = 136446210;
                  v125 = "nw_read_request_start_file_updates";
                  _os_log_impl(&dword_181A37000, v61, v67, "%{public}s called with null request->connection, backtrace limit exceeded", buf, 0xCu);
                }

LABEL_87:

                v12 = v91;
              }
            }

            if (v60)
            {
              free(v60);
            }

            goto LABEL_63;
          }

          *(v15 + 176) |= 4u;
          v37 = v36[2];
          if (v37 && !_nw_parameters_get_logging_disabled(v37))
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v38 = gconnectionLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = *(v15[7] + 112);
              v40 = v15[12];
              *buf = 136446722;
              v125 = "nw_read_request_start_file_updates";
              v126 = 1024;
              *v127 = v39;
              *&v127[4] = 2112;
              *&v127[6] = v40;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Activating progress updates on read request on %@", buf, 0x1Cu);
            }
          }

          v41 = v15[13];
          if (v41)
          {
            nw_queue_cancel_source(v41, v34);
            v15[13] = 0;
          }

          objc_initWeak(&location, v35);
          v42 = *(v15[7] + 3);
          *v121 = MEMORY[0x1E69E9820];
          *&v121[8] = 3221225472;
          *&v121[16] = ___ZL34nw_read_request_start_file_updatesP26NWConcrete_nw_read_request_block_invoke;
          v122 = &unk_1E6A3A6C8;
          objc_copyWeak(v123, &location);
          source = nw_queue_context_create_source(v42, 2, 3, 0, v121, 0);
          v15[13] = source;
          if (source)
          {
            v44 = dispatch_time(0x8000000000000000, 1000000);
            v45 = 1000000 * *(v15 + 28);
            if (*source)
            {
              dispatch_source_set_timer(*source, v44, v45, 0x3E8uLL);
            }

            else
            {
              *(source + 32) = v44;
              *(source + 40) = v45;
              if (*(source + 48) == 1 && *(source + 49) == 1)
              {
                nw_queue_source_run_timer(source, v44);
              }
            }

            nw_queue_activate_source(v15[13], v44);
            goto LABEL_62;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          *buf = 136446210;
          v125 = "nw_read_request_start_file_updates";
          v47 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v107 = 0;
          if (__nwlog_fault(v47, &type, &v107))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v49 = type;
              if (os_log_type_enabled(v48, type))
              {
                *buf = 136446210;
                v125 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v48, v49, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed", buf, 0xCu);
              }
            }

            else if (v107 == 1)
            {
              v50 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v88 = type;
              v51 = os_log_type_enabled(v48, type);
              log = v50;
              if (v50)
              {
                if (v51)
                {
                  *buf = 136446466;
                  v125 = "nw_read_request_start_file_updates";
                  v126 = 2082;
                  *v127 = v50;
                  _os_log_impl(&dword_181A37000, v48, v88, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                v12 = v91;
                free(log);
                if (!v47)
                {
                  goto LABEL_62;
                }

LABEL_61:
                free(v47);
                goto LABEL_62;
              }

              if (v51)
              {
                *buf = 136446210;
                v125 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v48, v88, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, no backtrace", buf, 0xCu);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v52 = type;
              if (os_log_type_enabled(v48, type))
              {
                *buf = 136446210;
                v125 = "nw_read_request_start_file_updates";
                _os_log_impl(&dword_181A37000, v48, v52, "%{public}s call to nw_queue_context_create_source(timer) for read request updates failed, backtrace limit exceeded", buf, 0xCu);
              }
            }

            v12 = v91;
          }

          if (v47)
          {
            goto LABEL_61;
          }

LABEL_62:
          objc_destroyWeak(v123);
          objc_destroyWeak(&location);
LABEL_63:

LABEL_64:
          if (*(v118 + 24) == 1)
          {
            if (*(v111 + 40))
            {
              v53 = *(v15[7] + 2);
              if (v53)
              {
                if (!_nw_parameters_get_logging_disabled(v53))
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v54 = gconnectionLogObj;
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    v55 = *(v15[7] + 112);
                    *v121 = 136446466;
                    *&v121[4] = "nw_read_request_receive";
                    *&v121[12] = 1024;
                    *&v121[14] = v55;
                    _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Retrying write to file descriptor, partial write without eof", v121, 0x12u);
                  }
                }
              }
            }
          }

          v57 = v15[10];
          v56 = v15[11];
          v24 = v57 >= v56;
          v58 = v57 - v56;
          if (v24)
          {
            v26 = v58;
          }

          else
          {
            v26 = 0;
          }

          if (_nw_signposts_once != -1)
          {
            dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
          }

          if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
          {
            kdebug_trace();
          }

          _Block_object_dispose(&v103, 8);
          v27 = v118;
          if ((v118[3] & 1) == 0)
          {
            _Block_object_dispose(&v117, 8);
            goto LABEL_125;
          }
        }
      }

LABEL_137:
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
        goto LABEL_140;
      }

      subrange = v9;
LABEL_139:
      v9 = subrange;
LABEL_140:
      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      goto LABEL_143;
    }

    v69 = v15[10];
    v68 = v15[11];
    v24 = v69 >= v68;
    v71 = v69 - v68;
    v70 = v71 != 0 && v24;
    if (!v24)
    {
      v71 = 0;
    }

    if (!v70)
    {
      goto LABEL_137;
    }

    if (v71 >= size)
    {
      v72 = size;
    }

    else
    {
      v72 = v71;
    }

    if (v20 != 1)
    {
      v81 = v15[15] + v68;
      *v121 = 0;
      *&v121[8] = v121;
      *&v121[16] = 0x2000000000;
      v122 = 0;
      v117 = 0;
      v118 = &v117;
      v119 = 0x2000000000;
      v120 = v81;
      v110 = MEMORY[0x1E69E9820];
      v111 = 0x40000000;
      v112 = __nw_dispatch_data_copyout_block_invoke;
      v113 = &unk_1E6A34348;
      v115 = &v117;
      v116 = v72;
      v114 = v121;
      v82 = size;
      dispatch_data_apply(v9, &v110);
      v72 = *(*&v121[8] + 24);
      _Block_object_dispose(&v117, 8);
      _Block_object_dispose(v121, 8);
      if (v82 == v72)
      {
        subrange = 0;
        v72 = v82;
      }

      else
      {
        subrange = dispatch_data_create_subrange(v9, v72, v82 - v72);
      }

      goto LABEL_131;
    }

    if (size <= v71)
    {
      subrange = 0;
      v76 = v15[16];
      if (!v76)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v73 = size;
      v74 = dispatch_data_create_subrange(v9, 0, v72);
      subrange = dispatch_data_create_subrange(v9, v72, v73 - v72);

      v9 = v74;
      v76 = v15[16];
      if (!v76)
      {
LABEL_111:
        concat = v9;
LABEL_129:
        v83 = v15[16];
        v15[16] = concat;

LABEL_131:
        v15[11] = v15[11] + v72;
        if (_nw_signposts_once != -1)
        {
          dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
        }

        if (_nw_signposts_enabled != 1)
        {
          goto LABEL_139;
        }

        if (kdebug_is_enabled())
        {
          kdebug_trace();
        }

        v9 = subrange;
        goto LABEL_137;
      }
    }

    concat = dispatch_data_create_concat(v76, v9);
    goto LABEL_129;
  }

LABEL_165:
  v86 = v9;

  return v86;
}

void nw_flow_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      nw_flow_service_reads(v5, v7, handle, 0);
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (mode > 5)
        {
          v9 = "unknown-mode";
        }

        else
        {
          v9 = off_1E6A31018[mode];
        }

        *buf = 136446722;
        v21 = "nw_flow_input_available";
        v22 = 2082;
        v23 = v9;
        v24 = 2082;
        v25 = "flow";
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_flow_input_available";
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
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
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
          v21 = "nw_flow_input_available";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v16)
      {
        *buf = 136446210;
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v21 = "nw_flow_input_available";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v11)
  {
    free(v11);
  }

LABEL_10:
}

void *nw_frame_get_buffer_manager_with_context(void *a1, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v12 = "nw_frame_get_buffer_manager_with_context";
    v3 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v9 = 0;
    if (!__nwlog_fault(v3, &type, &v9))
    {
      goto LABEL_45;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v12 = "nw_frame_get_buffer_manager_with_context";
      v6 = "%{public}s called with null context";
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
          v12 = "nw_frame_get_buffer_manager_with_context";
          v13 = 2082;
          v14 = backtrace_string;
          _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (!v8)
      {
LABEL_45:
        if (v3)
        {
          free(v3);
        }

        return 0;
      }

      *buf = 136446210;
      v12 = "nw_frame_get_buffer_manager_with_context";
      v6 = "%{public}s called with null context, no backtrace";
    }

    else
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_45;
      }

      *buf = 136446210;
      v12 = "nw_frame_get_buffer_manager_with_context";
      v6 = "%{public}s called with null context, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    goto LABEL_45;
  }

  if (dword_1EA83C248 >= a2)
  {

    return nw_context_2k_buffer_manager(a1);
  }

  else if (dword_1EA83C290 >= a2)
  {

    return nw_context_8k_buffer_manager(a1);
  }

  else if (dword_1EA83C2D8 >= a2)
  {

    return nw_context_16k_buffer_manager(a1);
  }

  else if (dword_1EA83C320 >= a2)
  {

    return nw_context_64k_buffer_manager(a1);
  }

  else if (dword_1EA83C368 >= a2)
  {

    return nw_context_128k_buffer_manager(a1);
  }

  else if (dword_1EA83C3B0 >= a2)
  {

    return nw_context_512k_buffer_manager(a1);
  }

  else
  {
    if (dword_1EA83C3F8 < a2)
    {
      return 0;
    }

    return nw_context_1024k_buffer_manager(a1);
  }
}

void *nw_context_2k_buffer_manager(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    v3 = nw_context_copy_globals_context(v1);

    v4 = *(*(v3 + 4) + 188);
    if (!v4)
    {
      v4 = nw_mem_buffer_manager_initialize(*(v3 + 1), aNwcontextbuffe, dword_1EA83C248, word_1EA83C24C);
      *(*(v3 + 4) + 188) = v4;
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_context_2k_buffer_manager";
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
        v17 = "nw_context_2k_buffer_manager";
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
          v17 = "nw_context_2k_buffer_manager";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_context_2k_buffer_manager";
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
        v17 = "nw_context_2k_buffer_manager";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v7)
  {
    free(v7);
  }

  v3 = 0;
  v4 = 0;
LABEL_4:

  return v4;
}

unint64_t nw_mem_buffer_allocate(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_mem_buffer_allocate";
    v4 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v4, &type, &v17))
    {
      goto LABEL_31;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v20 = "nw_mem_buffer_allocate";
      v12 = "%{public}s called with null buffer_manager";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v16 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v20 = "nw_mem_buffer_allocate";
          v21 = 2082;
          v22 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null buffer_manager, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_31:
        if (!v4)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (!v16)
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v20 = "nw_mem_buffer_allocate";
      v12 = "%{public}s called with null buffer_manager, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_31;
      }

      *buf = 136446210;
      v20 = "nw_mem_buffer_allocate";
      v12 = "%{public}s called with null buffer_manager, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_31;
  }

  if (use_malloc_memory == 1)
  {
    v2 = *(a1 + 56);
    if (!v2)
    {
      v13 = __nwlog_obj();
      os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      v20 = "nw_mem_buffer_allocate";
      v14 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v14);
      if (result)
      {
LABEL_33:
        __break(1u);
        return result;
      }

      free(v14);
      v2 = 0;
    }

    v3 = malloc_type_malloc(v2, 0xF881E1B1uLL);
    if (v3)
    {
      v7 = v3;
      v8 = malloc_size(v3);
      nw_mem_track_allocation(v8);
      return v7;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v20 = "nw_mem_buffer_allocate";
    v4 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v4);
    if (!result)
    {
LABEL_6:
      free(v4);
      return 0;
    }

    goto LABEL_33;
  }

  if (!*(a1 + 88))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v20 = "nw_mem_buffer_allocate";
      v21 = 2082;
      v22 = (a1 + 96);
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s buffer cache is NULL for %{public}s", buf, 0x16u);
    }

    return 0;
  }

  g_transaction_touched = 1;
  nw_mem_cache_update_set_timer();
  v6 = *(a1 + 88);

  return nw_mem_cache_alloc(v6);
}

void nw_flow_passthrough_input_available(nw_protocol *a1, nw_protocol *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    default_input_handler = a1->default_input_handler;
    if (default_input_handler)
    {
      callbacks = default_input_handler->callbacks;
      if (callbacks)
      {
        input_available = callbacks->input_available;
        if (input_available)
        {

          input_available();
        }
      }
    }

    return;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_flow_passthrough_input_available";
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
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol";
LABEL_21:
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
            v15 = "nw_flow_passthrough_input_available";
            v16 = 2082;
            v17 = backtrace_string;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_23;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_21;
      }

      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v15 = "nw_flow_passthrough_input_available";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_22:
  }

LABEL_23:
  if (v6)
  {
    free(v6);
  }
}

uint64_t nw_read_request_get_next_max_size(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = 0xFFFFFFFFLL;
  while (1)
  {
    v4 = v2;
    v5 = v4;
    if (v4[176])
    {
      goto LABEL_4;
    }

    v6 = *(v4 + 17);
    if ((v6 - 1) >= 2)
    {
      if (v6 == 3)
      {
        if (*(v4 + 10) > *(v4 + 11))
        {
          goto LABEL_16;
        }

        goto LABEL_4;
      }

      if (v6 != 4)
      {
        goto LABEL_4;
      }
    }

    v7 = *(v4 + 10);
    v8 = *(v4 + 11);
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      break;
    }

    if (*(v4 + 72) == 0)
    {
      v3 = 0;
      goto LABEL_16;
    }

LABEL_4:
    v2 = *(v4 + 1);

    if (!v2)
    {
      return 0;
    }
  }

  if (v9)
  {
    v3 = v10;
  }

  else
  {
    v3 = 0;
  }

LABEL_16:

  return v3;
}

BOOL nw_read_request_is_metadata_only(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (v1[9])
    {
      v2 = 0;
    }

    else
    {
      v2 = v1[10] == 0;
    }

    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_read_request_is_metadata_only";
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
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null request", buf, 0xCu);
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
          v15 = "nw_read_request_is_metadata_only";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null request, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_read_request_is_metadata_only";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
  v1 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_queue_copy_current_workloop()
{
  result = dispatch_workloop_copy_current();
  if (!result)
  {
    v1 = __nwlog_obj();
    os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
    v2 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v2);
    if (result)
    {
      __break(1u);
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return result;
}

void nw_read_request_report(void *a1, void *a2)
{
  v165 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (*(v3 + 176))
  {
    goto LABEL_140;
  }

  *(v3 + 176) |= 1u;
  v5 = *(v3 + 17);
  if (v5 <= 1)
  {
    if (!v5)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_read_request_report";
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Invalid request", buf, 0xCu);
      }

      goto LABEL_43;
    }

    if (v5 != 1)
    {
LABEL_44:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = *(v3 + 17);
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v43;
        _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s Unknown request type %d", buf, 0x12u);
      }

LABEL_43:

LABEL_140:
      return;
    }

    v16 = *(v3 + 16);
    v17 = *(v3 + 16);
    *(v3 + 16) = 0;

    if (!*(v3 + 7))
    {
      (*(*(v3 + 3) + 16))();
LABEL_122:

      goto LABEL_140;
    }

    v18 = *(v3 + 19);
    if (!v18)
    {
LABEL_121:
      v101 = *(v3 + 17);
      v102 = *(v3 + 176);
      v103 = *(v3 + 19);
      v104 = _Block_copy(*(v3 + 3));
      v105 = *(v3 + 7);
      v106 = *(v3 + 16);
      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke;
      v154[3] = &unk_1E6A35888;
      v158 = v104;
      v155 = v16;
      v156 = v101;
      v159 = (v102 & 2) != 0;
      v157 = v103;
      v107 = v103;
      v108 = v101;
      v109 = v104;
      nw_connection_async_client_if_needed_with_override(v105, v4, v106, v154);

      goto LABEL_122;
    }

    v19 = v18;
    v20 = v19[2];

    if (v20 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v21 = *(*(v3 + 7) + 16);
      if (!v21 || _nw_parameters_get_logging_disabled(v21))
      {
        goto LABEL_121;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_120;
      }

      v23 = *(*(v3 + 7) + 448);
      *buf = 136446466;
      *&buf[4] = "nw_read_request_report";
      *&buf[12] = 1024;
      *&buf[14] = v23;
      v24 = "%{public}s [C%u] Receive cancelled";
      v25 = v22;
      v26 = OS_LOG_TYPE_INFO;
      v27 = 18;
    }

    else
    {
      v98 = *(*(v3 + 7) + 16);
      if (!v98 || _nw_parameters_get_logging_disabled(v98))
      {
        goto LABEL_121;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v22 = gconnectionLogObj;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_120;
      }

      v99 = *(*(v3 + 7) + 448);
      v100 = *(v3 + 19);
      *buf = 136446722;
      *&buf[4] = "nw_read_request_report";
      *&buf[12] = 1024;
      *&buf[14] = v99;
      *&buf[18] = 2114;
      *&buf[20] = v100;
      v24 = "%{public}s [C%u] Receive failed with error %{public}@";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 28;
    }

    _os_log_impl(&dword_181A37000, v25, v26, v24, buf, v27);
LABEL_120:

    goto LABEL_121;
  }

  if (v5 == 2)
  {
    if (!*(v3 + 7))
    {
      v44 = *(v3 + 6);
      v45 = *(v3 + 11);
      v46 = *(v3 + 19);
      if (v46)
      {
        error_code = nw_error_get_error_code(v46);
      }

      else
      {
        error_code = 0;
      }

      (*(v44 + 16))(v44, v45, error_code);
      goto LABEL_140;
    }

    v28 = *(v3 + 19);
    if (!v28)
    {
      goto LABEL_96;
    }

    v29 = v28;
    v30 = v29[2];

    if (v30 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v31 = *(*(v3 + 7) + 16);
      if (v31 && !_nw_parameters_get_logging_disabled(v31))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_93;
        }

        v33 = *(*(v3 + 7) + 448);
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v33;
        v34 = "%{public}s [C%u] Receive cancelled";
        v35 = v32;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 18;
LABEL_92:
        _os_log_impl(&dword_181A37000, v35, v36, v34, buf, v37);
LABEL_93:
      }
    }

    else
    {
      v73 = *(*(v3 + 7) + 16);
      if (v73 && !_nw_parameters_get_logging_disabled(v73))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v32 = gconnectionLogObj;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_93;
        }

        v74 = *(*(v3 + 7) + 448);
        v75 = *(v3 + 19);
        *buf = 136446722;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v74;
        *&buf[18] = 2114;
        *&buf[20] = v75;
        v34 = "%{public}s [C%u] Receive failed with error %{public}@";
        v35 = v32;
        v36 = OS_LOG_TYPE_ERROR;
        v37 = 28;
        goto LABEL_92;
      }
    }

    v76 = *(v3 + 19);
    if (v76)
    {
      v77 = v76;
      v78 = v77[3];

LABEL_97:
      v79 = *(v3 + 11);
      v80 = _Block_copy(*(v3 + 6));
      v81 = *(v3 + 7);
      v82 = *(v3 + 16);
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_107;
      v133[3] = &unk_1E6A35900;
      v134 = v80;
      v135 = v79;
      v136 = v78;
      v83 = v80;
      nw_connection_async_client_if_needed_with_override(v81, v4, v82, v133);

      goto LABEL_140;
    }

LABEL_96:
    v78 = 0;
    goto LABEL_97;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      if (!*(v3 + 7))
      {
        (*(*(v3 + 4) + 16))();
LABEL_110:
        v96 = *(v3 + 13);
        if (v96)
        {
          nw_queue_cancel_source(v96, v66);
          *(v3 + 13) = 0;
        }

        v97 = *(v3 + 4);
        *(v3 + 4) = 0;

        goto LABEL_140;
      }

      v6 = *(v3 + 19);
      if (!v6)
      {
LABEL_106:
        if ((*(v3 + 176) & 2) == 0 && !*(v3 + 19))
        {
          *(v3 + 176) |= 2u;
        }

        v87 = *(v3 + 17);
        v88 = *(v3 + 176);
        v89 = *(v3 + 19);
        v90 = _Block_copy(*(v3 + 4));
        v91 = *(v3 + 7);
        v92 = *(v3 + 16);
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_108;
        v127[3] = &unk_1E6A35888;
        v131 = v90;
        v128 = v3;
        v129 = v87;
        v132 = (v88 & 2) != 0;
        v130 = v89;
        v93 = v89;
        v94 = v87;
        v95 = v90;
        nw_connection_async_client_if_needed_with_override(v91, v4, v92, v127);

        goto LABEL_110;
      }

      v7 = v6;
      v8 = v7[2];

      if (v8 == 1 && nw_error_get_error_code(*(v3 + 19)) == 89)
      {
        v9 = *(*(v3 + 7) + 16);
        if (!v9 || _nw_parameters_get_logging_disabled(v9))
        {
          goto LABEL_106;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_105;
        }

        v11 = *(*(v3 + 7) + 448);
        *buf = 136446466;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v11;
        v12 = "%{public}s [C%u] Receive cancelled";
        v13 = v10;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 18;
      }

      else
      {
        v84 = *(*(v3 + 7) + 16);
        if (!v84 || _nw_parameters_get_logging_disabled(v84))
        {
          goto LABEL_106;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v10 = gconnectionLogObj;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_105;
        }

        v85 = *(*(v3 + 7) + 448);
        v86 = *(v3 + 19);
        *buf = 136446722;
        *&buf[4] = "nw_read_request_report";
        *&buf[12] = 1024;
        *&buf[14] = v85;
        *&buf[18] = 2114;
        *&buf[20] = v86;
        v12 = "%{public}s [C%u] Receive failed with error %{public}@";
        v13 = v10;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 28;
      }

      _os_log_impl(&dword_181A37000, v13, v14, v12, buf, v15);
LABEL_105:

      goto LABEL_106;
    }

    goto LABEL_44;
  }

  v38 = *(v3 + 20);
  if (v38)
  {
    count = _nw_array_get_count(v38);
    v40 = *(v3 + 21);
    if (v40)
    {
LABEL_40:
      v41 = _nw_array_get_count(v40);
      goto LABEL_51;
    }
  }

  else
  {
    count = 0;
    v40 = *(v3 + 21);
    if (v40)
    {
      goto LABEL_40;
    }
  }

  v41 = 0;
LABEL_51:
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 0;
  v150 = 0;
  v151 = &v150;
  v152 = 0x2020000000;
  v153 = 0;
  if (!count)
  {
    goto LABEL_63;
  }

  if (count >> 61)
  {
    v123 = __nwlog_obj();
    os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
    *v160 = 136446210;
    v161 = "nw_read_request_report";
    v124 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v124))
    {
      goto LABEL_145;
    }

    free(v124);
  }

  v48 = malloc_type_calloc(count, 8uLL, 0x97E06420uLL);
  if (!v48)
  {
    v49 = __nwlog_obj();
    os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    *v160 = 136446722;
    v161 = "nw_read_request_report";
    v162 = 2048;
    *v163 = count;
    *&v163[8] = 2048;
    *&v163[10] = 8;
    v50 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v50))
    {
      goto LABEL_145;
    }

    free(v50);
    v48 = 0;
  }

  *(*&buf[8] + 24) = v48;
  if (count >> 61)
  {
    v125 = __nwlog_obj();
    os_log_type_enabled(v125, OS_LOG_TYPE_ERROR);
    *v160 = 136446210;
    v161 = "nw_read_request_report";
    v126 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v126))
    {
      goto LABEL_145;
    }

    free(v126);
  }

  v51 = malloc_type_calloc(count, 8uLL, 0x95752FFuLL);
  if (v51)
  {
LABEL_60:
    v151[3] = v51;
    v54 = *(v3 + 20);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_104;
    aBlock[3] = &unk_1E6A358B0;
    v148 = v41;
    v149 = count;
    v146 = buf;
    v147 = &v150;
    v55 = v3;
    v145 = v55;
    if (v54)
    {
      _nw_array_apply(v54, aBlock);
      v55 = v145;
    }

LABEL_63:
    if (!*(v3 + 7))
    {
      (*(*(v3 + 5) + 16))(*(v3 + 5), *(*&buf[8] + 24));
      v67 = *(*&buf[8] + 24);
      if (v67 || v151[3])
      {
        if (count)
        {
          for (i = 0; i != count; ++i)
          {
            v69 = *(*&buf[8] + 24);
            if (v69)
            {
              v70 = *(v69 + 8 * i);
              if (v70)
              {
                *(v69 + 8 * i) = 0;
              }
            }

            v71 = v151[3];
            if (v71)
            {
              v72 = *(v71 + 8 * i);
              if (v72)
              {
                *(v71 + 8 * i) = 0;
              }
            }
          }

          v67 = *(*&buf[8] + 24);
        }

        if (v67)
        {
          free(v67);
          *(*&buf[8] + 24) = 0;
        }

        v120 = v151[3];
        if (v120)
        {
          free(v120);
          v151[3] = 0;
        }
      }

      goto LABEL_137;
    }

    v56 = *(v3 + 19);
    if (!v56)
    {
LABEL_131:
      v113 = *(v3 + 19);
      v114 = *(v3 + 22);
      v115 = _Block_copy(*(v3 + 5));
      v116 = *(v3 + 7);
      v117 = *(v3 + 16);
      v137[0] = MEMORY[0x1E69E9820];
      v137[1] = 3221225472;
      v137[2] = ___ZL22nw_read_request_reportP26NWConcrete_nw_read_requestPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_106;
      v137[3] = &unk_1E6A358D8;
      v140 = buf;
      v141 = &v150;
      v143 = v114;
      v138 = v113;
      v139 = v115;
      v142 = count;
      v118 = v113;
      v119 = v115;
      nw_connection_async_client_if_needed_with_override(v116, v4, v117, v137);

LABEL_137:
      v121 = *(v3 + 20);
      *(v3 + 20) = 0;

      v122 = *(v3 + 21);
      *(v3 + 21) = 0;

      _Block_object_dispose(&v150, 8);
      _Block_object_dispose(buf, 8);
      goto LABEL_140;
    }

    v57 = v56;
    v58 = v57[2] == 1;

    if (v58 && nw_error_get_error_code(*(v3 + 19)) == 89)
    {
      v59 = *(*(v3 + 7) + 16);
      if (!v59 || _nw_parameters_get_logging_disabled(v59))
      {
        goto LABEL_131;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v60 = gconnectionLogObj;
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        goto LABEL_130;
      }

      v61 = *(*(v3 + 7) + 448);
      *v160 = 136446466;
      v161 = "nw_read_request_report";
      v162 = 1024;
      *v163 = v61;
      v62 = "%{public}s [C%u] Receive cancelled";
      v63 = v60;
      v64 = OS_LOG_TYPE_INFO;
      v65 = 18;
    }

    else
    {
      v110 = *(*(v3 + 7) + 16);
      if (!v110 || _nw_parameters_get_logging_disabled(v110))
      {
        goto LABEL_131;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v60 = gconnectionLogObj;
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      v111 = *(*(v3 + 7) + 448);
      v112 = *(v3 + 19);
      *v160 = 136446722;
      v161 = "nw_read_request_report";
      v162 = 1024;
      *v163 = v111;
      *&v163[4] = 2114;
      *&v163[6] = v112;
      v62 = "%{public}s [C%u] Receive failed with error %{public}@";
      v63 = v60;
      v64 = OS_LOG_TYPE_ERROR;
      v65 = 28;
    }

    _os_log_impl(&dword_181A37000, v63, v64, v62, v160, v65);
LABEL_130:

    goto LABEL_131;
  }

  v52 = __nwlog_obj();
  os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
  *v160 = 136446722;
  v161 = "nw_read_request_report";
  v162 = 2048;
  *v163 = count;
  *&v163[8] = 2048;
  *&v163[10] = 8;
  v53 = _os_log_send_and_compose_impl();

  if (!__nwlog_should_abort(v53))
  {
    free(v53);
    v51 = 0;
    goto LABEL_60;
  }

LABEL_145:
  __break(1u);
}

void sub_181AF812C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v48 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t nw_read_request_list_remove_head(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    v20 = "nw_read_request_list_remove_head";
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
          v20 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null head", buf, 0xCu);
        }
      }

      else if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v14 = type;
        v15 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v20 = "nw_read_request_list_remove_head";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null head, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_25;
        }

        if (v15)
        {
          *buf = 136446210;
          v20 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null head, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v9 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v20 = "nw_read_request_list_remove_head";
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null head, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_25:
    if (v8)
    {
      free(v8);
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = *(v1 + 1);
  v4 = v2[1];
  v2[1] = 0;

  if (!v3)
  {
LABEL_5:
    v2[2] = 0;
LABEL_6:

    return v3;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v3[2] = v5;
    goto LABEL_5;
  }

  v11 = __nwlog_obj();
  os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v20 = "nw_read_request_list_remove_head";
  v12 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v12);
  if (!result)
  {
    free(v12);
    v5 = v2[2];
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_181AF85E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_read_request;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void nw_connection_add_read_request_on_queue(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  nw_context_assert_queue(*(v5 + 3));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZL39nw_connection_add_read_request_on_queueP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObjectb_block_invoke;
  v9[3] = &unk_1E6A3D738;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  os_unfair_lock_lock(v5 + 34);
  ___ZL39nw_connection_add_read_request_on_queueP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObjectb_block_invoke(v9);
  os_unfair_lock_unlock(v5 + 34);
  if (v13[3])
  {
    v8 = 89;
LABEL_8:
    nw_read_request_fail(v6, v8);
    goto LABEL_9;
  }

  if (!nw_endpoint_handler_add_read_request(v7[18], v6))
  {
    v8 = 57;
    goto LABEL_8;
  }

  if (a3 && (*(v7 + 109) & 0x40) != 0)
  {
    nw_endpoint_handler_service_reads(v7[18]);
  }

LABEL_9:

  _Block_object_dispose(&v12, 8);
}

uint64_t nw_endpoint_handler_add_read_request(void *a1, void *a2)
{
  v126 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
    mode = v5->mode;

    if (mode == 2)
    {
      v7 = nw_endpoint_handler_copy_flow(v5);
      v8 = v7;
      if ((*(v7 + 35) & 2) == 0)
      {
        if (*(v7 + 96))
        {
          if (*(v7 + 108))
          {
            v9 = v4;
            v10 = v9;
            if (v9)
            {
              v11 = v9[18];

              if (v11)
              {
                if (v11 == &__block_literal_global_10_44685)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x2020000000;
                  LOBYTE(v111) = 0;
                  *type = 0;
                  v106 = type;
                  v107 = 0x2020000000;
                  v108 = 0;
                  v46 = *(v8 + 108);
                  v99[0] = MEMORY[0x1E69E9820];
                  v99[1] = 3221225472;
                  v99[2] = __nw_endpoint_handler_add_read_request_block_invoke;
                  v99[3] = &unk_1E6A2DB48;
                  v100 = v5;
                  v47 = v10;
                  v101 = v47;
                  v103 = buf;
                  v104 = type;
                  v48 = v8;
                  v102 = v48;
                  nw_hash_table_apply(v46, v99);
                  if (*(*&buf[8] + 24) == 1)
                  {
                    LOBYTE(request) = v106[24];
                  }

                  else
                  {
                    request_list_append = nw_read_request_list_append(v48[89], v47);
                    v60 = v48[89];
                    v48[89] = request_list_append;

                    LOBYTE(request) = 1;
                  }

                  _Block_object_dispose(type, 8);
                  _Block_object_dispose(buf, 8);
                  v11 = &__block_literal_global_10_44685;
                  goto LABEL_116;
                }

                node = nw_hash_table_get_node(*(v8 + 108), v11, 0);
                if (node)
                {
                  goto LABEL_10;
                }

                repliable_metadata = nw_content_context_copy_first_repliable_metadata(v11);
                if (repliable_metadata)
                {
                  v58 = nw_hash_table_get_node(*(v8 + 108), repliable_metadata, 1);

                  if (v58)
                  {
                    node = v58;
LABEL_10:
                    v13 = *(node + 16);
                    request = nw_flow_add_read_request(v5, v13, v10);
                    if ((gLogDatapath & 1) != 0 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                    {
                      if (__nwlog_connection_log::onceToken[0] != -1)
                      {
                        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                      }

                      logb = gconnectionLogObj;
                      if (os_log_type_enabled(logb, OS_LOG_TYPE_DEBUG))
                      {
                        id_string = nw_endpoint_handler_get_id_string(v5);
                        v89 = nw_endpoint_handler_dry_run_string(v5);
                        v95 = nw_endpoint_handler_copy_endpoint(v5);
                        *buf = 136448514;
                        *&buf[4] = "nw_endpoint_handler_add_read_request";
                        *&buf[12] = 2082;
                        *&buf[14] = id_string;
                        *&buf[22] = 2082;
                        v111 = v89;
                        v112 = 2082;
                        logging_description = nw_endpoint_get_logging_description(v95);
                        v114 = 2082;
                        v115 = nw_endpoint_handler_state_string(v5);
                        v116 = 2082;
                        v117 = nw_endpoint_handler_mode_string(v5);
                        v118 = 2114;
                        v87 = nw_endpoint_handler_copy_current_path(v5);
                        v119 = v87;
                        v120 = 2112;
                        v121 = v10;
                        v122 = 2048;
                        v123 = v13;
                        v124 = 1024;
                        v125 = request;
                        _os_log_impl(&dword_181A37000, logb, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Added read request %@ to flow protocol %p: %u", buf, 0x62u);
                      }
                    }

                    nw_flow_service_reads(v5, v8, v13, 0);
                    goto LABEL_116;
                  }
                }

                nw_read_request_fail(v10, 2);
                goto LABEL_115;
              }

LABEL_161:
              LOBYTE(request) = nw_flow_add_read_request(v5, v8 + 376, v10);
              v11 = 0;
              goto LABEL_116;
            }

            v80 = __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_read_request_copy_repliable_context";
            v81 = _os_log_send_and_compose_impl();

            type[0] = OS_LOG_TYPE_ERROR;
            v109 = 0;
            if (__nwlog_fault(v81, type, &v109))
            {
              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v82 = __nwlog_obj();
                v83 = type[0];
                if (os_log_type_enabled(v82, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v83, "%{public}s called with null request", buf, 0xCu);
                }
              }

              else if (v109 == 1)
              {
                backtrace_string = __nw_create_backtrace_string();
                v82 = __nwlog_obj();
                v85 = type[0];
                v86 = os_log_type_enabled(v82, type[0]);
                if (backtrace_string)
                {
                  if (v86)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_read_request_copy_repliable_context";
                    *&buf[12] = 2082;
                    *&buf[14] = backtrace_string;
                    _os_log_impl(&dword_181A37000, v82, v85, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(backtrace_string);
                  goto LABEL_159;
                }

                if (v86)
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v85, "%{public}s called with null request, no backtrace", buf, 0xCu);
                }
              }

              else
              {
                v82 = __nwlog_obj();
                v88 = type[0];
                if (os_log_type_enabled(v82, type[0]))
                {
                  *buf = 136446210;
                  *&buf[4] = "nw_read_request_copy_repliable_context";
                  _os_log_impl(&dword_181A37000, v82, v88, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
                }
              }
            }

LABEL_159:
            if (v81)
            {
              free(v81);
            }

            goto LABEL_161;
          }

          v37 = v5;
          v38 = *(v37 + 284);

          if ((v38 & 0x40) == 0)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v11 = gconnectionLogObj;
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_115;
            }

            v39 = v37;

            v40 = v39;
            v41 = *(v37 + 284);

            if (v41)
            {
              v42 = "dry-run ";
            }

            else
            {
              v42 = "";
            }

            v43 = nw_endpoint_handler_copy_endpoint(v40);
            v44 = v43;
            if (v43)
            {
              v94 = _nw_endpoint_get_logging_description(v43);
            }

            else
            {
              v94 = "<NULL>";
            }

            loga = v42;
            id_str = v39->id_str;

            v61 = v40;
            v62 = v61;
            v63 = v61[30];
            if (v63 > 5)
            {
              v64 = "unknown-state";
            }

            else
            {
              v64 = off_1E6A31048[v63];
            }

            v65 = v62;
            v66 = v65;
            v67 = v5->mode;
            if (v67 > 2)
            {
              switch(v67)
              {
                case 3:
                  v68 = "proxy";
                  goto LABEL_114;
                case 4:
                  v68 = "fallback";
                  goto LABEL_114;
                case 5:
                  v68 = "transform";
                  goto LABEL_114;
              }
            }

            else
            {
              switch(v67)
              {
                case 0:
                  v68 = "path";
                  goto LABEL_114;
                case 1:
                  v68 = "resolver";
                  goto LABEL_114;
                case 2:
                  v68 = nw_endpoint_flow_mode_string(v65[33]);
LABEL_114:

                  v71 = v66;
                  os_unfair_lock_lock(v71 + 28);
                  v72 = v71[8];
                  os_unfair_lock_unlock(v71 + 28);

                  *buf = 136447746;
                  *&buf[4] = "nw_endpoint_handler_add_read_request";
                  *&buf[12] = 2082;
                  *&buf[14] = id_str;
                  *&buf[22] = 2082;
                  v111 = loga;
                  v112 = 2082;
                  logging_description = v94;
                  v114 = 2082;
                  v115 = v64;
                  v116 = 2082;
                  v117 = v68;
                  v118 = 2114;
                  v119 = v72;
                  _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot receive after flow table is released", buf, 0x48u);

                  goto LABEL_115;
              }
            }

            v68 = "unknown-mode";
            goto LABEL_114;
          }

LABEL_133:
          LOBYTE(request) = 0;
          goto LABEL_117;
        }

        v22 = nw_flow_add_read_request(v5, v7 + 376, v4);
LABEL_31:
        LOBYTE(request) = v22;
LABEL_117:

        goto LABEL_118;
      }

      v21 = *(v7 + 117);
      if (v21)
      {
        v22 = nw_endpoint_handler_add_read_request(v21, v4);
        goto LABEL_31;
      }

      v29 = v5;
      v30 = *(v29 + 284);

      if ((v30 & 0x40) != 0)
      {
        goto LABEL_133;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v11 = gconnectionLogObj;
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_115;
      }

      v31 = v29;

      v32 = v31;
      v33 = *(v29 + 284);

      if (v33)
      {
        v34 = "dry-run ";
      }

      else
      {
        v34 = "";
      }

      v35 = nw_endpoint_handler_copy_endpoint(v32);
      v36 = v35;
      if (v35)
      {
        v93 = _nw_endpoint_get_logging_description(v35);
      }

      else
      {
        v93 = "<NULL>";
      }

      log = v34;
      v90 = v31->id_str;

      v49 = v32;
      v50 = v49;
      v51 = v49[30];
      if (v51 > 5)
      {
        v52 = "unknown-state";
      }

      else
      {
        v52 = off_1E6A31048[v51];
      }

      v53 = v50;
      v54 = v53;
      v55 = v5->mode;
      if (v55 > 2)
      {
        switch(v55)
        {
          case 3:
            v56 = "proxy";
            goto LABEL_108;
          case 4:
            v56 = "fallback";
            goto LABEL_108;
          case 5:
            v56 = "transform";
            goto LABEL_108;
        }
      }

      else
      {
        switch(v55)
        {
          case 0:
            v56 = "path";
            goto LABEL_108;
          case 1:
            v56 = "resolver";
            goto LABEL_108;
          case 2:
            v56 = nw_endpoint_flow_mode_string(v53[33]);
LABEL_108:

            v69 = v54;
            os_unfair_lock_lock(v69 + 28);
            v70 = v69[8];
            os_unfair_lock_unlock(v69 + 28);

            *buf = 136447746;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v90;
            *&buf[22] = 2082;
            v111 = log;
            v112 = 2082;
            logging_description = v93;
            v114 = 2082;
            v115 = v52;
            v116 = 2082;
            v117 = v56;
            v118 = 2114;
            v119 = v70;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Cannot receive, no connected handler", buf, 0x48u);

LABEL_115:
            LOBYTE(request) = 0;
LABEL_116:

            goto LABEL_117;
        }
      }

      v56 = "unknown-mode";
      goto LABEL_108;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (mode > 5)
    {
      v16 = "unknown-mode";
    }

    else
    {
      v16 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    *&buf[4] = "nw_endpoint_handler_add_read_request";
    *&buf[12] = 2082;
    *&buf[14] = v16;
    *&buf[22] = 2082;
    v111 = "flow";
    v17 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (__nwlog_fault(v17, type, &v109))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v19 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          if (mode > 5)
          {
            v20 = "unknown-mode";
          }

          else
          {
            v20 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v20;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v19, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v109 == 1)
      {
        v23 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v24 = type[0];
        v25 = os_log_type_enabled(v18, type[0]);
        if (v23)
        {
          if (v25)
          {
            if (mode > 5)
            {
              v26 = "unknown-mode";
            }

            else
            {
              v26 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v26;
            *&buf[22] = 2082;
            v111 = "flow";
            v112 = 2082;
            logging_description = v23;
            _os_log_impl(&dword_181A37000, v18, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v23);
          if (!v17)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v25)
        {
          if (mode > 5)
          {
            v45 = "unknown-mode";
          }

          else
          {
            v45 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v45;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v24, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v27 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          if (mode > 5)
          {
            v28 = "unknown-mode";
          }

          else
          {
            v28 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          *&buf[12] = 2082;
          *&buf[14] = v28;
          *&buf[22] = 2082;
          v111 = "flow";
          _os_log_impl(&dword_181A37000, v18, v27, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

LABEL_83:
    }
  }

  else
  {
    v74 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_endpoint_handler_add_read_request";
    v17 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (__nwlog_fault(v17, type, &v109))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v18 = __nwlog_obj();
        v75 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v75, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v109 == 1)
      {
        v76 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v77 = type[0];
        v78 = os_log_type_enabled(v18, type[0]);
        if (v76)
        {
          if (v78)
          {
            *buf = 136446466;
            *&buf[4] = "nw_endpoint_handler_add_read_request";
            *&buf[12] = 2082;
            *&buf[14] = v76;
            _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v76);
          if (!v17)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v78)
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v77, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v18 = __nwlog_obj();
        v79 = type[0];
        if (os_log_type_enabled(v18, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_endpoint_handler_add_read_request";
          _os_log_impl(&dword_181A37000, v18, v79, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }

      goto LABEL_83;
    }
  }

  if (v17)
  {
LABEL_85:
    free(v17);
  }

LABEL_86:
  LOBYTE(request) = 0;
LABEL_118:

  return request & 1;
}

uint64_t nw_flow_add_read_request(void *a1, uint64_t a2, void *a3)
{
  v271 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v105 = __nwlog_obj();
    *buf = 136446210;
    v254 = "nw_flow_add_read_request";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v251 = 0;
    if (!__nwlog_fault(v21, &type, &v251))
    {
      goto LABEL_149;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v106 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v254 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v106, "%{public}s called with null handler", buf, 0xCu);
      }

      goto LABEL_148;
    }

    if (v251 != 1)
    {
      v22 = __nwlog_obj();
      v112 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v254 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v112, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_148;
    }

    backtrace_string = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v110 = type;
    v111 = os_log_type_enabled(v22, type);
    if (!backtrace_string)
    {
      if (v111)
      {
        *buf = 136446210;
        v254 = "nw_flow_add_read_request";
        _os_log_impl(&dword_181A37000, v22, v110, "%{public}s called with null handler, no backtrace", buf, 0xCu);
      }

      goto LABEL_148;
    }

    if (v111)
    {
      *buf = 136446466;
      v254 = "nw_flow_add_read_request";
      v255 = 2082;
      v256 = backtrace_string;
      _os_log_impl(&dword_181A37000, v22, v110, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_186;
  }

  v5 = a1;
  mode = v5->mode;

  if (mode == 2)
  {
    if (a3)
    {
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_17387);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v245 = a3;
      v250 = nw_endpoint_handler_copy_flow(v5);
      if ((*(v250 + 34) & 8) != 0)
      {
        v7 = v5;
        v8 = *(v7 + 284);

        if ((v8 & 0x20) == 0)
        {
          v9 = v7;
          v10 = *(v7 + 284);

          if ((v10 & 0x40) != 0)
          {
            goto LABEL_69;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_68;
          }

          v12 = v9;

          v13 = v12;
          v14 = *(v7 + 284);

          if (v14)
          {
            v15 = "dry-run ";
          }

          else
          {
            v15 = "";
          }

          log = v11;
          v16 = nw_endpoint_handler_copy_endpoint(v13);
          v17 = v16;
          if (v16)
          {
            logging_description = _nw_endpoint_get_logging_description(v16);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v233 = a2;

          v32 = v13;
          v33 = v32;
          v34 = v32[30];
          if (v34 > 5)
          {
            v35 = "unknown-state";
          }

          else
          {
            v35 = off_1E6A31048[v34];
          }

          v36 = v33;
          v37 = v36;
          v38 = v5->mode;
          v39 = logging_description;
          if (v38 > 2)
          {
            switch(v38)
            {
              case 3:
                v40 = v15;
                v41 = "proxy";
                goto LABEL_67;
              case 4:
                v40 = v15;
                v41 = "fallback";
                goto LABEL_67;
              case 5:
                v40 = v15;
                v41 = "transform";
                goto LABEL_67;
            }
          }

          else
          {
            switch(v38)
            {
              case 0:
                v40 = v15;
                v41 = "path";
                goto LABEL_67;
              case 1:
                v40 = v15;
                v41 = "resolver";
                goto LABEL_67;
              case 2:
                v40 = v15;
                v41 = nw_endpoint_flow_mode_string(v36[33]);
LABEL_67:

                v42 = v37;
                os_unfair_lock_lock(v42 + 28);
                v43 = v42[8];
                os_unfair_lock_unlock(v42 + 28);

                v44 = v43;
                *buf = 136448258;
                v254 = "nw_flow_add_read_request";
                v255 = 2082;
                v256 = v12 + 184;
                v257 = 2082;
                v258 = v40;
                v259 = 2082;
                v260 = v39;
                v261 = 2082;
                v262 = v35;
                v263 = 2082;
                v264 = v41;
                v265 = 2114;
                v266 = v44;
                v267 = 2048;
                next_max_size = nw_read_request_get_next_max_size(v245);
                v269 = 2048;
                maximum_datagram_count = nw_read_request_get_maximum_datagram_count(v245);
                v11 = log;
                _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Read request submitted: %zu bytes, %zu datagrams", buf, 0x5Cu);

                a2 = v233;
LABEL_68:

                goto LABEL_69;
            }
          }

          v40 = v15;
          v41 = "unknown-mode";
          goto LABEL_67;
        }

        if ((nw_endpoint_handler_get_logging_disabled(v7) & 1) == 0)
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v11 = gconnectionLogObj;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            id_string = nw_endpoint_handler_get_id_string(v7);
            v113 = nw_endpoint_handler_dry_run_string(v7);
            v234 = nw_endpoint_handler_copy_endpoint(v7);
            v114 = nw_endpoint_get_logging_description(v234);
            v115 = nw_endpoint_handler_state_string(v7);
            v116 = nw_endpoint_handler_mode_string(v7);
            v117 = nw_endpoint_handler_copy_current_path(v7);
            *buf = 136448258;
            v254 = "nw_flow_add_read_request";
            v255 = 2082;
            v256 = id_string;
            v257 = 2082;
            v258 = v113;
            v259 = 2082;
            v260 = v114;
            v261 = 2082;
            v262 = v115;
            v263 = 2082;
            v264 = v116;
            v265 = 2114;
            v266 = v117;
            v267 = 2048;
            next_max_size = nw_read_request_get_next_max_size(v245);
            v269 = 2048;
            maximum_datagram_count = nw_read_request_get_maximum_datagram_count(v245);
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Read request submitted: %zu bytes, %zu datagrams", buf, 0x5Cu);
          }

          goto LABEL_68;
        }
      }

LABEL_69:
      if (nw_flow_has_final_read(a2))
      {
        if (a2)
        {
          v45 = *(a2 + 312);
          if (v45 && !_nw_array_is_empty(v45))
          {
            v46 = *(a2 + 312);
            if (v46)
            {
              v47 = _nw_array_get_object_at_index(v46, 0);
              v46 = *(a2 + 312);
              v48 = v47;
            }

            else
            {
              v48 = 0;
            }

            if (v48)
            {
              if ((nw_flow_has_final_read(a2) & 1) == 0)
              {
                v64 = *(v48 + 16);
                if (v64 && v64 != &__block_literal_global_6_44667 && v64 != &__block_literal_global_44658 && v64 != &__block_literal_global_8_44676 && v64 != &__block_literal_global_10_44685)
                {
                  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v215 = gconnectionLogObj;
                    if (os_log_type_enabled(v215, OS_LOG_TYPE_DEBUG))
                    {
                      logd = nw_endpoint_handler_get_id_string(v5);
                      v237 = nw_endpoint_handler_dry_run_string(v5);
                      v216 = nw_endpoint_handler_copy_endpoint(v5);
                      v231 = nw_endpoint_get_logging_description(v216);
                      v217 = nw_endpoint_handler_state_string(v5);
                      v218 = nw_endpoint_handler_mode_string(v5);
                      v219 = nw_endpoint_handler_copy_current_path(v5);
                      v220 = *(v48 + 16);
                      *buf = 136448002;
                      v254 = "nw_flow_add_read_request";
                      v255 = 2082;
                      v256 = logd;
                      v257 = 2082;
                      v258 = v237;
                      v259 = 2082;
                      v260 = v231;
                      v261 = 2082;
                      v262 = v217;
                      v263 = 2082;
                      v264 = v218;
                      v265 = 2114;
                      v266 = v219;
                      v267 = 2048;
                      next_max_size = v220;
                      _os_log_impl(&dword_181A37000, v215, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting final on non-static context %p", buf, 0x52u);
                    }
                  }

                  nw_content_context_set_is_final(*(v48 + 16), 1);
                }

                if ((*(v48 + 25) & 1) == 0 && *(v48 + 24) == 1 && !*(v48 + 32))
                {
                  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                  {
                    if (__nwlog_connection_log::onceToken[0] != -1)
                    {
                      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                    }

                    v221 = gconnectionLogObj;
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_DEBUG))
                    {
                      loge = nw_endpoint_handler_get_id_string(v5);
                      v238 = nw_endpoint_handler_dry_run_string(v5);
                      v222 = nw_endpoint_handler_copy_endpoint(v5);
                      v232 = nw_endpoint_get_logging_description(v222);
                      v223 = nw_endpoint_handler_state_string(v5);
                      v224 = nw_endpoint_handler_mode_string(v5);
                      v225 = nw_endpoint_handler_copy_current_path(v5);
                      *buf = 136447746;
                      v254 = "nw_flow_add_read_request";
                      v255 = 2082;
                      v256 = loge;
                      v257 = 2082;
                      v258 = v238;
                      v259 = 2082;
                      v260 = v232;
                      v261 = 2082;
                      v262 = v223;
                      v263 = 2082;
                      v264 = v224;
                      v265 = 2114;
                      v266 = v225;
                      _os_log_impl(&dword_181A37000, v221, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Setting is_complete on last final read", buf, 0x48u);
                    }
                  }

                  *(v48 + 25) = 1;
                }
              }

              v65 = *(v48 + 8);
              if (v65)
              {
                size = dispatch_data_get_size(v65);
              }

              else
              {
                size = 0;
              }

              v86 = *(v48 + 16);
              if (!v86)
              {
                v86 = &__block_literal_global_6_44667;
              }

              v87 = v86;
              request_receive = nw_read_request_receive(v245, *(v48 + 8), v87, *(v48 + 25), *(v48 + 32));
              if (size)
              {
                *(v250 + 134) += size;
                if ((*(v250 + 34) & 0x20) == 0)
                {
                  nw_context_count_input_bytes(*(a2 + 184), size);
                }
              }

              if (request_receive)
              {
                if (gLogDatapath && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v130 = gconnectionLogObj;
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
                  {
                    logb = nw_endpoint_handler_get_id_string(v5);
                    v235 = nw_endpoint_handler_dry_run_string(v5);
                    v131 = nw_endpoint_handler_copy_endpoint(v5);
                    v227 = nw_endpoint_get_logging_description(v131);
                    v132 = nw_endpoint_handler_state_string(v5);
                    v133 = nw_endpoint_handler_mode_string(v5);
                    v134 = nw_endpoint_handler_copy_current_path(v5);
                    v135 = dispatch_data_get_size(request_receive);
                    *buf = 136448258;
                    v254 = "nw_flow_add_read_request";
                    v255 = 2082;
                    v256 = logb;
                    v257 = 2082;
                    v258 = v235;
                    v259 = 2082;
                    v260 = v227;
                    v261 = 2082;
                    v262 = v132;
                    v263 = 2082;
                    v264 = v133;
                    v265 = 2114;
                    v266 = v134;
                    v267 = 2048;
                    next_max_size = size - v135;
                    v269 = 2048;
                    maximum_datagram_count = size;
                    _os_log_impl(&dword_181A37000, v130, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Consumed %zu/%zu final bytes", buf, 0x5Cu);
                  }
                }

                v89 = *(v48 + 16);
                v90 = *(v48 + 24);
                v91 = *(v48 + 25);
                v92 = *(v48 + 32);
                v93 = request_receive;
                v94 = v89;
                v95 = v92;
                if (!*(a2 + 312))
                {
                  v96 = _nw_array_create();
                  v97 = *(a2 + 312);
                  *(a2 + 312) = v96;
                }

                v98 = nw_flow_final_read_create(v93, v94, v90, v91, v95);
                v99 = *(a2 + 312);
                if (v99 && v98)
                {
                  _nw_array_prepend(v99, v98);
                }
              }

              else
              {
                if (gLogDatapath && (nw_endpoint_handler_get_logging_disabled(v5) & 1) == 0)
                {
                  if (__nwlog_connection_log::onceToken[0] != -1)
                  {
                    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                  }

                  v210 = gconnectionLogObj;
                  if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
                  {
                    logc = nw_endpoint_handler_get_id_string(v5);
                    v236 = nw_endpoint_handler_dry_run_string(v5);
                    v211 = nw_endpoint_handler_copy_endpoint(v5);
                    v230 = nw_endpoint_get_logging_description(v211);
                    v212 = nw_endpoint_handler_state_string(v5);
                    v213 = nw_endpoint_handler_mode_string(v5);
                    v214 = nw_endpoint_handler_copy_current_path(v5);
                    *buf = 136448002;
                    v254 = "nw_flow_add_read_request";
                    v255 = 2082;
                    v256 = logc;
                    v257 = 2082;
                    v258 = v236;
                    v259 = 2082;
                    v260 = v230;
                    v261 = 2082;
                    v262 = v212;
                    v263 = 2082;
                    v264 = v213;
                    v265 = 2114;
                    v266 = v214;
                    v267 = 2048;
                    next_max_size = size;
                    _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] Consumed all %zu final bytes", buf, 0x52u);
                  }
                }

                *(a2 + 332) |= 0x80u;
              }

              request_list_report = nw_read_request_list_report(v245);
              v101 = request_list_report;
              if (request_list_report)
              {
                nw_read_request_fail(request_list_report, 57);
              }

              goto LABEL_145;
            }
          }

LABEL_220:
          v136 = v5;
          v137 = (*(v136 + 284) & 0x40) == 0;

          if (v137)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v246 = gconnectionLogObj;
            v138 = v136;

            v139 = v138;
            v140 = (*(v136 + 284) & 1) == 0;

            if (v140)
            {
              v141 = "";
            }

            else
            {
              v141 = "dry-run ";
            }

            v142 = nw_endpoint_handler_copy_endpoint(v139);
            v143 = v142;
            if (v142)
            {
              v144 = _nw_endpoint_get_logging_description(v142);
            }

            else
            {
              v144 = "<NULL>";
            }

            v145 = v139;
            v146 = v145[30];
            if (v146 > 5)
            {
              v147 = "unknown-state";
            }

            else
            {
              v147 = off_1E6A31048[v146];
            }

            loga = v145;

            v148 = loga;
            v149 = v148;
            v150 = v5->mode;
            if (v150 > 2)
            {
              if (v150 == 3)
              {
                v151 = "proxy";
                goto LABEL_246;
              }

              if (v150 != 4)
              {
                if (v150 == 5)
                {
                  v151 = "transform";
                  goto LABEL_246;
                }

                goto LABEL_243;
              }

              v151 = "fallback";
            }

            else
            {
              if (!v150)
              {
                v151 = "path";
                goto LABEL_246;
              }

              if (v150 != 1)
              {
                if (v150 == 2)
                {
                  v151 = nw_endpoint_flow_mode_string(*(v148 + 33));
                  goto LABEL_246;
                }

LABEL_243:
                v151 = "unknown-mode";
                goto LABEL_246;
              }

              v151 = "resolver";
            }

LABEL_246:

            v152 = v149;
            os_unfair_lock_lock(v152 + 28);
            v153 = *(v152 + 8);
            os_unfair_lock_unlock(v152 + 28);

            id_str = v138->id_str;
            *buf = 136447746;
            v254 = "nw_flow_add_read_request";
            v255 = 2082;
            v256 = id_str;
            v257 = 2082;
            v258 = v141;
            v259 = 2082;
            v260 = v144;
            v261 = 2082;
            v262 = v147;
            v263 = 2082;
            v264 = v151;
            v265 = 2114;
            v266 = v153;
            v155 = _os_log_send_and_compose_impl();

            type = OS_LOG_TYPE_ERROR;
            v251 = 0;
            if (!__nwlog_fault(v155, &type, &v251))
            {
              goto LABEL_316;
            }

            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v156 = gconnectionLogObj;
              v157 = type;
              if (!os_log_type_enabled(v156, type))
              {
                goto LABEL_315;
              }

              v158 = v152;

              v159 = v158;
              v160 = (*(v136 + 284) & 1) == 0;

              if (v160)
              {
                v161 = "";
              }

              else
              {
                v161 = "dry-run ";
              }

              v162 = nw_endpoint_handler_copy_endpoint(v159);
              v163 = v162;
              v247 = v161;
              if (v162)
              {
                v228 = _nw_endpoint_get_logging_description(v162);
              }

              else
              {
                v228 = "<NULL>";
              }

              v189 = v159;
              v190 = v189;
              v191 = loga[30];
              if (v191 > 5)
              {
                v192 = "unknown-state";
              }

              else
              {
                v192 = off_1E6A31048[v191];
              }

              v193 = v190;
              v194 = v193;
              v195 = v5->mode;
              if (v195 > 2)
              {
                switch(v195)
                {
                  case 3:
                    v196 = "proxy";
                    goto LABEL_307;
                  case 4:
                    v196 = "fallback";
                    goto LABEL_307;
                  case 5:
                    v196 = "transform";
                    goto LABEL_307;
                }
              }

              else
              {
                switch(v195)
                {
                  case 0:
                    v196 = "path";
                    goto LABEL_307;
                  case 1:
                    v196 = "resolver";
                    goto LABEL_307;
                  case 2:
                    v196 = nw_endpoint_flow_mode_string(v193[33]);
LABEL_307:

                    v205 = v194;
                    os_unfair_lock_lock(v152 + 28);
                    v206 = *(v152 + 8);
                    os_unfair_lock_unlock(v152 + 28);

                    *buf = 136447746;
                    v254 = "nw_flow_add_read_request";
                    v255 = 2082;
                    v256 = id_str;
                    v257 = 2082;
                    v258 = v247;
                    v259 = 2082;
                    v260 = v228;
                    v261 = 2082;
                    v262 = v192;
                    v263 = 2082;
                    v264 = v196;
                    v265 = 2114;
                    v266 = v206;
                    _os_log_impl(&dword_181A37000, v156, v157, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read", buf, 0x48u);

                    goto LABEL_315;
                }
              }

              v196 = "unknown-mode";
              goto LABEL_307;
            }

            if (v251 == 1)
            {
              v164 = __nw_create_backtrace_string();
              if (v164)
              {
                v165 = v164;
                if (__nwlog_connection_log::onceToken[0] != -1)
                {
                  dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
                }

                v166 = gconnectionLogObj;
                v167 = type;
                if (os_log_type_enabled(v166, type))
                {
                  v168 = nw_endpoint_handler_get_id_string(v152);
                  v169 = nw_endpoint_handler_dry_run_string(v152);
                  v248 = nw_endpoint_handler_copy_endpoint(v152);
                  v170 = nw_endpoint_get_logging_description(v248);
                  v171 = nw_endpoint_handler_state_string(v152);
                  v172 = nw_endpoint_handler_mode_string(v152);
                  v173 = nw_endpoint_handler_copy_current_path(v152);
                  *buf = 136448002;
                  v254 = "nw_flow_add_read_request";
                  v255 = 2082;
                  v256 = v168;
                  v257 = 2082;
                  v258 = v169;
                  v259 = 2082;
                  v260 = v170;
                  v261 = 2082;
                  v262 = v171;
                  v263 = 2082;
                  v264 = v172;
                  v265 = 2114;
                  v266 = v173;
                  v267 = 2082;
                  next_max_size = v165;
                  _os_log_impl(&dword_181A37000, v166, v167, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, dumping backtrace:%{public}s", buf, 0x52u);
                }

                free(v165);
                goto LABEL_316;
              }

              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v156 = gconnectionLogObj;
              v181 = type;
              if (os_log_type_enabled(v156, type))
              {
                v182 = nw_endpoint_handler_get_id_string(v152);
                v183 = nw_endpoint_handler_dry_run_string(v152);
                v184 = nw_endpoint_handler_copy_endpoint(v152);
                v185 = nw_endpoint_get_logging_description(v184);
                v186 = nw_endpoint_handler_state_string(v152);
                v187 = nw_endpoint_handler_mode_string(v152);
                v188 = nw_endpoint_handler_copy_current_path(v152);
                *buf = 136447746;
                v254 = "nw_flow_add_read_request";
                v255 = 2082;
                v256 = v182;
                v257 = 2082;
                v258 = v183;
                v259 = 2082;
                v260 = v185;
                v261 = 2082;
                v262 = v186;
                v263 = 2082;
                v264 = v187;
                v265 = 2114;
                v266 = v188;
                _os_log_impl(&dword_181A37000, v156, v181, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, no backtrace", buf, 0x48u);
              }

              goto LABEL_315;
            }

            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v156 = gconnectionLogObj;
            v174 = type;
            if (!os_log_type_enabled(v156, type))
            {
LABEL_315:

LABEL_316:
              if (v155)
              {
                free(v155);
              }

              goto LABEL_318;
            }

            v175 = v152;

            v176 = v175;
            v177 = (*(v136 + 284) & 1) == 0;

            if (v177)
            {
              v178 = "";
            }

            else
            {
              v178 = "dry-run ";
            }

            v179 = nw_endpoint_handler_copy_endpoint(v176);
            v180 = v179;
            v249 = v178;
            if (v179)
            {
              v229 = _nw_endpoint_get_logging_description(v179);
            }

            else
            {
              v229 = "<NULL>";
            }

            v197 = v176;
            v198 = v197;
            v199 = loga[30];
            if (v199 > 5)
            {
              v200 = "unknown-state";
            }

            else
            {
              v200 = off_1E6A31048[v199];
            }

            v201 = v198;
            v202 = v201;
            v203 = v5->mode;
            if (v203 > 2)
            {
              switch(v203)
              {
                case 3:
                  v204 = "proxy";
                  goto LABEL_314;
                case 4:
                  v204 = "fallback";
                  goto LABEL_314;
                case 5:
                  v204 = "transform";
                  goto LABEL_314;
              }
            }

            else
            {
              switch(v203)
              {
                case 0:
                  v204 = "path";
                  goto LABEL_314;
                case 1:
                  v204 = "resolver";
                  goto LABEL_314;
                case 2:
                  v204 = nw_endpoint_flow_mode_string(v201[33]);
LABEL_314:

                  v207 = v202;
                  os_unfair_lock_lock(v152 + 28);
                  v208 = *(v152 + 8);
                  os_unfair_lock_unlock(v152 + 28);

                  *buf = 136447746;
                  v254 = "nw_flow_add_read_request";
                  v255 = 2082;
                  v256 = id_str;
                  v257 = 2082;
                  v258 = v249;
                  v259 = 2082;
                  v260 = v229;
                  v261 = 2082;
                  v262 = v200;
                  v263 = 2082;
                  v264 = v204;
                  v265 = 2114;
                  v266 = v208;
                  _os_log_impl(&dword_181A37000, v156, v174, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] No final data returned from nw_flow_remove_next_final_read, backtrace limit exceeded", buf, 0x48u);

                  goto LABEL_315;
              }
            }

            v204 = "unknown-mode";
            goto LABEL_314;
          }

LABEL_318:
          v102 = 0;
          goto LABEL_319;
        }

        v120 = __nwlog_obj();
        *buf = 136446210;
        v254 = "nw_flow_remove_next_final_read";
        v121 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v251 = 0;
        if (__nwlog_fault(v121, &type, &v251))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v122 = __nwlog_obj();
            v123 = type;
            if (os_log_type_enabled(v122, type))
            {
              *buf = 136446210;
              v254 = "nw_flow_remove_next_final_read";
              _os_log_impl(&dword_181A37000, v122, v123, "%{public}s called with null flow_protocol", buf, 0xCu);
            }
          }

          else
          {
            if (v251 == 1)
            {
              v125 = __nw_create_backtrace_string();
              v126 = __nwlog_obj();
              v127 = type;
              v128 = os_log_type_enabled(v126, type);
              if (v125)
              {
                if (v128)
                {
                  *buf = 136446466;
                  v254 = "nw_flow_remove_next_final_read";
                  v255 = 2082;
                  v256 = v125;
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v125);
              }

              else
              {
                if (v128)
                {
                  *buf = 136446210;
                  v254 = "nw_flow_remove_next_final_read";
                  _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null flow_protocol, no backtrace", buf, 0xCu);
                }
              }

              goto LABEL_218;
            }

            v122 = __nwlog_obj();
            v129 = type;
            if (os_log_type_enabled(v122, type))
            {
              *buf = 136446210;
              v254 = "nw_flow_remove_next_final_read";
              _os_log_impl(&dword_181A37000, v122, v129, "%{public}s called with null flow_protocol, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_218:
        if (v121)
        {
          free(v121);
        }

        goto LABEL_220;
      }

      v49 = v5;
      v50 = (v49->state & 0xFFFFFFFE) == 4;

      if (!v50)
      {
        if ((*(a2 + 332) & 0x80) == 0)
        {
          request_list_append = nw_read_request_list_append(*(a2 + 216), v245);
          v62 = *(a2 + 216);
          *(a2 + 216) = request_list_append;

LABEL_145:
          v102 = 1;
LABEL_319:

          return v102;
        }

        v63 = *(a2 + 320);
        if (v63)
        {
          nw_read_request_report_error_with_override(v245, 0, v63);
        }

        else
        {
          v67 = v49;
          v68 = (*(v67 + 284) & 0x40) == 0;

          if (v68)
          {
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v69 = gconnectionLogObj;
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v70 = nw_endpoint_handler_get_id_string(v67);
              v71 = nw_endpoint_handler_dry_run_string(v67);
              v72 = nw_endpoint_handler_copy_endpoint(v67);
              v73 = nw_endpoint_get_logging_description(v72);
              v74 = nw_endpoint_handler_state_string(v67);
              v75 = nw_endpoint_handler_mode_string(v67);
              v76 = nw_endpoint_handler_copy_current_path(v67);
              *buf = 136447746;
              v254 = "nw_flow_add_read_request";
              v255 = 2082;
              v256 = v70;
              v257 = 2082;
              v258 = v71;
              v259 = 2082;
              v260 = v73;
              v261 = 2082;
              v262 = v74;
              v263 = 2082;
              v264 = v75;
              v265 = 2114;
              v266 = v76;
              _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_ERROR, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] already delivered final read, cannot accept read requests", buf, 0x48u);
            }
          }

          v77 = [[NWConcrete_nw_error alloc] initWithDomain:96 code:?];
          nw_read_request_report_error_with_override(v245, 0, v77);
        }

        goto LABEL_318;
      }

      v51 = v49;
      v52 = (*(v51 + 284) & 0x40) == 0;

      if (!v52)
      {
        goto LABEL_318;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v53 = gconnectionLogObj;
      if (!os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
LABEL_158:

        goto LABEL_318;
      }

      v54 = v51;

      v55 = v54;
      v56 = (*(v51 + 284) & 1) == 0;

      if (v56)
      {
        v57 = "";
      }

      else
      {
        v57 = "dry-run ";
      }

      v58 = nw_endpoint_handler_copy_endpoint(v55);
      v59 = v58;
      if (v58)
      {
        v60 = _nw_endpoint_get_logging_description(v58);
      }

      else
      {
        v60 = "<NULL>";
      }

      v78 = v55;
      v79 = v78;
      state = v49->state;
      if (state > 5)
      {
        v81 = "unknown-state";
      }

      else
      {
        v81 = off_1E6A31048[state];
      }

      v82 = v79;
      v83 = v82;
      v84 = v5->mode;
      if (v84 > 2)
      {
        switch(v84)
        {
          case 3:
            v85 = "proxy";
            goto LABEL_157;
          case 4:
            v85 = "fallback";
            goto LABEL_157;
          case 5:
            v85 = "transform";
            goto LABEL_157;
        }
      }

      else
      {
        switch(v84)
        {
          case 0:
            v85 = "path";
            goto LABEL_157;
          case 1:
            v85 = "resolver";
            goto LABEL_157;
          case 2:
            v85 = nw_endpoint_flow_mode_string(v82[33]);
LABEL_157:

            v103 = v83;
            os_unfair_lock_lock(v103 + 28);
            v104 = v103[8];
            os_unfair_lock_unlock(v103 + 28);

            *buf = 136447746;
            v254 = "nw_flow_add_read_request";
            v255 = 2082;
            v256 = v54 + 184;
            v257 = 2082;
            v258 = v57;
            v259 = 2082;
            v260 = v60;
            v261 = 2082;
            v262 = v81;
            v263 = 2082;
            v264 = v85;
            v265 = 2114;
            v266 = v104;
            _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] cannot accept read requests", buf, 0x48u);

            goto LABEL_158;
        }
      }

      v85 = "unknown-mode";
      goto LABEL_157;
    }

    v107 = __nwlog_obj();
    *buf = 136446210;
    v254 = "nw_flow_add_read_request";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v251 = 0;
    if (__nwlog_fault(v21, &type, &v251))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v108 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v254 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v108, "%{public}s called with null read_request", buf, 0xCu);
        }

LABEL_148:

        goto LABEL_149;
      }

      if (v251 != 1)
      {
        v22 = __nwlog_obj();
        v124 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v254 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v124, "%{public}s called with null read_request, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_148;
      }

      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v118 = type;
      v119 = os_log_type_enabled(v22, type);
      if (!backtrace_string)
      {
        if (v119)
        {
          *buf = 136446210;
          v254 = "nw_flow_add_read_request";
          _os_log_impl(&dword_181A37000, v22, v118, "%{public}s called with null read_request, no backtrace", buf, 0xCu);
        }

        goto LABEL_148;
      }

      if (v119)
      {
        *buf = 136446466;
        v254 = "nw_flow_add_read_request";
        v255 = 2082;
        v256 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v118, "%{public}s called with null read_request, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_186:

      free(backtrace_string);
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    if (mode > 5)
    {
      v20 = "unknown-mode";
    }

    else
    {
      v20 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v254 = "nw_flow_add_read_request";
    v255 = 2082;
    v256 = v20;
    v257 = 2082;
    v258 = "flow";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v251 = 0;
    if (__nwlog_fault(v21, &type, &v251))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          if (mode > 5)
          {
            v24 = "unknown-mode";
          }

          else
          {
            v24 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v254 = "nw_flow_add_read_request";
          v255 = 2082;
          v256 = v24;
          v257 = 2082;
          v258 = "flow";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
        }
      }

      else if (v251 == 1)
      {
        v25 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v26 = type;
        v27 = os_log_type_enabled(v22, type);
        if (v25)
        {
          if (v27)
          {
            if (mode > 5)
            {
              v28 = "unknown-mode";
            }

            else
            {
              v28 = off_1E6A31018[mode];
            }

            *buf = 136446978;
            v254 = "nw_flow_add_read_request";
            v255 = 2082;
            v256 = v28;
            v257 = 2082;
            v258 = "flow";
            v259 = 2082;
            v260 = v25;
            _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, dumping backtrace:%{public}s", buf, 0x2Au);
          }

          free(v25);
          if (!v21)
          {
            return 0;
          }

          goto LABEL_150;
        }

        if (v27)
        {
          if (mode > 5)
          {
            v31 = "unknown-mode";
          }

          else
          {
            v31 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v254 = "nw_flow_add_read_request";
          v255 = 2082;
          v256 = v31;
          v257 = 2082;
          v258 = "flow";
          _os_log_impl(&dword_181A37000, v22, v26, "%{public}s Handler is in mode %{public}s, expected %{public}s, no backtrace", buf, 0x20u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v29 = type;
        if (os_log_type_enabled(v22, type))
        {
          if (mode > 5)
          {
            v30 = "unknown-mode";
          }

          else
          {
            v30 = off_1E6A31018[mode];
          }

          *buf = 136446722;
          v254 = "nw_flow_add_read_request";
          v255 = 2082;
          v256 = v30;
          v257 = 2082;
          v258 = "flow";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s Handler is in mode %{public}s, expected %{public}s, backtrace limit exceeded", buf, 0x20u);
        }
      }

      goto LABEL_148;
    }
  }

LABEL_149:
  if (v21)
  {
LABEL_150:
    free(v21);
  }

  return 0;
}

char *nw_flow_has_final_read(nw_flow_protocol *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = a1->final_read_list;
    if (result)
    {
      return !_nw_array_is_empty(result);
    }

    return result;
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_flow_has_final_read";
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
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol";
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
            v12 = "nw_flow_has_final_read";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null flow_protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_flow_has_final_read";
        v6 = "%{public}s called with null flow_protocol, backtrace limit exceeded";
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

uint64_t nw_read_request_list_append(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_read_request_list_append";
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
          v34 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null request", buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v28 = type;
        v29 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v34 = "nw_read_request_list_append";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null request, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v29)
        {
          *buf = 136446210;
          v34 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v28, "%{public}s called with null request, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v34 = "nw_read_request_list_append";
          _os_log_impl(&dword_181A37000, v12, v30, "%{public}s called with null request, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_36:
    if (v11)
    {
      free(v11);
    }

    v19 = 0;
    goto LABEL_20;
  }

  if (!v4[1])
  {
    if (!v4[2])
    {
      goto LABEL_4;
    }

LABEL_16:
    v17 = __nwlog_obj();
    os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v34 = "nw_read_request_list_append";
    v18 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v18);
    if (result)
    {
      goto LABEL_39;
    }

    free(v18);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = v5;
    v3 = v9;
    if (v5[2])
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v14 = __nwlog_obj();
  os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v34 = "nw_read_request_list_append";
  v15 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v15);
  if (result)
  {
    goto LABEL_39;
  }

  free(v15);
  if (v5[2])
  {
    goto LABEL_16;
  }

LABEL_4:
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_5:
  v6 = v3[2];
  if (v6)
  {
    v8 = *(v6 + 8);
    v7 = (v6 + 8);
    if (!v8)
    {
LABEL_7:
      objc_storeStrong(v7, a2);
      v9 = 0;
      v3[2] = v5;
LABEL_8:
      v5[2] = v9;
      v9 = v3;
LABEL_19:
      v3 = v9;
      v19 = v3;
LABEL_20:

      return v19;
    }
  }

  else
  {
    v20 = __nwlog_obj();
    os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v34 = "nw_read_request_list_append";
    v21 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v21);
    if (result)
    {
      goto LABEL_39;
    }

    free(v21);
    v22 = v3[2];
    v23 = *(v22 + 8);
    v7 = (v22 + 8);
    if (!v23)
    {
      goto LABEL_7;
    }
  }

  v24 = v7;
  v25 = __nwlog_obj();
  os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v34 = "nw_read_request_list_append";
  v26 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v26);
  if (!result)
  {
    free(v26);
    v7 = v24;
    goto LABEL_7;
  }

LABEL_39:
  __break(1u);
  return result;
}

void nw_connection_receive_internal(void *a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_connection_receive_internal";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (!__nwlog_fault(v18, &type, &v34))
    {
      goto LABEL_41;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v19, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v37 = "nw_connection_receive_internal";
          v38 = 2082;
          v39 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_41:
        if (!v18)
        {
          goto LABEL_7;
        }

LABEL_42:
        free(v18);
        goto LABEL_7;
      }

      if (v25)
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v37 = "nw_connection_receive_internal";
        _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_40:

    goto LABEL_41;
  }

  if (v11)
  {
    v13 = nw_read_request_create(a3, a4, v10, v9, v11);
    if (v13)
    {
      nw_connection_add_read_request(v9, v13);
    }

    else
    {
      v14 = [[NWConcrete_nw_error alloc] initWithDomain:22 code:?];
      v15 = v9[48];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = ___ZL30nw_connection_receive_internalP24NWConcrete_nw_connectionPU32objcproto21OS_nw_content_context8NSObjectjjU13block_pointerFvPU27objcproto16OS_dispatch_dataS1_S3_bPU22objcproto11OS_nw_errorS1_E_block_invoke;
      v31[3] = &unk_1E6A3D710;
      v32 = v14;
      v33 = v12;
      v16 = v14;
      nw_connection_async_client_if_needed_with_override(v9, 0, v15, v31);
    }

    goto LABEL_7;
  }

  v21 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_connection_receive_internal";
  v18 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (!__nwlog_fault(v18, &type, &v34))
  {
    goto LABEL_41;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v19 = __nwlog_obj();
    v22 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null completion", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v34 != 1)
  {
    v19 = __nwlog_obj();
    v30 = type;
    if (os_log_type_enabled(v19, type))
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v30, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_40;
  }

  v26 = __nw_create_backtrace_string();
  v19 = __nwlog_obj();
  v27 = type;
  v28 = os_log_type_enabled(v19, type);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v37 = "nw_connection_receive_internal";
      _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null completion, no backtrace", buf, 0xCu);
    }

    goto LABEL_40;
  }

  if (v28)
  {
    *buf = 136446466;
    v37 = "nw_connection_receive_internal";
    v38 = 2082;
    v39 = v26;
    _os_log_impl(&dword_181A37000, v19, v27, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v26);
  if (v18)
  {
    goto LABEL_42;
  }

LABEL_7:
}

NWConcrete_nw_read_request *nw_read_request_create(unint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a2)
  {
    v14 = a1 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = a1;
  }

  if (!v12)
  {
    v43 = __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_read_request_create";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v17, &type, &v50))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v44 = __nwlog_obj();
      v45 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null completion", buf, 0xCu);
      }
    }

    else if (v50 == 1)
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
          v53 = "nw_read_request_create";
          v54 = 2082;
          v55 = backtrace_string;
          _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_54;
      }

      if (v48)
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v47, "%{public}s called with null completion, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v44 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v44, type))
      {
        *buf = 136446210;
        v53 = "nw_read_request_create";
        _os_log_impl(&dword_181A37000, v44, v49, "%{public}s called with null completion, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_54;
  }

  if (v15 <= a2)
  {
    if (v10)
    {
      v20 = v10;
      if (v20 == &__block_literal_global_10_44685)
      {
      }

      else
      {
        if (v20 == &__block_literal_global_8_44676 || v20 == &__block_literal_global_6_44667 || v20 == &__block_literal_global_44658)
        {

          goto LABEL_20;
        }

        v21 = v20;
        os_unfair_lock_lock(v20 + 28);
        v22 = BYTE2(v21[29]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v21 + 28);

        if ((v22 & 0x40) == 0)
        {
LABEL_20:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v53 = "nw_read_request_create";
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Cannot receive a reply for a protocol that does not support replies", buf, 0xCu);
          }

          goto LABEL_56;
        }
      }
    }

    v28 = objc_alloc_init(NWConcrete_nw_read_request);
    if (v28)
    {
      v29 = _Block_copy(v13);
      data_completion = v28->data_completion;
      v28->data_completion = v29;

      objc_storeStrong(&v28->connection, a4);
      v28->qos_class = qos_class_self();
      v28->min = v15;
      v28->max = a2;
      objc_storeStrong(&v28->repliable_message, a3);
      v28->variant = 1;
      if (_nw_signposts_once != -1)
      {
        dispatch_once(&_nw_signposts_once, &__block_literal_global_55325);
      }

      if (_nw_signposts_enabled == 1 && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      v31 = v28;
      goto LABEL_65;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    *buf = 136446210;
    v53 = "nw_read_request_create";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v33, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed", buf, 0xCu);
        }
      }

      else if (v50 == 1)
      {
        v36 = __nw_create_backtrace_string();
        if (v36)
        {
          v37 = v36;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v38 = gLogObj;
          v39 = type;
          if (os_log_type_enabled(v38, type))
          {
            *buf = 136446466;
            v53 = "nw_read_request_create";
            v54 = 2082;
            v55 = v37;
            _os_log_impl(&dword_181A37000, v38, v39, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          if (!v33)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        v34 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v41, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v40 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446210;
          v53 = "nw_read_request_create";
          _os_log_impl(&dword_181A37000, v34, v40, "%{public}s [[NW_CONCRETE_CLASS_NAME(nw_read_request) alloc] init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v33)
    {
LABEL_65:

      goto LABEL_66;
    }

LABEL_64:
    free(v33);
    goto LABEL_65;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136446722;
  v53 = "nw_read_request_create";
  v54 = 2048;
  v55 = v15;
  v56 = 2048;
  v57 = a2;
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v50 = 0;
  if (__nwlog_fault(v17, &type, &v50))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v19, "%{public}s minlength (%zu) > maxlength (%zu)", buf, 0x20u);
      }
    }

    else if (v50 == 1)
    {
      v24 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v25 = type;
      v26 = os_log_type_enabled(v18, type);
      if (v24)
      {
        if (v26)
        {
          *buf = 136446978;
          v53 = "nw_read_request_create";
          v54 = 2048;
          v55 = v15;
          v56 = 2048;
          v57 = a2;
          v58 = 2082;
          v59 = v24;
          _os_log_impl(&dword_181A37000, v18, v25, "%{public}s minlength (%zu) > maxlength (%zu), dumping backtrace:%{public}s", buf, 0x2Au);
        }

        free(v24);
        if (!v17)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v26)
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v25, "%{public}s minlength (%zu) > maxlength (%zu), no backtrace", buf, 0x20u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446722;
        v53 = "nw_read_request_create";
        v54 = 2048;
        v55 = v15;
        v56 = 2048;
        v57 = a2;
        _os_log_impl(&dword_181A37000, v18, v27, "%{public}s minlength (%zu) > maxlength (%zu), backtrace limit exceeded", buf, 0x20u);
      }
    }
  }

LABEL_54:
  if (v17)
  {
LABEL_55:
    free(v17);
  }

LABEL_56:
  v28 = 0;
LABEL_66:

  return v28;
}

void nw_connection_add_read_request(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke;
  v10[3] = &unk_1E6A3BE58;
  v5 = v3;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  os_unfair_lock_lock(v3 + 34);
  ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke(v10);
  os_unfair_lock_unlock(v3 + 34);
  if (*(v15 + 24) == 1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke_2;
    v7[3] = &unk_1E6A3D760;
    v8 = v5;
    v9 = v6;
    nw_connection_async_if_needed(v8, v7);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_181AFDB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  _Block_object_dispose((v23 - 96), 8);

  _Unwind_Resume(a1);
}

void ___ZL30nw_connection_add_read_requestP24NWConcrete_nw_connectionPU29objcproto18OS_nw_read_request8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 0x20) != 0)
  {
    request_list_append = nw_read_request_list_append(*(v1 + 120), *(a1 + 40));
    v4 = *(a1 + 32);
    v5 = *(v4 + 120);
    *(v4 + 120) = request_list_append;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void nw_flow_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  handle = a1->handle;
  v3 = handle->handler;
  v4 = v3;
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_flow_output_available";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v11, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null handler", buf, 0xCu);
        }
      }

      else if (v26 == 1)
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
            v29 = "nw_flow_output_available";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v20)
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null handler, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_12;
  }

  v5 = v3;
  mode = v5->mode;

  if (mode == 2)
  {
    v7 = nw_endpoint_handler_copy_flow(v5);
    if (v7)
    {
      nw_flow_service_writes(v5, v7, handle);
LABEL_5:

      goto LABEL_12;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_flow_output_available";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (__nwlog_fault(v15, &type, &v26))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v16 = __nwlog_obj();
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null endpoint_flow", buf, 0xCu);
        }
      }

      else if (v26 == 1)
      {
        v22 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v23 = type;
        v24 = os_log_type_enabled(v16, type);
        if (v22)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "nw_flow_output_available";
            v30 = 2082;
            v31 = v22;
            _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint_flow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v22);
          goto LABEL_47;
        }

        if (v24)
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null endpoint_flow, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v16 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136446210;
          v29 = "nw_flow_output_available";
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null endpoint_flow, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_47:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_5;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (mode > 5)
    {
      v9 = "unknown-mode";
    }

    else
    {
      v9 = off_1E6A31018[mode];
    }

    *buf = 136446722;
    v29 = "nw_flow_output_available";
    v30 = 2082;
    v31 = v9;
    v32 = 2082;
    v33 = "flow";
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s Handler is in mode %{public}s, expected %{public}s", buf, 0x20u);
  }

LABEL_12:
}

char *nw_path_copy_flow_for_registration(NWConcrete_nw_path *a1, NWConcrete_nw_path_flow_registration *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = _nw_path_copy_flow_for_registration(v3, v4->registration_id);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_copy_flow_for_registration";
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration", buf, 0xCu);
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_copy_flow_for_registration";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_copy_flow_for_registration";
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null path", buf, 0xCu);
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_copy_flow_for_registration";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_copy_flow_for_registration";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
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

void nw_path_necp_check_for_updates(void *a1, _OWORD *a2, unsigned int a3)
{
  v149 = *MEMORY[0x1E69E9840];
  v5 = a1;
  pthread_once(&nw_settings_setup_atfork::pOnce, nw_settings_setup_atfork_inner);
  v137 = v5;
  v133 = a3;
  size = (a3 << 9) + 1024;
  globals_for_path = nw_context_get_globals_for_path(v5);
  memset(uu, 0, sizeof(uu));
  v135 = a2;
  if (!a2)
  {
    goto LABEL_4;
  }

  *uu = *a2;
  while (1)
  {
    bzero(v146, 0xC00uLL);
    nw_path_shared_necp_fd(v137);
    v6 = necp_client_action();
    v7 = 0;
    v8 = v146;
    if (v6 > 0)
    {
LABEL_25:
      v138 = v7;
      v17 = v6;
      if (v6 < 5)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_client_id";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        v19 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v144 = 0;
        if (__nwlog_fault(v19, &type, &v144))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v21 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v20, v21, "%{public}s NECP buffer too short %zu", buf, 0x16u);
            }
          }

          else if (v144 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v44 = type;
            v45 = os_log_type_enabled(v20, type);
            if (backtrace_string)
            {
              if (v45)
              {
                *buf = 136446722;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v6;
                *&buf[22] = 2082;
                *&buf[24] = backtrace_string;
                _os_log_impl(&dword_181A37000, v20, v44, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
              }

              free(backtrace_string);
              if (!v19)
              {
LABEL_108:
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v57 = gLogObj;
                *buf = 136446466;
                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                *&buf[12] = 2048;
                *&buf[14] = v6;
                v58 = _os_log_send_and_compose_impl();

                type = OS_LOG_TYPE_ERROR;
                v144 = 0;
                if ((__nwlog_fault(v58, &type, &v144) & 1) == 0)
                {
                  goto LABEL_125;
                }

                if (type == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v59 = gLogObj;
                  v60 = type;
                  if (os_log_type_enabled(v59, type))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v59, v60, "%{public}s NECP buffer too short %zu", buf, 0x16u);
                  }
                }

                else if (v144 == 1)
                {
                  v61 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v59 = gLogObj;
                  v62 = type;
                  v63 = os_log_type_enabled(v59, type);
                  if (v61)
                  {
                    if (v63)
                    {
                      *buf = 136446722;
                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                      *&buf[12] = 2048;
                      *&buf[14] = v6;
                      *&buf[22] = 2082;
                      *&buf[24] = v61;
                      _os_log_impl(&dword_181A37000, v59, v62, "%{public}s NECP buffer too short %zu, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v61);
                    if (!v58)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_126;
                  }

                  if (v63)
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v59, v62, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v59 = gLogObj;
                  v64 = type;
                  if (os_log_type_enabled(v59, type))
                  {
                    *buf = 136446466;
                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                    *&buf[12] = 2048;
                    *&buf[14] = v6;
                    _os_log_impl(&dword_181A37000, v59, v64, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
                  }
                }

LABEL_124:

                goto LABEL_125;
              }

LABEL_107:
              free(v19);
              goto LABEL_108;
            }

            if (v45)
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v20, v44, "%{public}s NECP buffer too short %zu, no backtrace", buf, 0x16u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v20 = gLogObj;
            v50 = type;
            if (os_log_type_enabled(v20, type))
            {
              *buf = 136446466;
              *&buf[4] = "nw_path_parse_necp_client_id";
              *&buf[12] = 2048;
              *&buf[14] = v6;
              _os_log_impl(&dword_181A37000, v20, v50, "%{public}s NECP buffer too short %zu, backtrace limit exceeded", buf, 0x16u);
            }
          }
        }

        if (!v19)
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }

      v22 = 0;
      v23 = v6 - 5;
      v24 = v8 + 1;
      v136 = v8 + 5;
      v140 = v23;
      v141 = v8;
      v139 = v8 + 1;
      while (1)
      {
        if (v22 > v23)
        {
          v38 = v22;
          if (v22 == v6)
          {
            goto LABEL_137;
          }

          goto LABEL_227;
        }

        v25 = v8[v22];
        v26 = *&v24[v22];
        if (!v26)
        {
          v32 = 0;
          goto LABEL_61;
        }

        if (v26 <= 0xFFFFFFF9 && v6 >= (v26 + 5) && v6 - (v26 + 5) >= v22)
        {
          v32 = &v136[v22];
          goto LABEL_61;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v28 = gLogObj;
        *buf = 136446978;
        *&buf[4] = "nw_necp_buffer_get_tlv_value";
        *&buf[12] = 2048;
        *&buf[14] = v22;
        *&buf[22] = 2048;
        *&buf[24] = v6;
        *&buf[32] = 1024;
        *&buf[34] = v26;
        v29 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v144 = 0;
        if (__nwlog_fault(v29, &type, &v144))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            v31 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v22;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v26;
              _os_log_impl(&dword_181A37000, v30, v31, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
            }
          }

          else if (v144 == 1)
          {
            v33 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            v34 = type;
            v35 = os_log_type_enabled(v30, type);
            if (v33)
            {
              if (v35)
              {
                *buf = 136447234;
                *&buf[4] = "nw_necp_buffer_get_tlv_value";
                *&buf[12] = 2048;
                *&buf[14] = v22;
                *&buf[22] = 2048;
                *&buf[24] = v6;
                *&buf[32] = 1024;
                *&buf[34] = v26;
                *&buf[38] = 2082;
                *&buf[40] = v33;
                _os_log_impl(&dword_181A37000, v30, v34, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
              }

              free(v33);
              if (!v29)
              {
                goto LABEL_60;
              }

LABEL_59:
              free(v29);
              goto LABEL_60;
            }

            if (v35)
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v22;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v26;
              _os_log_impl(&dword_181A37000, v30, v34, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v30 = gLogObj;
            v36 = type;
            if (os_log_type_enabled(v30, type))
            {
              *buf = 136446978;
              *&buf[4] = "nw_necp_buffer_get_tlv_value";
              *&buf[12] = 2048;
              *&buf[14] = v22;
              *&buf[22] = 2048;
              *&buf[24] = v6;
              *&buf[32] = 1024;
              *&buf[34] = v26;
              _os_log_impl(&dword_181A37000, v30, v36, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
            }
          }
        }

        if (v29)
        {
          goto LABEL_59;
        }

LABEL_60:
        v32 = 0;
        v23 = v6 - 5;
        v8 = v141;
        v24 = v139;
LABEL_61:
        v37 = v26 + 5;
        v38 = v26 + 5 + v22;
        if (v38 > v6)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v46 = gLogObj;
          *buf = 136446978;
          *&buf[4] = "nw_path_parse_necp_client_id";
          *&buf[12] = 2048;
          *&buf[14] = v26 + 5;
          *&buf[22] = 2048;
          *&buf[24] = v22;
          *&buf[32] = 2048;
          *&buf[34] = v6;
          v47 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v144 = 0;
          if (__nwlog_fault(v47, &type, &v144))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v49 = type;
              if (os_log_type_enabled(v48, type))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v26 + 5;
                *&buf[22] = 2048;
                *&buf[24] = v22;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v48, v49, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, 0x2Au);
              }

              goto LABEL_133;
            }

            if (v144 == 1)
            {
              v54 = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v55 = type;
              v56 = os_log_type_enabled(v48, type);
              if (v54)
              {
                if (v56)
                {
                  *buf = 136447234;
                  *&buf[4] = "nw_path_parse_necp_client_id";
                  *&buf[12] = 2048;
                  *&buf[14] = v37;
                  *&buf[22] = 2048;
                  *&buf[24] = v22;
                  *&buf[32] = 2048;
                  *&buf[34] = v6;
                  *&buf[42] = 2082;
                  *&buf[44] = v54;
                  _os_log_impl(&dword_181A37000, v48, v55, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x34u);
                }

                free(v54);
                if (!v47)
                {
LABEL_136:
                  v23 = v6 - 5;
                  v8 = v141;
                  v24 = v139;
                  if (v38 == v6)
                  {
                    goto LABEL_137;
                  }

LABEL_227:
                  v107 = __nwlog_obj();
                  *buf = 136446722;
                  *&buf[4] = "nw_path_parse_necp_client_id";
                  *&buf[12] = 2048;
                  *&buf[14] = v38;
                  *&buf[22] = 2048;
                  *&buf[24] = v6;
                  v108 = _os_log_send_and_compose_impl();

                  type = OS_LOG_TYPE_ERROR;
                  v144 = 0;
                  if (__nwlog_fault(v108, &type, &v144))
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      v109 = __nwlog_obj();
                      v110 = type;
                      if (os_log_type_enabled(v109, type))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v38;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v109, v110, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
                      }

                      goto LABEL_284;
                    }

                    if (v144 == 1)
                    {
                      v116 = __nw_create_backtrace_string();
                      v109 = __nwlog_obj();
                      v117 = type;
                      v118 = os_log_type_enabled(v109, type);
                      if (v116)
                      {
                        if (v118)
                        {
                          *buf = 136446978;
                          *&buf[4] = "nw_path_parse_necp_client_id";
                          *&buf[12] = 2048;
                          *&buf[14] = v38;
                          *&buf[22] = 2048;
                          *&buf[24] = v6;
                          *&buf[32] = 2082;
                          *&buf[34] = v116;
                          _os_log_impl(&dword_181A37000, v109, v117, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
                        }

                        free(v116);
                        goto LABEL_285;
                      }

                      if (v118)
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v38;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v109, v117, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v109 = __nwlog_obj();
                      v130 = type;
                      if (os_log_type_enabled(v109, type))
                      {
                        *buf = 136446722;
                        *&buf[4] = "nw_path_parse_necp_client_id";
                        *&buf[12] = 2048;
                        *&buf[14] = v38;
                        *&buf[22] = 2048;
                        *&buf[24] = v6;
                        _os_log_impl(&dword_181A37000, v109, v130, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
                      }
                    }

LABEL_284:
                  }

LABEL_285:
                  if (v108)
                  {
                    free(v108);
                  }

                  v23 = v6 - 5;
                  v8 = v141;
                  v24 = v139;
LABEL_137:
                  v66 = 0;
                  while (2)
                  {
                    v67 = v8[v66];
                    v68 = *&v24[v66];
                    if (!v68 || v68 <= 0xFFFFFFF9 && (v17 >= v68 + 5 ? (v69 = v17 - (v68 + 5) >= v66) : (v69 = 0), v69))
                    {
LABEL_164:
                      v79 = v68 + 5;
                      v80 = v68 + 5 + v66;
                      if (v80 > v17)
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v81 = gLogObj;
                        *buf = 136446978;
                        *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                        *&buf[12] = 2048;
                        *&buf[14] = v68 + 5;
                        *&buf[22] = 2048;
                        *&buf[24] = v66;
                        *&buf[32] = 2048;
                        *&buf[34] = v17;
                        v82 = _os_log_send_and_compose_impl();

                        type = OS_LOG_TYPE_ERROR;
                        v144 = 0;
                        if (__nwlog_fault(v82, &type, &v144))
                        {
                          if (type == OS_LOG_TYPE_FAULT)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v83 = gLogObj;
                            v84 = type;
                            if (os_log_type_enabled(v83, type))
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v79;
                              *&buf[22] = 2048;
                              *&buf[24] = v66;
                              *&buf[32] = 2048;
                              *&buf[34] = v17;
                              _os_log_impl(&dword_181A37000, v83, v84, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu)", buf, 0x2Au);
                            }

                            goto LABEL_199;
                          }

                          if (v144 == 1)
                          {
                            v91 = __nw_create_backtrace_string();
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v83 = gLogObj;
                            v92 = type;
                            v93 = os_log_type_enabled(v83, type);
                            if (v91)
                            {
                              if (v93)
                              {
                                *buf = 136447234;
                                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                *&buf[12] = 2048;
                                *&buf[14] = v79;
                                *&buf[22] = 2048;
                                *&buf[24] = v66;
                                *&buf[32] = 2048;
                                *&buf[34] = v17;
                                *&buf[42] = 2082;
                                *&buf[44] = v91;
                                _os_log_impl(&dword_181A37000, v83, v92, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), dumping backtrace:%{public}s", buf, 0x34u);
                              }

                              free(v91);
                              if (!v82)
                              {
LABEL_202:
                                if (v80 == v17)
                                {
                                  goto LABEL_203;
                                }

                                v112 = __nwlog_obj();
                                *buf = 136446722;
                                *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                *&buf[12] = 2048;
                                *&buf[14] = v80;
                                *&buf[22] = 2048;
                                *&buf[24] = v17;
                                v58 = _os_log_send_and_compose_impl();

                                type = OS_LOG_TYPE_ERROR;
                                v144 = 0;
                                if (__nwlog_fault(v58, &type, &v144))
                                {
                                  if (type == OS_LOG_TYPE_FAULT)
                                  {
                                    v59 = __nwlog_obj();
                                    v113 = type;
                                    if (os_log_type_enabled(v59, type))
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v80;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v17;
                                      _os_log_impl(&dword_181A37000, v59, v113, "%{public}s cursor has unexpected value %zu != %zu", buf, 0x20u);
                                    }

                                    goto LABEL_124;
                                  }

                                  if (v144 != 1)
                                  {
                                    v59 = __nwlog_obj();
                                    v131 = type;
                                    if (os_log_type_enabled(v59, type))
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v80;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v17;
                                      _os_log_impl(&dword_181A37000, v59, v131, "%{public}s cursor has unexpected value %zu != %zu, backtrace limit exceeded", buf, 0x20u);
                                    }

                                    goto LABEL_124;
                                  }

                                  v119 = __nw_create_backtrace_string();
                                  v59 = __nwlog_obj();
                                  v120 = type;
                                  v121 = os_log_type_enabled(v59, type);
                                  if (!v119)
                                  {
                                    if (v121)
                                    {
                                      *buf = 136446722;
                                      *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                      *&buf[12] = 2048;
                                      *&buf[14] = v80;
                                      *&buf[22] = 2048;
                                      *&buf[24] = v17;
                                      _os_log_impl(&dword_181A37000, v59, v120, "%{public}s cursor has unexpected value %zu != %zu, no backtrace", buf, 0x20u);
                                    }

                                    goto LABEL_124;
                                  }

                                  if (v121)
                                  {
                                    *buf = 136446978;
                                    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                                    *&buf[12] = 2048;
                                    *&buf[14] = v80;
                                    *&buf[22] = 2048;
                                    *&buf[24] = v17;
                                    *&buf[32] = 2082;
                                    *&buf[34] = v119;
                                    _os_log_impl(&dword_181A37000, v59, v120, "%{public}s cursor has unexpected value %zu != %zu, dumping backtrace:%{public}s", buf, 0x2Au);
                                  }

                                  free(v119);
                                  if (v58)
                                  {
                                    goto LABEL_126;
                                  }

LABEL_203:
                                  v95 = v135;
                                  v96 = v138;
                                  if (v138)
                                  {
LABEL_204:
                                    free(v96);
                                  }

                                  goto LABEL_205;
                                }

LABEL_125:
                                if (!v58)
                                {
                                  goto LABEL_203;
                                }

LABEL_126:
                                free(v58);
                                goto LABEL_203;
                              }

LABEL_201:
                              free(v82);
                              goto LABEL_202;
                            }

                            if (v93)
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v79;
                              *&buf[22] = 2048;
                              *&buf[24] = v66;
                              *&buf[32] = 2048;
                              *&buf[34] = v17;
                              _os_log_impl(&dword_181A37000, v83, v92, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x2Au);
                            }
                          }

                          else
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v83 = gLogObj;
                            v94 = type;
                            if (os_log_type_enabled(v83, type))
                            {
                              *buf = 136446978;
                              *&buf[4] = "nw_path_message_request_in_process_flow_divert";
                              *&buf[12] = 2048;
                              *&buf[14] = v79;
                              *&buf[22] = 2048;
                              *&buf[24] = v66;
                              *&buf[32] = 2048;
                              *&buf[34] = v17;
                              _os_log_impl(&dword_181A37000, v83, v94, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x2Au);
                            }
                          }

LABEL_199:
                        }

                        if (!v82)
                        {
                          goto LABEL_202;
                        }

                        goto LABEL_201;
                      }

                      if (v67 == 20)
                      {
                        if (nw_context_copy_implicit_context::onceToken[0] != -1)
                        {
                          dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
                        }

                        v85 = nw_context_copy_implicit_context::implicit_context;
                        v86 = v85 == v137;

                        if (v86)
                        {
                          type = OS_LOG_TYPE_DEFAULT;
                          if (nw_path_create_bridged_flow_director(v137, &type))
                          {
                            if (type != OS_LOG_TYPE_INFO)
                            {
                              goto LABEL_203;
                            }

                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v87 = gLogObj;
                            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_path_necp_check_for_updates";
                              v88 = "%{public}s In-process flow divert director created";
                              v89 = v87;
                              v90 = OS_LOG_TYPE_DEFAULT;
                              goto LABEL_191;
                            }
                          }

                          else
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v87 = gLogObj;
                            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136446210;
                              *&buf[4] = "nw_path_necp_check_for_updates";
                              v88 = "%{public}s Failed to create in-process flow divert director";
                              v89 = v87;
                              v90 = OS_LOG_TYPE_ERROR;
LABEL_191:
                              _os_log_impl(&dword_181A37000, v89, v90, v88, buf, 0xCu);
                            }
                          }

                          goto LABEL_203;
                        }

                        goto LABEL_203;
                      }

                      v66 += v68 + 5;
                      if (v80 > v23)
                      {
                        goto LABEL_202;
                      }

                      continue;
                    }

                    break;
                  }

                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v70 = gLogObj;
                  *buf = 136446978;
                  *&buf[4] = "nw_necp_buffer_get_tlv_value";
                  *&buf[12] = 2048;
                  *&buf[14] = v66;
                  *&buf[22] = 2048;
                  *&buf[24] = v17;
                  *&buf[32] = 1024;
                  *&buf[34] = v68;
                  v71 = _os_log_send_and_compose_impl();

                  type = OS_LOG_TYPE_ERROR;
                  v144 = 0;
                  if (__nwlog_fault(v71, &type, &v144))
                  {
                    if (type == OS_LOG_TYPE_FAULT)
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v72 = gLogObj;
                      v73 = type;
                      if (os_log_type_enabled(v72, type))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v66;
                        *&buf[22] = 2048;
                        *&buf[24] = v17;
                        *&buf[32] = 1024;
                        *&buf[34] = v68;
                        _os_log_impl(&dword_181A37000, v72, v73, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u", buf, 0x26u);
                      }

                      goto LABEL_148;
                    }

                    if (v144 == 1)
                    {
                      v74 = __nw_create_backtrace_string();
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v75 = gLogObj;
                      v76 = type;
                      v77 = os_log_type_enabled(v75, type);
                      if (v74)
                      {
                        if (v77)
                        {
                          *buf = 136447234;
                          *&buf[4] = "nw_necp_buffer_get_tlv_value";
                          *&buf[12] = 2048;
                          *&buf[14] = v66;
                          *&buf[22] = 2048;
                          *&buf[24] = v17;
                          *&buf[32] = 1024;
                          *&buf[34] = v68;
                          *&buf[38] = 2082;
                          *&buf[40] = v74;
                          _os_log_impl(&dword_181A37000, v75, v76, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, dumping backtrace:%{public}s", buf, 0x30u);
                        }

                        free(v74);
                        if (!v71)
                        {
LABEL_163:
                          v23 = v140;
                          v8 = v141;
                          v24 = v139;
                          goto LABEL_164;
                        }

LABEL_162:
                        free(v71);
                        goto LABEL_163;
                      }

                      if (v77)
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v66;
                        *&buf[22] = 2048;
                        *&buf[24] = v17;
                        *&buf[32] = 1024;
                        *&buf[34] = v68;
                        _os_log_impl(&dword_181A37000, v75, v76, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, no backtrace", buf, 0x26u);
                      }
                    }

                    else
                    {
                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                      networkd_settings_init();
                      v72 = gLogObj;
                      v78 = type;
                      if (os_log_type_enabled(v72, type))
                      {
                        *buf = 136446978;
                        *&buf[4] = "nw_necp_buffer_get_tlv_value";
                        *&buf[12] = 2048;
                        *&buf[14] = v66;
                        *&buf[22] = 2048;
                        *&buf[24] = v17;
                        *&buf[32] = 1024;
                        *&buf[34] = v68;
                        _os_log_impl(&dword_181A37000, v72, v78, "%{public}s buffer too short tlv_offset=%zu buffer_length=%zu value_length=%u, backtrace limit exceeded", buf, 0x26u);
                      }

LABEL_148:
                    }
                  }

                  if (!v71)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_162;
                }

LABEL_135:
                free(v47);
                goto LABEL_136;
              }

              if (v56)
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v37;
                *&buf[22] = 2048;
                *&buf[24] = v22;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v48, v55, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), no backtrace", buf, 0x2Au);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v48 = gLogObj;
              v65 = type;
              if (os_log_type_enabled(v48, type))
              {
                *buf = 136446978;
                *&buf[4] = "nw_path_parse_necp_client_id";
                *&buf[12] = 2048;
                *&buf[14] = v26 + 5;
                *&buf[22] = 2048;
                *&buf[24] = v22;
                *&buf[32] = 2048;
                *&buf[34] = v6;
                _os_log_impl(&dword_181A37000, v48, v65, "%{public}s TLV length (%zu) at offset %zu goes beyond total length (%zu), backtrace limit exceeded", buf, 0x2Au);
              }
            }

LABEL_133:
          }

          if (!v47)
          {
            goto LABEL_136;
          }

          goto LABEL_135;
        }

        v40 = v26 == 16 && v32 != 0 && v25 == 1;
        v22 += v26 + 5;
        if (v40)
        {
          *uu = *v32;
          os_unfair_lock_lock((globals_for_path + 116));
          if (*globals_for_path == *uu && *(globals_for_path + 8) == *&uu[8])
          {
            v41 = *(globals_for_path + 48);
            if (v41)
            {
              v42 = _nw_array_copy(v41);
            }

            else
            {
              v42 = _nw_array_create();
            }

            os_unfair_lock_unlock((globals_for_path + 116));
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 1;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = ___ZL30nw_path_necp_check_for_updatesPU24objcproto13OS_nw_context8NSObjectPA16_hj_block_invoke_2;
            aBlock[3] = &unk_1E6A39C98;
            aBlock[5] = uu;
            aBlock[6] = v141;
            v143 = v6;
            aBlock[4] = buf;
            if (v42)
            {
              _nw_array_apply(v42, aBlock);
            }

            _Block_object_dispose(buf, 8);
          }

          else if (*(globals_for_path + 32))
          {
            memset(buf, 0, 37);
            uuid_unparse(uu, buf);
            v51 = nw_dictionary_copy_value(*(globals_for_path + 32), buf);
            v52 = v51;
            if (v51 && v51[10] == *uu && v51[11] == *&uu[8])
            {
              v53 = v51;
              os_unfair_lock_unlock((globals_for_path + 116));
              nw_path_necp_update_evaluator(v53, v141, v6, 1);
            }

            else
            {
              os_unfair_lock_unlock((globals_for_path + 116));
              v53 = 0;
            }
          }

          else
          {
            os_unfair_lock_unlock((globals_for_path + 116));
          }

          goto LABEL_203;
        }
      }
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v10 = **(StatusReg + 8);
    if (v133 < 5 || v10 != 22)
    {
      goto LABEL_17;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = v133;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s Trying to copy result again for %u flows", buf, 0x12u);
    }

    if (!size)
    {
      v114 = __nwlog_obj();
      os_log_type_enabled(v114, OS_LOG_TYPE_ERROR);
      *buf = 136446210;
      *&buf[4] = "nw_path_necp_check_for_updates";
      v115 = _os_log_send_and_compose_impl();

      if (__nwlog_should_abort(v115))
      {
LABEL_291:
        __break(1u);
      }

      free(v115);
    }

    v7 = malloc_type_calloc(1uLL, size, 0xE55C7F8DuLL);
    if (!v7)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 2048;
      *&buf[14] = 1;
      *&buf[22] = 2048;
      *&buf[24] = size;
      v13 = _os_log_send_and_compose_impl();

      if (__nwlog_should_abort(v13))
      {
        goto LABEL_291;
      }

      free(v13);
    }

    nw_path_shared_necp_fd(v137);
    v6 = necp_client_action();
    if (v6 <= 0)
    {
      break;
    }

LABEL_24:
    v8 = v7;
    if (v7)
    {
      goto LABEL_25;
    }

    v100 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_parse_necp_client_id";
    v101 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v144 = 0;
    if (__nwlog_fault(v101, &type, &v144))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v102 = __nwlog_obj();
        v103 = type;
        if (os_log_type_enabled(v102, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v102, v103, "%{public}s called with null result", buf, 0xCu);
        }

LABEL_255:

        goto LABEL_256;
      }

      if (v144 != 1)
      {
        v102 = __nwlog_obj();
        v111 = type;
        if (os_log_type_enabled(v102, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v102, v111, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_255;
      }

      v104 = __nw_create_backtrace_string();
      v102 = __nwlog_obj();
      v105 = type;
      v106 = os_log_type_enabled(v102, type);
      if (!v104)
      {
        if (v106)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_parse_necp_client_id";
          _os_log_impl(&dword_181A37000, v102, v105, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }

        goto LABEL_255;
      }

      if (v106)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_parse_necp_client_id";
        *&buf[12] = 2082;
        *&buf[14] = v104;
        _os_log_impl(&dword_181A37000, v102, v105, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v104);
    }

LABEL_256:
    if (v101)
    {
      free(v101);
    }

    v122 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_path_message_request_in_process_flow_divert";
    v123 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v144 = 0;
    if (__nwlog_fault(v123, &type, &v144))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v124 = __nwlog_obj();
        v125 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v124, v125, "%{public}s called with null result", buf, 0xCu);
        }

LABEL_273:

        goto LABEL_274;
      }

      if (v144 != 1)
      {
        v124 = __nwlog_obj();
        v129 = type;
        if (os_log_type_enabled(v124, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v124, v129, "%{public}s called with null result, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_273;
      }

      v126 = __nw_create_backtrace_string();
      v124 = __nwlog_obj();
      v127 = type;
      v128 = os_log_type_enabled(v124, type);
      if (!v126)
      {
        if (v128)
        {
          *buf = 136446210;
          *&buf[4] = "nw_path_message_request_in_process_flow_divert";
          _os_log_impl(&dword_181A37000, v124, v127, "%{public}s called with null result, no backtrace", buf, 0xCu);
        }

        goto LABEL_273;
      }

      if (v128)
      {
        *buf = 136446466;
        *&buf[4] = "nw_path_message_request_in_process_flow_divert";
        *&buf[12] = 2082;
        *&buf[14] = v126;
        _os_log_impl(&dword_181A37000, v124, v127, "%{public}s called with null result, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v126);
    }

LABEL_274:
    v95 = v135;
    if (v123)
    {
      v96 = v123;
      goto LABEL_204;
    }

LABEL_205:
    if (v95)
    {
      goto LABEL_216;
    }

    memset(uu, 0, sizeof(uu));
LABEL_4:
    uuid_clear(uu);
  }

  v10 = **(StatusReg + 8);
  if (v7)
  {
    free(v7);
  }

LABEL_17:
  if (v10 != 22)
  {
    goto LABEL_212;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = "nw_path_necp_check_for_updates";
    *&buf[12] = 1024;
    *&buf[14] = 48;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s Trying to copy result again for %d flows (max)", buf, 0x12u);
  }

  v7 = malloc_type_calloc(1uLL, 0x6400uLL, 0x537AB219uLL);
  if (!v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    *buf = 136446722;
    *&buf[4] = "nw_path_necp_check_for_updates";
    *&buf[12] = 2048;
    *&buf[14] = 1;
    *&buf[22] = 2048;
    *&buf[24] = 25600;
    v16 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v16))
    {
      goto LABEL_291;
    }

    free(v16);
  }

  nw_path_shared_necp_fd(v137);
  v6 = necp_client_action();
  if (v6 > 0)
  {
    goto LABEL_24;
  }

  v10 = **(StatusReg + 8);
  if (v7)
  {
    free(v7);
  }

  if (v10 == 22)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v97 = gLogObj;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = 22;
      v98 = v97;
      v99 = OS_LOG_TYPE_ERROR;
      goto LABEL_214;
    }
  }

  else
  {
LABEL_212:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v97 = gLogObj;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "nw_path_necp_check_for_updates";
      *&buf[12] = 1024;
      *&buf[14] = v10;
      v98 = v97;
      v99 = OS_LOG_TYPE_DEBUG;
LABEL_214:
      _os_log_impl(&dword_181A37000, v98, v99, "%{public}s Failed to copy updated result (%d)", buf, 0x12u);
    }
  }

LABEL_216:
}

void sub_181B00F38()
{
  _Block_object_dispose((v1 - 160), 8);

  JUMPOUT(0x181B00F70);
}

uint64_t nw_bucket_to_throughput(unsigned int a1)
{
  v1 = -1;
  if (a1 <= 0x30)
  {
    v1 = 1 << (a1 + 15);
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_181B00FA8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v49 - v7;
  v8 = sub_182AD2738();
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v49 - v11;
  v1[3] = xmmword_182AE8E90;
  v13 = *(v12 + 56);
  v53 = qword_1ED411A90;
  v50 = v13;
  v51 = v12 + 56;
  v13(v1 + qword_1ED411A90, 1, 1, v8);
  v64 = qword_1ED411A88;
  *(v1 + qword_1ED411A88) = 0;
  v14 = v1 + *(*v1 + 128);
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  *(v14 + 5) = 2;
  v15 = *(*v1 + 136);
  *(v1 + v15) = 0;
  v16 = *(*v1 + 144);
  *(v2 + v16) = 0;
  v17 = v2 + *(*v2 + 152);
  *v17 = 0;
  v17[8] = 1;
  v18 = v2 + *(*v2 + 160);
  *v18 = 0;
  v18[8] = 1;
  v19 = (v2 + *(*v2 + 168));
  *v19 = 0;
  v19[1] = 0;
  v62 = *(*v2 + 176);
  *(v2 + v62) = 0;
  v63 = *(*v2 + 184);
  *(v2 + v63) = 0;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  *(v2 + 8) = *(a1 + 16);
  v59 = v21;
  v60 = v20;
  *(v2 + 3) = v20;
  *(v2 + 4) = v21;
  v58 = v22;
  *(v2 + 40) = v22;
  v23 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  v24 = *(v23 + 4);
  v25 = *(v23 + 5);
  v26 = *v23;
  v55 = v23[1];
  v56 = v26;
  swift_beginAccess();
  v27 = v55;
  *v14 = v56;
  *(v14 + 1) = v27;
  *(v14 + 4) = v24;
  *(v14 + 5) = v25;
  v28 = v57;
  v29 = *(*a1 + 136);
  swift_beginAccess();
  v30 = *(a1 + v29);
  swift_beginAccess();
  *(v2 + v15) = v30;
  v31 = *(*a1 + 144);
  swift_beginAccess();
  v32 = *(a1 + v31);
  swift_beginAccess();
  *(v2 + v16) = v32;
  v33 = qword_1ED411A90;
  swift_beginAccess();
  v34 = a1 + v33;
  v35 = v61;
  sub_181AB5D28(v34, v61, &qword_1EA838E00);
  v36 = v8;
  if ((*(v28 + 48))(v35, 1, v8) == 1)
  {
    sub_181F49A24(v60, v59, v58);

    v37 = v30;
    sub_181F49A88(v35, &qword_1EA838E00);
  }

  else
  {
    *&v56 = v30;
    v38 = *(v28 + 32);
    v39 = v49;
    v38(v49, v35, v36);
    sub_181F49A24(v60, v59, v58);

    v40 = v56;
    v41 = v52;
    sub_182AD2728();
    sub_182AD2718();
    (*(v28 + 8))(v39, v36);
    v42 = v54;
    v38(v54, v41, v36);
    v50(v42, 0, 1, v36);
    v43 = v53;
    swift_beginAccess();
    sub_181B2D2D8(v42, v2 + v43);
    swift_endAccess();
  }

  *(v2 + v64) = *(a1 + qword_1ED411A88);
  v44 = *(*a1 + 176);
  swift_beginAccess();
  LOBYTE(v44) = *(a1 + v44);
  v45 = v62;
  swift_beginAccess();
  *(v2 + v45) = v44;
  v46 = *(*a1 + 184);
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);
  v47 = v63;
  swift_beginAccess();
  *(v2 + v47) = v46;
  return v2;
}

BOOL sub_181B0159C(uint64_t a1)
{
  v2 = v1;
  *&v51 = sub_182AD2738();
  v52.i64[0] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = *(*v1 + 136);
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = *(*a1 + 136);
  swift_beginAccess();
  v17 = *(a1 + v16);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    type metadata accessor for Endpoint(0);
    v18 = v17;
    v19 = v15;
    v20 = sub_182AD3978();

    if ((v20 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v21 = *(*v2 + 176);
    swift_beginAccess();
    LODWORD(v21) = *(v2 + v21);
    v22 = *(*a1 + 176);
    swift_beginAccess();
    if (v21 != *(a1 + v22))
    {
      return 0;
    }

    v25 = qword_1ED411A90;
    swift_beginAccess();
    sub_181AACF84(v2 + v25, v13);
    v26 = qword_1ED411A90;
    swift_beginAccess();
    v27 = *(v5 + 48);
    sub_181AACF84(v13, v7);
    sub_181AACF84(a1 + v26, &v7[v27]);
    v28 = *(v52.i64[0] + 48);
    v29 = v51;
    if (v28(v7, 1, v51) == 1)
    {
      sub_181F49A88(v13, &qword_1EA838E00);
      if (v28(&v7[v27], 1, v29) == 1)
      {
        sub_181F49A88(v7, &qword_1EA838E00);
        goto LABEL_16;
      }
    }

    else
    {
      sub_181AACF84(v7, v10);
      if (v28(&v7[v27], 1, v29) != 1)
      {
        v30 = v52.i64[0];
        (*(v52.i64[0] + 32))(v50, &v7[v27], v29);
        sub_181F675A4(&qword_1EA836620, 255, MEMORY[0x1E69E84D0]);
        v31 = sub_182AD2F48();
        v32 = *(v30 + 8);
        v32(v50, v29);
        sub_181F49A88(v13, &qword_1EA838E00);
        v32(v10, v29);
        sub_181F49A88(v7, &qword_1EA838E00);
        if ((v31 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        swift_beginAccess();
        v33 = *(v2 + 24);
        v34 = *(v2 + 32);
        v35 = *(v2 + 40);
        v57.i16[0] = *(v2 + 16);
        v57.i64[1] = v33;
        *&v58 = v34;
        BYTE8(v58) = v35;
        swift_beginAccess();
        v36 = *(a1 + 24);
        v37 = *(a1 + 32);
        v38 = *(a1 + 40);
        v53.i16[0] = *(a1 + 16);
        v53.i64[1] = v36;
        *&v54 = v37;
        BYTE8(v54) = v38;
        v52.i32[0] = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v57, &v53);
        v39 = v53.i64[1];
        *&v51 = v54;
        LODWORD(v50) = BYTE8(v54);
        sub_181F49A24(v33, v34, v35);
        sub_181F49A24(v36, v37, v38);
        sub_181F48350(v39, v51, v50);
        sub_181F48350(v57.i64[1], v58, SBYTE8(v58));
        if (v52.i8[0])
        {
          v40 = v2 + *(*v2 + 128);
          swift_beginAccess();
          v41 = *(v40 + 40);
          if (v41 != 2)
          {
            v42 = *v40;
            v51 = *(v40 + 16);
            v52 = v42;
            v43 = *(v40 + 32);
            v44 = a1 + *(*a1 + 128);
            swift_beginAccess();
            v45 = *(v44 + 40);
            if (v45 != 2)
            {
              v47 = *(v44 + 32);
              v57 = v52;
              v58 = v51;
              v59 = v43;
              v60 = v41;
              v48 = *(v44 + 16);
              v53 = *v44;
              v54 = v48;
              v55 = v47;
              v56 = v45;
              return _s7Network11TCPProtocolV10TCPOptionsV2eeoiySbAE_AEtFZ_0(&v57, &v53);
            }

            LOBYTE(v41) = *(v40 + 40);
          }

          if (v41 == 2)
          {
            v46 = a1 + *(*a1 + 128);
            swift_beginAccess();
            return *(v46 + 40) == 2;
          }
        }

        return 0;
      }

      sub_181F49A88(v13, &qword_1EA838E00);
      (*(v52.i64[0] + 8))(v10, v29);
    }

    sub_181F49A88(v7, &qword_1EA838AF0);
    return 0;
  }

  if (!v17)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL sub_181B01C24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 7);
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = *(a2 + 6);
  v13 = *(a2 + 7);
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  if (v2 == 5)
  {
    if (v10 != 5)
    {
      return 0;
    }
  }

  else if (v10 == 5 || qword_182B03358[v2] != qword_182B03358[v10])
  {
    return 0;
  }

  if (v3 != 5)
  {
    if (v11 == 5)
    {
      return 0;
    }

    v17 = qword_182B03380[v3] == qword_182B03380[v11] && v4 == v12;
    if (!v17 || v5 != v13)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v11 != 5)
  {
    return 0;
  }

  result = 0;
  if (v4 == v12 && v5 == v13)
  {
LABEL_21:
    if (v6 == 5)
    {
      if (v14 != 5)
      {
        return 0;
      }
    }

    else if (v14 == 5 || qword_182B03358[v6] != qword_182B03358[v14])
    {
      return 0;
    }

    if (v7 == 5)
    {
      result = 0;
      if (v15 != 5)
      {
        return result;
      }

      goto LABEL_32;
    }

    if (v15 != 5)
    {
      result = 0;
      if (qword_182B03380[v7] != qword_182B03380[v15])
      {
        return result;
      }

LABEL_32:
      if (v8 == *(a2 + 10))
      {
        return v9 == *(a2 + 11);
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL nw_context_shares_workloop(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = nw_context_copy_globals_context(v3);
      v7 = nw_context_copy_globals_context(v5);
      v8 = v6 == v7;

      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_context_shares_workloop";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null other", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null other, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null other, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v26 = "nw_context_shares_workloop";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null other, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_context_shares_workloop";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v11, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null context", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v23 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v26 = "nw_context_shares_workloop";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v26 = "nw_context_shares_workloop";
        v27 = 2082;
        v28 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:

  return v8;
}

uint64_t sub_181B0227C(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = v6 >> 61;
  if ((v6 >> 61) <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v3 >> 61 == 1)
        {
          sub_181AACFF4(*a1, v3);
          sub_181AACFF4(v7, v6);
          v9 = sub_181B0159C(v4);
          goto LABEL_19;
        }
      }

      else if (v3 >> 61 == 2)
      {
        sub_181AACFF4(*a1, v3);
        sub_181AACFF4(v7, v6);
        v9 = sub_181CC4EF0(v4, v5);
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    if (!(v3 >> 61))
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  if (v8 <= 4)
  {
    if (v8 == 3)
    {
      if (v3 >> 61 == 3)
      {
        sub_181AACFF4(*a1, v3);
        sub_181AACFF4(v7, v6);
        v9 = sub_181B03DBC(v4, v5);
LABEL_19:
        v13 = v9;
        sub_181AAD03C(v7, v6);
        sub_181AAD03C(v4, v3);
        return v13 & 1;
      }

      goto LABEL_27;
    }

    if (v3 >> 61 == 4)
    {
LABEL_18:
      sub_181AACFF4(*a1, v3);
      sub_181AACFF4(v7, v6);
      v9 = sub_181E38334(v4);
      goto LABEL_19;
    }

LABEL_27:
    sub_181AACFF4(*a1, v3);
    sub_181AACFF4(v7, v6);
    sub_181AAD03C(v7, v6);
    sub_181AAD03C(v4, v3);
    v12 = 0;
    return v12 & 1;
  }

  if (v8 != 5)
  {
    if (v3 >> 61 == 6 && v4 == 0 && v3 == 0xC000000000000000)
    {
      sub_181AAD03C(*v2, *(v2 + 8));
      sub_181AAD03C(0, 0xC000000000000000);
      v12 = 1;
      return v12 & 1;
    }

    goto LABEL_27;
  }

  if (v3 >> 61 != 5)
  {
    goto LABEL_27;
  }

  ObjectType = swift_getObjectType();
  v17 = v5;
  v11 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181AACFF4(v4, v3);
  sub_181AACFF4(v7, v6);
  v12 = v11(v4, v3 & 0x1FFFFFFFFFFFFFFFLL, &v17, ObjectType, v6 & 0x1FFFFFFFFFFFFFFFLL);
  sub_181AAD03C(v7, v6);
  sub_181AAD03C(v4, v3);
  return v12 & 1;
}

uint64_t sub_181B02578()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  sub_181A53008(v0[2], v0[3]);
  sub_181A52FE0(v1, v2);
  sub_181B03DAC(v3);

  return swift_deallocClassInstance();
}

void *sub_181B025F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838940);
    swift_arrayInitWithCopy();
  }

  return v10;
}
void sub_18254E578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_masque_connection_pair;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void nw_masque_connection_pair_cancel_waiting_timer(NWConcrete_nw_masque_connection_pair *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (*(v1 + 36))
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v3 = gLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(v2 + 2);
        v5 = *(v2 + 6);
        *buf = 136446722;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        v19 = 2114;
        v20 = v4;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}@ cancelling wait timer for %@", buf, 0x20u);
      }

      dispatch_source_cancel(*(v2 + 36));
      v6 = *(v2 + 36);
      *(v2 + 36) = 0;
    }

    goto LABEL_6;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_connection_pair_cancel_waiting_timer";
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
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null pair", buf, 0xCu);
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
          v18 = "nw_masque_connection_pair_cancel_waiting_timer";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel_waiting_timer";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v8)
  {
    free(v8);
  }

LABEL_6:
}

void sub_18254EA4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = NWConcrete_nw_masque_listener_pair;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void __nw_masque_connection_start_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke;
  v11[3] = &unk_1E6A3D868;
  v3 = v1;
  v12 = v3;
  nw_connection_set_read_close_handler(v2, v11);
  v4 = v1[6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke_199;
  v9[3] = &unk_1E6A3D820;
  v5 = v3;
  v10 = v5;
  nw_connection_set_state_changed_handler(v4, v9);
  nw_connection_set_queue(v1[6], v5[4]);
  v6 = v5;
  v7 = v1[6];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke;
  v14 = &unk_1E6A39638;
  v15 = v6;
  nw_connection_receive_internal(v7, 0, 0, 0, buf);

  nw_connection_start(v1[6]);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    *&buf[4] = "nw_masque_connection_start_on_queue";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s %{public}@ started connection", buf, 0x16u);
  }
}

void ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[112];
  if (v2 == 200)
  {
    if (gLogDatapath == 1)
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v9 = 136446466;
        v10 = "nw_masque_connection_start_on_queue_block_invoke";
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ ignoring in connection read close event", &v9, 0x16u);
      }
    }
  }

  else if (v2 != 255)
  {
    if (gLogDatapath == 1)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 32);
        v9 = 136446466;
        v10 = "nw_masque_connection_start_on_queue_block_invoke";
        v11 = 2114;
        v12 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ in connection read close before proxy connection ready, cancelling", &v9, 0x16u);
      }

      v1 = *(a1 + 32);
    }

    nw_masque_connection_cancel_on_queue(v1, 0);
  }
}

void ___ZL35nw_masque_connection_start_on_queueP31NWConcrete_nw_masque_connection_block_invoke_199(uint64_t a1, unsigned int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (*(*(a1 + 32) + 112) != 255)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a2 > 5)
      {
        v7 = "unknown";
      }

      else
      {
        v7 = off_1E6A2F020[a2];
      }

      v8 = *(a1 + 32);
      v12 = 136446722;
      v13 = "nw_masque_connection_start_on_queue_block_invoke";
      v14 = 2114;
      v15 = v8;
      v16 = 2082;
      v17 = v7;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ in connection event %{public}s", &v12, 0x20u);
    }

    if (a2 == 3)
    {
      v9 = *(a1 + 32);
      if (*(v9 + 112) == 1)
      {
        *(v9 + 112) = 2;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = *(a1 + 32);
          v12 = 136446466;
          v13 = "nw_masque_connection_start_on_queue_block_invoke";
          v14 = 2114;
          v15 = v11;
          _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %{public}@ connection masque connected", &v12, 0x16u);
        }
      }
    }

    else if (a2 == 4)
    {
      nw_masque_connection_cancel_on_queue(*(a1 + 32), v5);
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v288 = *MEMORY[0x1E69E9840];
  v198 = a2;
  v7 = a3;
  v8 = a5;
  context = v7;
  if (!v7 || v8)
  {
    goto LABEL_36;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v9 = nw_protocol_copy_http_definition_http_definition;
  v10 = nw_content_context_copy_protocol_metadata(v7, v9);

  v195 = v10;
  if (!v10)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 32);
      v41 = *(v40 + 48);
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v40;
      *&applier[22] = 2112;
      *v284 = v41;
      _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Received non-HTTP message, cancelling %@", applier, 0x20u);
    }

    nw_masque_connection_cancel_on_queue(*(a1 + 32), 0);
    v8 = 0;
    goto LABEL_36;
  }

  v11 = nw_http_metadata_copy_request(v10);
  v194 = v11;
  if (!v11)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v42 = gLogObj;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      v43 = *(a1 + 32);
      v44 = *(v43 + 48);
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v43;
      *&applier[22] = 2112;
      *v284 = v44;
      _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Received non-request HTTP message, cancelling %@", applier, 0x20u);
    }

    nw_masque_connection_cancel_on_queue(*(a1 + 32), 0);
    goto LABEL_35;
  }

  v275[0] = MEMORY[0x1E69E9820];
  v275[1] = 3221225472;
  v275[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_201;
  v275[3] = &unk_1E6A33B10;
  v276 = *(a1 + 32);
  v12 = v11;
  v13 = v275;
  _nw_http_request_access_method(v12, v13);

  v269 = 0;
  v270 = &v269;
  v271 = 0x3032000000;
  v272 = __Block_byref_object_copy__30254;
  v273 = __Block_byref_object_dispose__30255;
  v274 = 0;
  v263 = 0;
  v264 = &v263;
  v265 = 0x3032000000;
  v266 = __Block_byref_object_copy__30254;
  v267 = __Block_byref_object_dispose__30255;
  v268 = 0;
  v257 = 0;
  v258 = &v257;
  v259 = 0x3032000000;
  v260 = __Block_byref_object_copy__30254;
  v261 = __Block_byref_object_dispose__30255;
  v262 = 0;
  v251 = 0;
  v252 = &v251;
  v253 = 0x3032000000;
  v254 = __Block_byref_object_copy__30254;
  v255 = __Block_byref_object_dispose__30255;
  v256 = 0;
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_203;
  v250[3] = &unk_1E6A307F8;
  v250[4] = &v257;
  v250[5] = &v269;
  v14 = v12;
  v15 = v250;
  _nw_http_fields_access_value_by_name(v14, "Client-Connection-Id", v15);

  v249[0] = MEMORY[0x1E69E9820];
  v249[1] = 3221225472;
  v249[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2;
  v249[3] = &unk_1E6A307F8;
  v249[4] = &v251;
  v249[5] = &v263;
  v16 = v14;
  v17 = v249;
  _nw_http_fields_access_value_by_name(v16, "Server-Connection-Id", v17);

  v243 = 0;
  v244 = &v243;
  v245 = 0x3032000000;
  v246 = __Block_byref_object_copy__30254;
  v247 = __Block_byref_object_dispose__30255;
  v248 = 0;
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3;
  v242[3] = &unk_1E6A3AA78;
  v242[4] = &v243;
  v18 = v16;
  v19 = v242;
  _nw_http_request_access_authority(v18, v19);

  v238 = 0;
  v239 = &v238;
  v240 = 0x2020000000;
  v241 = 0;
  v234 = 0;
  v235 = &v234;
  v236 = 0x2020000000;
  v237 = 0;
  v233[0] = MEMORY[0x1E69E9820];
  v233[1] = 3221225472;
  v233[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_4;
  v233[3] = &unk_1E6A307F8;
  v233[4] = &v238;
  v233[5] = &v234;
  v20 = v18;
  v21 = v233;
  _nw_http_request_access_extended_connect_protocol(v20, v21);

  v282 = 0;
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_5;
  v232[3] = &__block_descriptor_40_e9_v16__0r_8l;
  v232[4] = &v282;
  v22 = v20;
  v23 = v232;
  _nw_http_fields_access_value_by_name(v22, "Datagram-Flow-Id", v23);

  v226 = 0;
  v227 = &v226;
  v228 = 0x3032000000;
  v229 = __Block_byref_object_copy__30254;
  v230 = __Block_byref_object_dispose__30255;
  v231 = 0;
  v225[0] = MEMORY[0x1E69E9820];
  v225[1] = 3221225472;
  v225[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_6;
  v225[3] = &unk_1E6A3AA78;
  v225[4] = &v226;
  v24 = v22;
  v25 = v225;
  _nw_http_request_access_path(v24, v25);

  v26 = *(a1 + 32);
  if (*(v26 + 97) == 1)
  {
    if (gLogDatapath)
    {
      v159 = __nwlog_obj();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        v160 = *(a1 + 32);
        *applier = 136446466;
        *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_7";
        *&applier[12] = 2114;
        *&applier[14] = v160;
        _os_log_impl(&dword_181A37000, v159, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Reverse proxying, responding 200 OK", applier, 0x16u);
      }

      v26 = *(a1 + 32);
    }

    v27 = nw_masque_connection_pair_create(v26);
    v28 = v27;
    v29 = v282;
    BYTE2(v27[44]._os_unfair_lock_opaque) = v282;
    if (v29)
    {
      v30 = BYTE1(v282);
      HIBYTE(v27[44]._os_unfair_lock_opaque) = BYTE1(v282);
      if (v30)
      {
        v31 = BYTE2(v282);
        LOBYTE(v27[45]._os_unfair_lock_opaque) = BYTE2(v282);
        if (v31)
        {
          v32 = BYTE3(v282);
          BYTE1(v27[45]._os_unfair_lock_opaque) = BYTE3(v282);
          if (v32)
          {
            v33 = BYTE4(v282);
            BYTE2(v27[45]._os_unfair_lock_opaque) = BYTE4(v282);
            if (v33)
            {
              v34 = BYTE5(v282);
              HIBYTE(v27[45]._os_unfair_lock_opaque) = BYTE5(v282);
              if (v34)
              {
                v35 = BYTE6(v282);
                LOBYTE(v27[46]._os_unfair_lock_opaque) = BYTE6(v282);
                if (v35)
                {
                  BYTE1(v27[46]._os_unfair_lock_opaque) = 0;
                }
              }
            }
          }
        }
      }
    }

    v36 = v270[5];
    if (v36)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v287 = 0;
      v277 = 0;
      v278 = &v277;
      v279 = 0x2000000000;
      v280 = (v28 + 74);
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 0x40000000;
      *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
      *v284 = &unk_1E6A34348;
      *&v284[16] = &v277;
      v285 = 20;
      *&v284[8] = buf;
      dispatch_data_apply(v36, applier);
      v37 = *(*&buf[8] + 24);
      _Block_object_dispose(&v277, 8);
      _Block_object_dispose(buf, 8);
      LOWORD(v28[18]._os_unfair_lock_opaque) = v37;
      v38 = v258[5];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v287 = 0;
      v277 = 0;
      v278 = &v277;
      v279 = 0x2000000000;
      v280 = v28 + 29;
      if (v38)
      {
        *applier = MEMORY[0x1E69E9820];
        *&applier[8] = 0x40000000;
        *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
        *v284 = &unk_1E6A34348;
        *&v284[16] = &v277;
        v285 = 20;
        *&v284[8] = buf;
        dispatch_data_apply(v38, applier);
      }

      _Block_object_dispose(&v277, 8);
      _Block_object_dispose(buf, 8);
      if (gLogDatapath == 1)
      {
        v168 = __nwlog_obj();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
        {
          v169 = *(a1 + 32);
          os_unfair_lock_opaque_low = LOWORD(v28[18]._os_unfair_lock_opaque);
          *applier = 136446722;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v169;
          *&applier[22] = 1024;
          *v284 = os_unfair_lock_opaque_low;
          _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
        }
      }
    }

    objc_storeStrong(&v28[60], *(*(a1 + 32) + 72));
    LOBYTE(v28[62]._os_unfair_lock_opaque) = 1;
    nw_masque_connection_pair_setup_outer_connection(v28, v244[5], 17, v24);

    goto LABEL_34;
  }

  if (gLogDatapath)
  {
    v161 = __nwlog_obj();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_DEBUG))
    {
      v162 = *(a1 + 32);
      v163 = v244[5];
      *applier = 136446722;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v162;
      *&applier[22] = 2112;
      *v284 = v163;
      _os_log_impl(&dword_181A37000, v161, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received authority %@", applier, 0x20u);
    }
  }

  if (!v244[5])
  {
    v164 = __nwlog_obj();
    *applier = 136446210;
    *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
    v165 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    LOBYTE(v277) = 0;
    if (__nwlog_fault(v165, buf, &v277))
    {
      if (buf[0] == 17)
      {
        v166 = __nwlog_obj();
        v167 = buf[0];
        if (os_log_type_enabled(v166, buf[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v167, "%{public}s called with null authority_endpoint", applier, 0xCu);
        }
      }

      else if (v277 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v166 = __nwlog_obj();
        v172 = buf[0];
        v173 = os_log_type_enabled(v166, buf[0]);
        if (backtrace_string)
        {
          if (v173)
          {
            *applier = 136446466;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
            *&applier[12] = 2082;
            *&applier[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v166, v172, "%{public}s called with null authority_endpoint, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_168;
        }

        if (v173)
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v172, "%{public}s called with null authority_endpoint, no backtrace", applier, 0xCu);
        }
      }

      else
      {
        v166 = __nwlog_obj();
        v174 = buf[0];
        if (os_log_type_enabled(v166, buf[0]))
        {
          *applier = 136446210;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          _os_log_impl(&dword_181A37000, v166, v174, "%{public}s called with null authority_endpoint, backtrace limit exceeded", applier, 0xCu);
        }
      }
    }

LABEL_168:
    if (v165)
    {
      free(v165);
    }

    goto LABEL_34;
  }

  if (*(*(a1 + 32) + 96) == 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v45 = gLogObj;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v46 = *(a1 + 32);
      *applier = 136446466;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v46;
      _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Dropping request, sending no reply", applier, 0x16u);
    }

    goto LABEL_34;
  }

  v47 = v24;
  has_method = _nw_http_request_has_method(v47);

  if (has_method)
  {
    if ([v227[5] containsString:@"%"])
    {
      v49 = _CFStringCreateByRemovingPercentEncoding();
      if (v49)
      {
        v50 = __nwlog_obj();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = *(a1 + 32);
          v52 = v227[5];
          *applier = 136446978;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v51;
          *&applier[22] = 2112;
          *v284 = v52;
          *&v284[8] = 2112;
          *&v284[10] = v49;
          _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_INFO, "%{public}s %{public}@ decoded path %@ -> %@", applier, 0x2Au);
        }

        v53 = v227[5];
        v227[5] = v49;
      }
    }

    if (*(v239 + 24) == 1)
    {
      if ([v227[5] hasPrefix:@"/.well-known/masque/udp/"])
      {
        v54 = [v227[5] substringFromIndex:{objc_msgSend(@"/.well-known/masque/udp/", "length")}];
        v55 = [v54 componentsSeparatedByString:@"/"];
        if ([v55 count] < 2)
        {
          v57 = 0;
          v56 = 0;
        }

        else
        {
          v56 = [v55 objectAtIndexedSubscript:0];
          v57 = [v55 objectAtIndexedSubscript:1];
        }

        if (v56 && v57)
        {
          if ([v56 isEqualToString:@"*"] && objc_msgSend(v57, "isEqualToString:", @"*"))
          {
            v112 = __nwlog_obj();
            if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
            {
              v113 = *(a1 + 32);
              *applier = 136446466;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v113;
              _os_log_impl(&dword_181A37000, v112, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ requested listener mode", applier, 0x16u);
            }

            well_known = nw_masque_listener_pair_create(*(a1 + 32));
            LOBYTE(well_known[21]._os_unfair_lock_opaque) = 1;
            nw_masque_listener_pair_setup_outer_connection_group(well_known, v47);
            nw_masque_listener_pair_read_inner(well_known);
            v103 = v56;
            goto LABEL_107;
          }

          well_known = nw_masque_connection_pair_create(*(a1 + 32));
          BYTE1(well_known[55]._os_unfair_lock_opaque) = 1;
          host = nw_endpoint_create_host([v56 UTF8String], objc_msgSend(v57, "UTF8String"));
          nw_masque_connection_pair_setup_outer_connection(well_known, host, 17, v47);
          v103 = v56;
LABEL_106:

LABEL_107:
          goto LABEL_34;
        }

        v103 = v56;
      }

      else
      {
        v103 = 0;
        v57 = 0;
      }

      if (gLogDatapath == 1)
      {
        v175 = __nwlog_obj();
        if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
        {
          v176 = *(a1 + 32);
          v177 = v227[5];
          *applier = 136446722;
          *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
          *&applier[12] = 2114;
          *&applier[14] = v176;
          *&applier[22] = 2112;
          *v284 = v177;
          _os_log_impl(&dword_181A37000, v175, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Failed to parse target out of path: %@", applier, 0x20u);
        }
      }

      well_known = _nw_http_response_create_well_known(400);
      host = nw_http_create_metadata_for_response(well_known);
      v116 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v116, host);
      v117 = *(a1 + 32);
      v118 = v117[6];
      v223[0] = MEMORY[0x1E69E9820];
      v223[1] = 3221225472;
      v223[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_218;
      v223[3] = &unk_1E6A33F88;
      v224 = v117;
      nw_connection_send(v118, 0, v116, 1, v223);

      goto LABEL_106;
    }

    if (*(v235 + 24) != 1)
    {
      v97 = nw_masque_connection_pair_create(*(a1 + 32));
      nw_masque_connection_pair_setup_outer_connection(v97, v244[5], 6, v47);

      goto LABEL_34;
    }

    if ([v227[5] hasPrefix:@"/.well-known/masque/ip/"])
    {
      v93 = [v227[5] substringFromIndex:{objc_msgSend(@"/.well-known/masque/ip/", "length")}];
      v94 = [v93 componentsSeparatedByString:@"/"];
      if ([v94 count] < 2)
      {
        v96 = 0;
        v95 = 0;
      }

      else
      {
        v95 = [v94 objectAtIndexedSubscript:0];
        v96 = [v94 objectAtIndexedSubscript:1];
      }

      if (v95 && v96)
      {
        v132 = [v96 integerValue];
        v133 = nw_masque_connection_pair_create(*(a1 + 32));
        metadata_for_response = nw_endpoint_create_host([v95 UTF8String], "0");
        nw_masque_connection_pair_setup_outer_connection(v133, metadata_for_response, v132, v47);
        v111 = v95;
LABEL_121:

        goto LABEL_34;
      }

      v111 = v95;
    }

    else
    {
      v111 = 0;
      v96 = 0;
    }

    if (gLogDatapath == 1)
    {
      v181 = __nwlog_obj();
      if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
      {
        v182 = *(a1 + 32);
        v183 = v227[5];
        *applier = 136446722;
        *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
        *&applier[12] = 2114;
        *&applier[14] = v182;
        *&applier[22] = 2112;
        *v284 = v183;
        _os_log_impl(&dword_181A37000, v181, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Failed to parse target out of path: %@", applier, 0x20u);
      }
    }

    v133 = _nw_http_response_create_well_known(400);
    metadata_for_response = nw_http_create_metadata_for_response(v133);
    v135 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v135, metadata_for_response);
    v136 = *(a1 + 32);
    v137 = v136[6];
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_227;
    v221[3] = &unk_1E6A33F88;
    v222 = v136;
    nw_connection_send(v137, 0, v135, 1, v221);

    goto LABEL_121;
  }

  v58 = v47;
  v59 = _nw_http_request_has_method(v58);
  v193 = v58;

  if (v59)
  {
    v60 = *(a1 + 32);
    v61 = v58;
    if (*(v60 + 72))
    {
      v62 = nw_masque_connection_pair_create(v60);
      v63 = v62;
      v64 = v282;
      BYTE2(v62[44]._os_unfair_lock_opaque) = v282;
      if (v64)
      {
        v65 = BYTE1(v282);
        HIBYTE(v62[44]._os_unfair_lock_opaque) = BYTE1(v282);
        if (v65)
        {
          v66 = BYTE2(v282);
          LOBYTE(v62[45]._os_unfair_lock_opaque) = BYTE2(v282);
          if (v66)
          {
            v67 = BYTE3(v282);
            BYTE1(v62[45]._os_unfair_lock_opaque) = BYTE3(v282);
            if (v67)
            {
              v68 = BYTE4(v282);
              BYTE2(v62[45]._os_unfair_lock_opaque) = BYTE4(v282);
              if (v68)
              {
                v69 = BYTE5(v282);
                HIBYTE(v62[45]._os_unfair_lock_opaque) = BYTE5(v282);
                if (v69)
                {
                  v70 = BYTE6(v282);
                  LOBYTE(v62[46]._os_unfair_lock_opaque) = BYTE6(v282);
                  if (v70)
                  {
                    BYTE1(v62[46]._os_unfair_lock_opaque) = 0;
                  }
                }
              }
            }
          }
        }
      }

      v71 = v270[5];
      if (v71)
      {
        LOWORD(v63[18]._os_unfair_lock_opaque) = nw_dispatch_data_copyout(v71, &v63[18]._os_unfair_lock_opaque + 2, 20);
        nw_dispatch_data_copyout(v258[5], &v63[29], 20);
        if (gLogDatapath == 1)
        {
          v178 = __nwlog_obj();
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            v179 = *(a1 + 32);
            v180 = LOWORD(v63[18]._os_unfair_lock_opaque);
            *applier = 136446722;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
            *&applier[12] = 2114;
            *&applier[14] = v179;
            *&applier[22] = 1024;
            *v284 = v180;
            _os_log_impl(&dword_181A37000, v178, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
          }
        }
      }

      objc_storeStrong(&v63[60], *(*(a1 + 32) + 72));
      nw_masque_connection_pair_setup_outer_connection(v63, v244[5], 17, v193);
      *(*(a1 + 32) + 97) = 1;
    }

    else if (v282)
    {
      if (v264[5])
      {
        v104 = nw_connection_copy_endpoint(*(v60 + 48));
        v105 = nw_masque_copy_matching_connection_pair(*(a1 + 32), v104, &v282);
        v106 = v105;
        if (v105 && *(v105 + 36))
        {
          objc_storeStrong(v105 + 3, *(*(a1 + 32) + 48));
          v106[68] = nw_dispatch_data_copyout(v264[5], (v106 + 69), 20);
          nw_dispatch_data_copyout(v252[5], (v106 + 79), 20);
          if (gLogDatapath == 1)
          {
            v184 = __nwlog_obj();
            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
            {
              v185 = *(a1 + 32);
              v186 = v106[68];
              *applier = 136447234;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v185;
              *&applier[22] = 1024;
              *v284 = v186;
              *&v284[4] = 2080;
              *&v284[6] = &v282;
              *&v284[14] = 2112;
              *&v284[16] = v104;
              _os_log_impl(&dword_181A37000, v184, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received server connection ID of length %u for datagram flow %s from %@", applier, 0x30u);
            }
          }

          options = nw_demux_create_options();
          nw_demux_options_add_pattern(options, 1, v106[68], (v106 + 69), 0);
          nw_masque_connection_pair_setup_inner_direct_connections(v106, options);
          v108 = _nw_http_response_create_well_known(200);
          nw_http_fields_append(v108, "Datagram-Flow-Id", &v282);
          nw_http_fields_append(v108, "Server-Connection-Id", (v106 + 79));
          v109 = nw_http_create_metadata_for_response(v108);
          v110 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v110, v109);
          nw_connection_send(*(*(a1 + 32) + 48), 0, v110, 1, &__block_literal_global_24512);
        }

        else
        {
          v138 = __nwlog_obj();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            v139 = *(a1 + 32);
            *applier = 136446978;
            *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
            *&applier[12] = 2114;
            *&applier[14] = v139;
            *&applier[22] = 2080;
            *v284 = &v282;
            *&v284[8] = 2112;
            *&v284[10] = v104;
            _os_log_impl(&dword_181A37000, v138, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Rejecting server connection ID for unknown datagram flow %s from %@", applier, 0x2Au);
          }

          options = _nw_http_response_create_well_known(501);
          v108 = nw_http_create_metadata_for_response(options);
          v109 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v109, v108);
          v140 = *(a1 + 32);
          v141 = v140[6];
          v217[0] = MEMORY[0x1E69E9820];
          v217[1] = 3221225472;
          v217[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_230;
          v217[3] = &unk_1E6A33F88;
          v218 = v140;
          nw_connection_send(v141, 0, v109, 1, v217);
          v110 = v218;
        }
      }

      else
      {
        v142 = nw_masque_connection_pair_create(v60);
        v143 = v142;
        v144 = v282;
        BYTE2(v142[44]._os_unfair_lock_opaque) = v282;
        if (v144)
        {
          v145 = BYTE1(v282);
          HIBYTE(v142[44]._os_unfair_lock_opaque) = BYTE1(v282);
          if (v145)
          {
            v146 = BYTE2(v282);
            LOBYTE(v142[45]._os_unfair_lock_opaque) = BYTE2(v282);
            if (v146)
            {
              v147 = BYTE3(v282);
              BYTE1(v142[45]._os_unfair_lock_opaque) = BYTE3(v282);
              if (v147)
              {
                v148 = BYTE4(v282);
                BYTE2(v142[45]._os_unfair_lock_opaque) = BYTE4(v282);
                if (v148)
                {
                  v149 = BYTE5(v282);
                  HIBYTE(v142[45]._os_unfair_lock_opaque) = BYTE5(v282);
                  if (v149)
                  {
                    v150 = BYTE6(v282);
                    LOBYTE(v142[46]._os_unfair_lock_opaque) = BYTE6(v282);
                    if (v150)
                    {
                      BYTE1(v142[46]._os_unfair_lock_opaque) = 0;
                    }
                  }
                }
              }
            }
          }
        }

        v151 = v270[5];
        if (v151)
        {
          LOWORD(v143[18]._os_unfair_lock_opaque) = nw_dispatch_data_copyout(v151, &v143[18]._os_unfair_lock_opaque + 2, 20);
          nw_dispatch_data_copyout(v258[5], &v143[29], 20);
          if (gLogDatapath == 1)
          {
            v187 = __nwlog_obj();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
            {
              v188 = *(a1 + 32);
              v189 = LOWORD(v143[18]._os_unfair_lock_opaque);
              *applier = 136446722;
              *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
              *&applier[12] = 2114;
              *&applier[14] = v188;
              *&applier[22] = 1024;
              *v284 = v189;
              _os_log_impl(&dword_181A37000, v187, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received client connection ID of length %u", applier, 0x1Cu);
            }

            v61 = v193;
          }
        }

        nw_masque_connection_pair_setup_outer_connection(v143, v244[5], 17, v61);
      }
    }

    else
    {
      v127 = _nw_http_response_create_well_known(501);
      v128 = nw_http_create_metadata_for_response(v127);
      v129 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v129, v128);
      v130 = *(a1 + 32);
      v131 = v130[6];
      v219[0] = MEMORY[0x1E69E9820];
      v219[1] = 3221225472;
      v219[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_229;
      v219[3] = &unk_1E6A33F88;
      v220 = v130;
      nw_connection_send(v131, 0, v129, 1, v219);
    }

    goto LABEL_34;
  }

  if (!nw_http_request_has_method(v58, "POST"))
  {
    v98 = _nw_http_response_create_well_known(501);
    v99 = nw_http_create_metadata_for_response(v98);
    v100 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v100, v99);
    v101 = *(a1 + 32);
    v102 = v101[6];
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_267;
    completion[3] = &unk_1E6A33F88;
    v202 = v101;
    nw_connection_send(v102, 0, v100, 1, completion);

    goto LABEL_34;
  }

  v190 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://host.com%@", v227[5]];
  v191 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v190];
  v192 = [v191 query];
  [v192 componentsSeparatedByString:@"&"];
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v72 = v214 = 0u;
  v73 = [v72 countByEnumeratingWithState:&v213 objects:v281 count:16];
  if (!v73)
  {

    v196 = 0;
    v197 = 0;
    goto LABEL_109;
  }

  v196 = 0;
  v197 = 0;
  v74 = *v214;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v214 != v74)
      {
        objc_enumerationMutation(v72);
      }

      v76 = [*(*(&v213 + 1) + 8 * i) componentsSeparatedByString:@"="];
      if ([v76 count] == 2)
      {
        v77 = [v76 firstObject];
        v78 = [v77 isEqualToString:@"targethost"];

        if (v78)
        {
          v79 = [v76 lastObject];
          v80 = v197;
          v197 = v79;
LABEL_72:

          goto LABEL_73;
        }
      }

      if ([v76 count] == 2)
      {
        v81 = [v76 firstObject];
        v82 = [v81 isEqualToString:@"targetpath"];

        if (v82)
        {
          v83 = [v76 lastObject];
          v80 = v196;
          v196 = v83;
          goto LABEL_72;
        }
      }

LABEL_73:
    }

    v73 = [v72 countByEnumeratingWithState:&v213 objects:v281 count:16];
  }

  while (v73);

  if (v197 && v196)
  {
    v84 = __nwlog_obj();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      v85 = *(a1 + 32);
      *applier = 136446978;
      *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke";
      *&applier[12] = 2114;
      *&applier[14] = v85;
      *&applier[22] = 2112;
      *v284 = v197;
      *&v284[8] = 2112;
      *&v284[10] = v196;
      _os_log_impl(&dword_181A37000, v84, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Parsed target host %@ and path %@", applier, 0x2Au);
    }

    v86 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://%@%@", v197, v196];
    v87 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v86];
    v88 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v87];
    [v88 setHTTPMethod:@"POST"];
    *applier = 0;
    *&applier[8] = applier;
    *&applier[16] = 0x2020000000;
    *v284 = 0;
    v210[0] = MEMORY[0x1E69E9820];
    v210[1] = 3221225472;
    v210[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_254;
    v210[3] = &unk_1E6A30820;
    v89 = v88;
    v211 = v89;
    v212 = applier;
    nw_http_fields_enumerate(v193, v210);
    v90 = *(*&applier[8] + 24);
    if (v90)
    {
      v91 = *(*(a1 + 32) + 48);
      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_260;
      v205[3] = &unk_1E6A3A648;
      v206 = v89;
      v207 = *(a1 + 32);
      nw_connection_receive_internal(v91, 0, v90, v90, v205);

      v92 = v206;
    }

    else
    {
      v152 = __nwlog_obj();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
      {
        v153 = *(a1 + 32);
        *buf = 136446466;
        *&buf[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
        *&buf[12] = 2114;
        *&buf[14] = v153;
        _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Request missing content length", buf, 0x16u);
      }

      v92 = _nw_http_response_create_well_known(501);
      v154 = nw_http_create_metadata_for_response(v92);
      v155 = nw_content_context_create("response");
      v156 = v154;
      nw_content_context_set_metadata_for_protocol(v155, v154);
      v157 = *(a1 + 32);
      v158 = v157[6];
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_259;
      v208[3] = &unk_1E6A33F88;
      v209 = v157;
      nw_connection_send(v158, 0, v155, 1, v208);
    }

    _Block_object_dispose(applier, 8);
    if (v90)
    {
      goto LABEL_141;
    }

    goto LABEL_34;
  }

LABEL_109:
  v119 = __nwlog_obj();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
  {
    v120 = *(a1 + 32);
    v121 = v227[5];
    *applier = 136446722;
    *&applier[4] = "nw_masque_read_inner_request_on_queue_block_invoke_2";
    *&applier[12] = 2114;
    *&applier[14] = v120;
    *&applier[22] = 2112;
    *v284 = v121;
    _os_log_impl(&dword_181A37000, v119, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed to parse target host and path out of request path: %@", applier, 0x20u);
  }

  v122 = _nw_http_response_create_well_known(501);
  v123 = nw_http_create_metadata_for_response(v122);
  v124 = nw_content_context_create("response");
  nw_content_context_set_metadata_for_protocol(v124, v123);
  v125 = *(a1 + 32);
  v126 = v125[6];
  v203[0] = MEMORY[0x1E69E9820];
  v203[1] = 3221225472;
  v203[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_266;
  v203[3] = &unk_1E6A33F88;
  v204 = v125;
  nw_connection_send(v126, 0, v124, 1, v203);

LABEL_141:
LABEL_34:
  _Block_object_dispose(&v226, 8);

  _Block_object_dispose(&v234, 8);
  _Block_object_dispose(&v238, 8);
  _Block_object_dispose(&v243, 8);

  _Block_object_dispose(&v251, 8);
  _Block_object_dispose(&v257, 8);

  _Block_object_dispose(&v263, 8);
  _Block_object_dispose(&v269, 8);

LABEL_35:
  v8 = 0;
LABEL_36:
}

void sub_182551998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, _Unwind_Exception *exception_objecta, uint64_t a22, void *a23)
{
  _Block_object_dispose(&STACK[0x260], 8);

  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose(&STACK[0x350], 8);

  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x410], 8);

  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);

  _Unwind_Resume(a1);
}

void nw_masque_connection_cancel_on_queue(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3[112] != 255)
  {
    if (v4 && !*(v3 + 15))
    {
      objc_storeStrong(v3 + 15, a2);
    }

    nw_dictionary_apply(*(v3 + 7), &__block_literal_global_365);
    nw_dictionary_apply(*(v3 + 8), &__block_literal_global_367);
    v6 = *(v3 + 6);
    if (v6)
    {
      nw_connection_cancel(v6);
      v7 = *(v3 + 6);
      *(v3 + 6) = 0;
    }

    if (gLogDatapath == 1)
    {
      v11 = __nwlog_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v3 + 15);
        v13 = 136446722;
        v14 = "nw_masque_connection_cancel_on_queue";
        v15 = 2114;
        v16 = v3;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@, error %{public}@", &v13, 0x20u);
      }
    }

    v3[112] = -1;
    v8 = *(v3 + 7);
    *(v3 + 7) = 0;

    v9 = *(v3 + 8);
    *(v3 + 8) = 0;

    v10 = *(v3 + 13);
    *(v3 + 13) = 0;

    v3 = 0;
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_201(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v4 = __nwlog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = 136446722;
      v7 = "nw_masque_read_inner_request_on_queue_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2080;
      v11 = a2;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received method %s", &v6, 0x20u);
    }
  }
}

uint64_t __Block_byref_object_copy__30254(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_203(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 3 && *__s == 58 && __s[v4 - 1] == 58)
    {
      v5 = v4;
      v6 = dispatch_data_create(__s, v4, 0, 0);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v12 = dispatch_data_create(__s + 1, v5 - 2, 0, 0);
      v9 = dispatch_data_create_with_transform();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (v4 >= 3 && *__s == 58 && __s[v4 - 1] == 58)
    {
      v5 = v4;
      v6 = dispatch_data_create(__s, v4, 0, 0);
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v12 = dispatch_data_create(__s + 1, v5 - 2, 0, 0);
      v9 = dispatch_data_create_with_transform();
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3(uint64_t a1, const char *a2)
{
  if (a2)
  {
    url = 0;
    asprintf(&url, "tcp://%s", a2);
    v3 = nw_endpoint_create_url(url);
    v4 = nw_endpoint_copy_host_port_endpoint_for_url(v3);
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (url)
    {
      free(url);
    }
  }
}

uint64_t ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_4(uint64_t result, char *__s1)
{
  if (__s1)
  {
    v3 = result;
    result = strcmp(__s1, "connect-udp");
    if (result)
    {
      result = strcmp(__s1, "connect-ip");
      if (result)
      {
        return result;
      }

      v4 = 40;
    }

    else
    {
      v4 = 32;
    }

    *(*(*(v3 + v4) + 8) + 24) = 1;
  }

  return result;
}

void *___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_5(void *result, char *__s)
{
  if (__s)
  {
    v2 = result[4];
    v4 = strlen(__s);

    return memcpy(v2, __s, v4);
  }

  return result;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

os_unfair_lock_s *nw_masque_connection_pair_create(NWConcrete_nw_masque_connection *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [NWConcrete_nw_masque_connection_pair alloc];
  v4 = v2;
  if (!v3)
  {
    goto LABEL_4;
  }

  v44.receiver = v3;
  v44.super_class = NWConcrete_nw_masque_connection_pair;
  v3 = [(NWConcrete_nw_masque_connection *)&v44 init];
  if (v3)
  {
    v5 = dispatch_group_create();
    v6 = *(v3 + 29);
    *(v3 + 29) = v5;

    objc_storeStrong(v3 + 2, a1);
    v7 = nw_connection_copy_endpoint(*(v4 + 6));
    v8 = *(v3 + 28);
    *(v3 + 28) = v7;

    v9 = *(v3 + 6);
    *(v3 + 6) = 0;

    snprintf(v3 + 200, 0x11uLL, "%llx", v3);
    goto LABEL_4;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v21, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_connection_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v34, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v21)
  {
    free(v21);
  }

  v3 = 0;
LABEL_4:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke;
  aBlock[3] = &unk_1E6A3D760;
  v10 = v4;
  v40 = v10;
  v11 = v3;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 6);
  v12[2](v12);
  os_unfair_lock_unlock(v4 + 6);

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2;
  v36[3] = &unk_1E6A3D958;
  v13 = v10;
  v37 = v13;
  v38 = v11;
  v14 = v38;
  v15 = v36;
  if (v14)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL51nw_masque_connection_pair_set_state_changed_handlerP36NWConcrete_nw_masque_connection_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke;
    v46 = &unk_1E6A3D710;
    v47 = v14;
    v48 = v15;
    v16 = _Block_copy(buf);
    os_unfair_lock_lock(v14 + 2);
    v16[2](v16);
    os_unfair_lock_unlock(v14 + 2);

    goto LABEL_6;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
  v25 = _os_log_send_and_compose_impl();

  LOBYTE(v44.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, &v44, &type))
  {
    if (LOBYTE(v44.receiver) == 17)
    {
      v26 = __nwlog_obj();
      receiver = v44.receiver;
      if (os_log_type_enabled(v26, v44.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, receiver, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v32 = v44.receiver;
      v33 = os_log_type_enabled(v26, v44.receiver);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_42;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v35 = v44.receiver;
      if (os_log_type_enabled(v26, v44.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v25)
  {
    free(v25);
  }

LABEL_6:

  v17 = v38;
  v18 = v14;

  return v18;
}

void nw_masque_connection_pair_setup_outer_connection(void *a1, void *a2, int a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v7;
  v11 = v9;
  if (v10)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL40nw_masque_connection_pair_handle_headersP36NWConcrete_nw_masque_connection_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    v69 = &unk_1E6A33CE0;
    v70 = v10;
    nw_http_fields_enumerate(v11, buf);

    goto LABEL_3;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_connection_pair_handle_headers";
  v28 = _os_log_send_and_compose_impl();

  LOBYTE(v64[0]) = 16;
  LOBYTE(v58) = 0;
  if (__nwlog_fault(v28, v64, &v58))
  {
    if (LOBYTE(v64[0]) == 17)
    {
      v29 = __nwlog_obj();
      v30 = v64[0];
      if (os_log_type_enabled(v29, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v58 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v36 = v64[0];
      v37 = os_log_type_enabled(v29, v64[0]);
      if (backtrace_string)
      {
        if (v37)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_connection_pair_handle_headers";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_45;
      }

      if (v37)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v36, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v41 = v64[0];
      if (os_log_type_enabled(v29, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_connection_pair_handle_headers";
        _os_log_impl(&dword_181A37000, v29, v41, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_45:
  if (v28)
  {
    free(v28);
  }

LABEL_3:

  if (a3 == 6)
  {
    secure_tcp = nw_parameters_create_secure_tcp(&__block_literal_global_19409, &__block_literal_global_2);
    goto LABEL_7;
  }

  if (a3 == 17)
  {
    secure_tcp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
LABEL_7:
    custom_ip = secure_tcp;
    goto LABEL_9;
  }

  v14 = &__block_literal_global_2;

  custom_ip = _nw_parameters_create_custom_ip(a3, 0);
LABEL_9:
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__271;
  v62 = __Block_byref_object_dispose__272;
  v63 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke;
  aBlock[3] = &unk_1E6A3D738;
  v57 = &v58;
  v15 = v10;
  v56 = v15;
  v16 = _Block_copy(aBlock);
  os_unfair_lock_lock(v10 + 2);
  v16[2](v16);
  os_unfair_lock_unlock(v10 + 2);

  v17 = objc_loadWeakRetained((*&v15[4]._os_unfair_lock_opaque + 40));
  v18 = v17;
  if (v17)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__93291;
    v70 = __Block_byref_object_dispose__93292;
    v71 = 0;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __nw_masque_server_copy_client_queue_block_invoke;
    v64[3] = &unk_1E6A3D738;
    v66 = buf;
    v65 = v17;
    v19 = _Block_copy(v64);
    os_unfair_lock_lock(v18 + 4);
    v19[2](v19);
    os_unfair_lock_unlock(v18 + 4);

    v20 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);

    goto LABEL_11;
  }

  v31 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_server_copy_client_queue";
  v44 = _os_log_send_and_compose_impl();

  LOBYTE(v64[0]) = 16;
  v67 = 0;
  v32 = v44;
  if (__nwlog_fault(v44, v64, &v67))
  {
    if (LOBYTE(v64[0]) == 17)
    {
      v33 = __nwlog_obj();
      v34 = v64[0];
      if (os_log_type_enabled(v33, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_server_copy_client_queue";
        _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null server", buf, 0xCu);
      }
    }

    else
    {
      if (v67 == 1)
      {
        v38 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        type = v64[0];
        v40 = os_log_type_enabled(v39, v64[0]);
        if (v38)
        {
          if (v40)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_server_copy_client_queue";
            *&buf[12] = 2082;
            *&buf[14] = v38;
            _os_log_impl(&dword_181A37000, v39, type, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v38);
        }

        else
        {
          if (v40)
          {
            *buf = 136446210;
            *&buf[4] = "nw_masque_server_copy_client_queue";
            _os_log_impl(&dword_181A37000, v39, type, "%{public}s called with null server, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_50;
      }

      v33 = __nwlog_obj();
      v42 = v64[0];
      if (os_log_type_enabled(v33, v64[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_server_copy_client_queue";
        _os_log_impl(&dword_181A37000, v33, v42, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_50:
    v32 = v44;
  }

  if (v32)
  {
    free(v32);
  }

  v20 = 0;
LABEL_11:

  if (v59[5] && v20)
  {
    v21 = *&v15[4]._os_unfair_lock_opaque;
    v22 = *(v21 + 16);
    v23 = nw_connection_copy_endpoint(*(v21 + 48));
    v24 = *(*&v15[4]._os_unfair_lock_opaque + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_2;
    block[3] = &unk_1E6A30898;
    v52 = &v58;
    v53 = v22;
    v46 = v8;
    v47 = custom_ip;
    v48 = v23;
    v49 = v11;
    v50 = v24;
    v51 = v15;
    v54 = a3;
    v25 = v24;
    v26 = v23;
    dispatch_async(v20, block);
  }

  else
  {
    nw_masque_connection_pair_setup_outer_connection_inner(v15, v8, a3, custom_ip);
  }

  _Block_object_dispose(&v58, 8);
}

void sub_182553534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  _Block_object_dispose(&a34, 8);

  _Unwind_Resume(a1);
}

os_unfair_lock_s *nw_masque_listener_pair_create(NWConcrete_nw_masque_connection *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [NWConcrete_nw_masque_listener_pair alloc];
  v4 = v2;
  if (!v3)
  {
    goto LABEL_4;
  }

  v44.receiver = v3;
  v44.super_class = NWConcrete_nw_masque_listener_pair;
  v3 = [(NWConcrete_nw_masque_connection *)&v44 init];
  if (v3)
  {
    v5 = dispatch_group_create();
    v6 = *(v3 + 12);
    *(v3 + 12) = v5;

    objc_storeStrong(v3 + 2, a1);
    v7 = nw_connection_copy_endpoint(*(v4 + 6));
    v8 = *(v3 + 11);
    *(v3 + 11) = v7;

    v9 = *(v3 + 3);
    *(v3 + 3) = 0;

    snprintf(v3 + 64, 0x11uLL, "%llx", v3);
    goto LABEL_4;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v42 = 0;
  if (__nwlog_fault(v21, &type, &v42))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v29 = type;
      v30 = os_log_type_enabled(v22, type);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_36;
      }

      if (v30)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v22 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_masque_listener_pair initWithInnerConnection:]";
        _os_log_impl(&dword_181A37000, v22, v34, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_36:
  if (v21)
  {
    free(v21);
  }

  v3 = 0;
LABEL_4:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke;
  aBlock[3] = &unk_1E6A3D760;
  v10 = v4;
  v40 = v10;
  v11 = v3;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(v4 + 6);
  v12[2](v12);
  os_unfair_lock_unlock(v4 + 6);

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2;
  v36[3] = &unk_1E6A3D958;
  v13 = v10;
  v37 = v13;
  v38 = v11;
  v14 = v38;
  v15 = v36;
  if (v14)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL49nw_masque_listener_pair_set_state_changed_handlerP34NWConcrete_nw_masque_listener_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke;
    v46 = &unk_1E6A3D710;
    v47 = v14;
    v48 = v15;
    v16 = _Block_copy(buf);
    os_unfair_lock_lock(v14 + 2);
    v16[2](v16);
    os_unfair_lock_unlock(v14 + 2);

    goto LABEL_6;
  }

  v24 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
  v25 = _os_log_send_and_compose_impl();

  LOBYTE(v44.receiver) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, &v44, &type))
  {
    if (LOBYTE(v44.receiver) == 17)
    {
      v26 = __nwlog_obj();
      receiver = v44.receiver;
      if (os_log_type_enabled(v26, v44.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, receiver, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v32 = v44.receiver;
      v33 = os_log_type_enabled(v26, v44.receiver);
      if (v31)
      {
        if (v33)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
          *&buf[12] = 2082;
          *&buf[14] = v31;
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v31);
        goto LABEL_42;
      }

      if (v33)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v32, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v35 = v44.receiver;
      if (os_log_type_enabled(v26, v44.receiver))
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_set_state_changed_handler";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_42:
  if (v25)
  {
    free(v25);
  }

LABEL_6:

  v17 = v38;
  v18 = v14;

  return v18;
}

void nw_masque_listener_pair_setup_outer_connection_group(void *a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = v3;
    *v54 = MEMORY[0x1E69E9820];
    *&v54[8] = 3221225472;
    *&v54[16] = ___ZL38nw_masque_listener_pair_handle_headersP34NWConcrete_nw_masque_listener_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    v55 = &unk_1E6A33CE0;
    v56 = v5;
    nw_http_fields_enumerate(v4, v54);

    secure_udp = nw_parameters_create_secure_udp(&__block_literal_global_19409, &__block_literal_global_2);
    v7 = secure_udp;
    v8 = *(*(v5 + 2) + 80);
    if (v8)
    {
      nw_parameters_require_interface(secure_udp, v8);
    }

    nw_parameters_set_proxy_applied(v7);
    if (*(v5 + 16))
    {
      nw_parameters_set_reuse_local_address(v7, 1);
    }

    v9 = *(v5 + 2);
    v10 = *(v9 + 16);
    v11 = nw_connection_copy_endpoint(*(v9 + 48));
    *v54 = 0;
    *&v54[8] = v54;
    *&v54[16] = 0x3032000000;
    v55 = __Block_byref_object_copy__271;
    v56 = __Block_byref_object_dispose__272;
    v57 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke;
    aBlock[3] = &unk_1E6A3D738;
    v51 = v54;
    v12 = v5;
    v50 = v12;
    v13 = _Block_copy(aBlock);
    os_unfair_lock_lock(v5 + 2);
    v13[2](v13);
    os_unfair_lock_unlock(v5 + 2);

    v14 = *(*&v54[8] + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v10, 0, v7, v11, v4);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(v5 + 2);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group";
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v59 = v7;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}@ creating new outer connection group with parameters %@", buf, 0x20u);
    }

    v17 = nw_connection_group_create_with_parameters(v7);
    v18 = v12[3];
    v12[3] = v17;

    nw_connection_group_set_queue(v12[3], *(*(v5 + 2) + 32));
    v19 = v12[3];
    state_changed_handler[0] = MEMORY[0x1E69E9820];
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_346;
    state_changed_handler[3] = &unk_1E6A3D820;
    v20 = v12;
    v48 = v20;
    nw_connection_group_set_state_changed_handler(v19, state_changed_handler);
    v21 = v20;
    v22 = v21;
    if (*(*(v5 + 2) + 48))
    {
      v23 = v12[3];
      if (v23)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke;
        v59 = &unk_1E6A309B0;
        v60 = v21;
        nw_connection_group_set_receive_handler(v23, 0xFFFFFFFF, 0, buf);

LABEL_13:
        nw_connection_group_start(v12[3]);

        _Block_object_dispose(v54, 8);
        goto LABEL_14;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
      v46 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      v29 = v46;
      if (!__nwlog_fault(v46, &type, &v52))
      {
LABEL_66:
        if (v29)
        {
          free(v29);
        }

        goto LABEL_13;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
        }

LABEL_53:

        goto LABEL_65;
      }

      if (v52 != 1)
      {
        v30 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v43, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_53;
      }

      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v45 = type;
      v40 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v40)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_44:

        free(backtrace_string);
LABEL_65:
        v29 = v46;
        goto LABEL_66;
      }

      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v38, v45, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
      v46 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v52 = 0;
      v29 = v46;
      if (!__nwlog_fault(v46, &type, &v52))
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v30 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 0xCu);
        }

        goto LABEL_53;
      }

      if (v52 != 1)
      {
        v30 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v30, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null pair->mlp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_53;
      }

      backtrace_string = __nw_create_backtrace_string();
      v38 = __nwlog_obj();
      v44 = type;
      v39 = os_log_type_enabled(v38, type);
      if (backtrace_string)
      {
        if (v39)
        {
          *buf = 136446466;
          *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null pair->mlp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        goto LABEL_44;
      }

      if (v39)
      {
        *buf = 136446210;
        *&buf[4] = "nw_masque_listener_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v38, v44, "%{public}s called with null pair->mlp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }
    }

    goto LABEL_65;
  }

  v24 = __nwlog_obj();
  *v54 = 136446210;
  *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
  v25 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v25, buf, &type))
  {
    if (buf[0] == 17)
    {
      v26 = __nwlog_obj();
      v27 = buf[0];
      if (os_log_type_enabled(v26, buf[0]))
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null pair", v54, 0xCu);
      }
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v34 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v35 = buf[0];
      v36 = os_log_type_enabled(v26, buf[0]);
      if (v34)
      {
        if (v36)
        {
          *v54 = 136446466;
          *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
          *&v54[12] = 2082;
          *&v54[14] = v34;
          _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, dumping backtrace:%{public}s", v54, 0x16u);
        }

        free(v34);
        goto LABEL_57;
      }

      if (v36)
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v35, "%{public}s called with null pair, no backtrace", v54, 0xCu);
      }
    }

    else
    {
      v26 = __nwlog_obj();
      v41 = buf[0];
      if (os_log_type_enabled(v26, buf[0]))
      {
        *v54 = 136446210;
        *&v54[4] = "nw_masque_listener_pair_setup_outer_connection_group";
        _os_log_impl(&dword_181A37000, v26, v41, "%{public}s called with null pair, backtrace limit exceeded", v54, 0xCu);
      }
    }
  }

LABEL_57:
  if (v25)
  {
    free(v25);
  }

LABEL_14:
}

void sub_1825547C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

void nw_masque_listener_pair_read_inner(NWConcrete_nw_masque_listener_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_listener_pair_read_inner";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v3 = *(*(v1 + 2) + 48);
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mlp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mlp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mlp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_listener_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mlp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v1 + 3))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_listener_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_listener_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_listener_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

id nw_masque_copy_matching_connection_pair(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30254;
  v21 = __Block_byref_object_dispose__30255;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke;
  v12[3] = &unk_1E6A333D8;
  v7 = v5;
  v13 = v7;
  v14 = v6;
  v15 = &v17;
  v16 = a3;
  v8 = v6;
  v9 = _Block_copy(v12);
  os_unfair_lock_lock(v5 + 6);
  v9[2](v9);
  os_unfair_lock_unlock(v5 + 6);

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

void sub_18255511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void nw_masque_connection_pair_setup_inner_direct_connections(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = nw_connection_copy_parameters(*(*(v3 + 2) + 48));
    v6 = v5;
    if (!*(v3 + 4))
    {
      v7 = _nw_parameters_copy(v5);
      v8 = nw_parameters_copy_default_protocol_stack(v7);
      nw_protocol_stack_clear_application_protocols(v8);
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v9 = os_retain(nw_protocol_demux_copy_definition::definition);
        options = nw_protocol_create_options(v9);
        if (v9)
        {
          os_release(v9);
        }
      }

      else
      {
        options = nw_protocol_create_options(0);
      }

      nw_protocol_stack_prepend_application_protocol(v8, options);

      v11 = nw_connection_create_with_connection(*(*(v3 + 2) + 48), v7);
      v12 = *(v3 + 4);
      *(v3 + 4) = v11;

      nw_connection_set_queue(*(v3 + 4), *(*(v3 + 2) + 32));
      v13 = *(v3 + 4);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke;
      handler[3] = &unk_1E6A3D820;
      v34 = v3;
      nw_connection_set_state_changed_handler(v13, handler);
      nw_connection_start(*(v3 + 4));
    }

    v14 = _nw_parameters_copy(v6);
    v15 = nw_parameters_copy_default_protocol_stack(v14);
    nw_protocol_stack_clear_application_protocols(v15);
    nw_protocol_stack_prepend_application_protocol(v15, v4);
    v16 = nw_connection_create_with_connection(*(*(v3 + 2) + 48), v14);
    nw_connection_set_queue(v16, *(*(v3 + 2) + 32));
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke_361;
    v30[3] = &unk_1E6A3D958;
    v17 = v3;
    v31 = v17;
    v18 = v16;
    v32 = v18;
    nw_connection_set_state_changed_handler(&v18->super, v30);
    nw_connection_start(&v18->super);
    v19 = *(v17 + 5);
    if (v19 || (v20 = _nw_array_create(), v21 = *(v17 + 5), *(v17 + 5) = v20, v21, (v19 = *(v17 + 5)) != 0))
    {
      if (v18)
      {
        _nw_array_append(v19, v18);
      }
    }

    nw_masque_connection_pair_read_inner_direct(v17, v18);

    goto LABEL_15;
  }

  v22 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_masque_connection_pair_setup_inner_direct_connections";
  v23 = _os_log_send_and_compose_impl();

  v36 = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v23, &v36, &v35))
  {
    if (v36 == OS_LOG_TYPE_FAULT)
    {
      v24 = __nwlog_obj();
      v25 = v36;
      if (os_log_type_enabled(v24, v36))
      {
        *buf = 136446210;
        v38 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v27 = v36;
      v28 = os_log_type_enabled(v24, v36);
      if (backtrace_string)
      {
        if (v28)
        {
          *buf = 136446466;
          v38 = "nw_masque_connection_pair_setup_inner_direct_connections";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_32;
      }

      if (v28)
      {
        *buf = 136446210;
        v38 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v24, v27, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v24 = __nwlog_obj();
      v29 = v36;
      if (os_log_type_enabled(v24, v36))
      {
        *buf = 136446210;
        v38 = "nw_masque_connection_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v24, v29, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_32:
  if (v23)
  {
    free(v23);
  }

LABEL_15:
}

uint64_t ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  [*(a1 + 32) setValue:v7 forHTTPHeaderField:v6];
  if (![v6 caseInsensitiveCompare:@"content-length"])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 integerValue];
  }

  return 1;
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_2_260(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  [v3 setHTTPBody:v5];
  v7 = [MEMORY[0x1E695AC78] sharedSession];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3_262;
  v10[3] = &unk_1E6A30848;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = [v7 dataTaskWithRequest:v8 completionHandler:v10];
  [v9 resume];
}

void ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_3_262(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v4 = a3;
  if (gLogDatapath == 1)
  {
    v21 = __nwlog_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 32);
      *buf = 136446722;
      v33 = "nw_masque_read_inner_request_on_queue_block_invoke_3";
      v34 = 2114;
      v35 = v22;
      v36 = 1024;
      LODWORD(v37) = [v4 statusCode];
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %u response to client", buf, 0x1Cu);
    }
  }

  v5 = _nw_http_response_create([v4 statusCode], 0);
  [v4 allHeaderFields];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v6 = v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v7)
  {
    v9 = *v29;
    *&v8 = 136446978;
    v23 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:{v11, v23}];
        if (gLogDatapath == 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = *(a1 + 32);
            *buf = v23;
            v33 = "nw_masque_read_inner_request_on_queue_block_invoke";
            v34 = 2114;
            v35 = v14;
            v36 = 2112;
            v37 = v11;
            v38 = 2112;
            v39 = v12;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying response header to client: %@: %@", buf, 0x2Au);
          }
        }

        nw_http_fields_append(v5, [v11 UTF8String], objc_msgSend(v12, "UTF8String"));

        ++v10;
      }

      while (v7 != v10);
      v15 = [v6 countByEnumeratingWithState:&v28 objects:v40 count:16];
      v7 = v15;
    }

    while (v15);
  }

  metadata_for_response = nw_http_create_metadata_for_response(v5);
  if (v25)
  {
    v17 = [v25 _createDispatchData];
  }

  else
  {
    v17 = 0;
  }

  v18 = nw_content_context_create("response");
  nw_content_context_set_metadata_for_protocol(v18, metadata_for_response);
  v19 = *(a1 + 32);
  v20 = v19[6];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = ___ZL37nw_masque_read_inner_request_on_queueP31NWConcrete_nw_masque_connection_block_invoke_263;
  completion[3] = &unk_1E6A33F88;
  v27 = v19;
  nw_connection_send(v20, v17, v18, 1, completion);
}

void ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v8 = *(v6 + 16);
    v9 = 136446978;
    v10 = "nw_masque_connection_pair_setup_inner_direct_connections_block_invoke";
    v11 = 2114;
    v12 = v8;
    v13 = 2112;
    v14 = v7;
    v15 = 2080;
    v16 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct send connection to %@ has transitioned to %s", &v9, 0x2Au);
  }
}

void ___ZL56nw_masque_connection_pair_setup_inner_direct_connectionsP36NWConcrete_nw_masque_connection_pairPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke_361(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_connection_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct receive connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void nw_masque_connection_pair_read_inner_direct(NWConcrete_nw_masque_connection_pair *a1, NWConcrete_nw_connection *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl();

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = v29;
      v16 = os_log_type_enabled(v8, v29);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v31 = "nw_masque_connection_pair_read_inner_direct";
          v32 = 2082;
          v33 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v7);
        goto LABEL_5;
      }

      if (v16)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v22 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v22, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v4)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl();

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v11 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null direct_receive_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v8 = __nwlog_obj();
      v23 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v23, "%{public}s called with null direct_receive_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v18 = v29;
    v19 = os_log_type_enabled(v8, v29);
    if (!v17)
    {
      if (v19)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null direct_receive_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v31 = "nw_masque_connection_pair_read_inner_direct";
      v32 = 2082;
      v33 = v17;
      _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null direct_receive_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v3 + 6))
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v31 = "nw_masque_connection_pair_read_inner_direct";
    v7 = _os_log_send_and_compose_impl();

    v29 = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v7, &v29, &v28))
    {
      goto LABEL_55;
    }

    if (v29 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v13 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v28 != 1)
    {
      v8 = __nwlog_obj();
      v24 = v29;
      if (os_log_type_enabled(v8, v29))
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v24, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = __nw_create_backtrace_string();
    v8 = __nwlog_obj();
    v20 = v29;
    v21 = os_log_type_enabled(v8, v29);
    if (!v17)
    {
      if (v21)
      {
        *buf = 136446210;
        v31 = "nw_masque_connection_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v31 = "nw_masque_connection_pair_read_inner_direct";
      v32 = 2082;
      v33 = v17;
      _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v17);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke;
  v25[3] = &unk_1E6A30A28;
  v26 = v3;
  v27 = v5;
  nw_connection_read_multiple(v27, 1u, 0xFFFFFFFF, v25);

LABEL_5:
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7 && (a4 == 40 || !a4))
  {
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1 + 32) + 16);
        *buf = 136446722;
        v21 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
        v22 = 2114;
        v23 = v15;
        v24 = 1024;
        v25 = a3;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to target", buf, 0x1Cu);
      }

      v6 = *(a1 + 32);
      v7 = v6[6];
    }

    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_362;
    batch_block[3] = &unk_1E6A30910;
    v19 = a3;
    v18 = a2;
    v17 = v6;
    nw_connection_batch(v7, batch_block);
    nw_masque_connection_pair_read_inner_direct(*(a1 + 32), *(a1 + 40));
    v10 = v17;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 16);
      v13 = *(v11 + 48);
      *buf = 136446978;
      v21 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
      v22 = 2114;
      v23 = v12;
      v24 = 1024;
      v25 = a4;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_362(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 40) + 8 * v2);
      if (gLogDatapath == 1)
      {
        v6 = __nwlog_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 32);
          v8 = *(v7 + 16);
          if (v3)
          {
            v10 = *(v7 + 16);
            size = dispatch_data_get_size(v3);
            v8 = v10;
          }

          else
          {
            size = 0;
          }

          *buf = 136446722;
          v14 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
          v15 = 2114;
          v16 = v8;
          v17 = 2048;
          v18 = size;
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes directly to target", buf, 0x20u);
        }
      }

      v4 = *(a1 + 32);
      v5 = v4[6];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_363;
      completion[3] = &unk_1E6A33F88;
      v12 = v4;
      nw_connection_send(v5, v3, &__block_literal_global_44658, 1, completion);

      ++v2;
    }

    while (v2 < *(a1 + 48));
  }
}

void ___ZL43nw_masque_connection_pair_read_inner_directP36NWConcrete_nw_masque_connection_pairP24NWConcrete_nw_connection_block_invoke_363(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_inner_direct_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }
}

void ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  if (v1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke_2;
    v3[3] = &unk_1E6A30A00;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    nw_dictionary_apply(v1, v3);
  }
}

uint64_t ___ZL39nw_masque_copy_matching_connection_pairP31NWConcrete_nw_masque_connectionPU25objcproto14OS_nw_endpoint8NSObjectPKc_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(v5 + 219) == 1 && nw_endpoint_is_equal(*(a1 + 32), *(v5 + 28), 0) && !strcmp(*(a1 + 48), v5 + 178))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v97 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  context = v9;
  v74 = a5;
  data = v8;
  if (v8)
  {
    size = dispatch_data_get_size(v8);
    if (!v9 || size)
    {
LABEL_21:
      if (!*(*(a1 + 32) + 24) || v74 && (v20 = v74, v21 = v20[3], v20, v21 != 40))
      {
        v26 = a1;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v12 = gLogObj;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v27 = *(*(v26 + 32) + 16);
          *buf = 136446722;
          *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v27;
          *&buf[22] = 2112;
          v90 = v74;
          _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
        }

        goto LABEL_86;
      }

      if (!data)
      {
        nw_masque_listener_pair_read_inner(*(a1 + 32));
        goto LABEL_87;
      }

      v22 = a1;
      v23 = dispatch_data_get_size(data);
      if (v23 <= 6)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = *(*(v22 + 32) + 16);
          *buf = 136446722;
          *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v25;
          *&buf[22] = 2048;
          v90 = v23;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Received too short content (%zu bytes)", buf, 0x20u);
        }

        nw_masque_listener_pair_read_inner(*(v22 + 32));
        goto LABEL_87;
      }

      v12 = data;
      LOBYTE(v83) = 0;
      v93 = 0;
      v94 = &v93;
      v95 = 0x2000000000;
      v96 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x2000000000;
      v88 = &v83;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
      v90 = &unk_1E6A34348;
      *(&v91 + 1) = &v85;
      v92 = 1;
      *&v91 = &v93;
      dispatch_data_apply(v12, buf);
      _Block_object_dispose(&v85, 8);
      _Block_object_dispose(&v93, 8);
      if (v83 == 6)
      {
        memset(v77, 0, sizeof(v77));
        v93 = 0;
        v94 = &v93;
        v95 = 0x2000000000;
        v96 = 0;
        v85 = 0;
        v86 = &v85;
        v87 = 0x2000000000;
        v88 = v77;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
        v90 = &unk_1E6A34348;
        *(&v91 + 1) = &v85;
        v92 = 19;
        *&v91 = &v93;
        dispatch_data_apply(v12, buf);
        v31 = v94[3];
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v93, 8);
        address = 0;
        if (v31 == 19)
        {
          *&buf[4] = 0;
          LODWORD(v90) = 0;
          *buf = 7708;
          *&buf[8] = *&v77[1];
          *&buf[2] = *&v77[17];
          address = _nw_endpoint_create_address(buf);
        }

        subrange = dispatch_data_create_subrange(v12, 0x13uLL, v23 - 19);
      }

      else
      {
        if (v83 != 4)
        {
LABEL_43:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(*(v22 + 32) + 16);
            *buf = 136446466;
            *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v35;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed to parse remote endpoint from datagram", buf, 0x16u);
          }

          nw_masque_listener_pair_read_inner(*(v22 + 32));
          goto LABEL_86;
        }

        *&v77[3] = 0;
        *v77 = 0;
        v93 = 0;
        v94 = &v93;
        v95 = 0x2000000000;
        v96 = 0;
        v85 = 0;
        v86 = &v85;
        v87 = 0x2000000000;
        v88 = v77;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __nw_dispatch_data_copyout_block_invoke;
        v90 = &unk_1E6A34348;
        *(&v91 + 1) = &v85;
        v92 = 7;
        *&v91 = &v93;
        dispatch_data_apply(v12, buf);
        v28 = v94[3];
        _Block_object_dispose(&v85, 8);
        _Block_object_dispose(&v93, 8);
        address = 0;
        if (v28 == 7)
        {
          *&buf[8] = 0;
          *buf = 528;
          *&buf[4] = *&v77[1];
          *&buf[2] = *&v77[5];
          address = _nw_endpoint_create_address(buf);
        }

        subrange = dispatch_data_create_subrange(v12, 7uLL, v23 - 7);
      }

      v12 = subrange;
      if (address)
      {
        if (gLogDatapath == 1)
        {
          v62 = __nwlog_obj();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            v63 = *(*(v22 + 32) + 16);
            if (v12)
            {
              v64 = dispatch_data_get_size(v12);
            }

            else
            {
              v64 = 0;
            }

            *buf = 136446978;
            *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v63;
            *&buf[22] = 2048;
            v90 = v64;
            LOWORD(v91) = 2112;
            *(&v91 + 2) = address;
            _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes to target %@", buf, 0x2Au);
          }
        }

        dispatch_group_enter(*(*(v22 + 32) + 96));
        v32 = *(v22 + 32);
        v33 = v32[3];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_357;
        completion[3] = &unk_1E6A33F88;
        v76 = v32;
        nw_connection_group_send_message(v33, v12, address, &__block_literal_global_44658, completion);
        nw_masque_listener_pair_read_inner(*(v22 + 32));

        goto LABEL_86;
      }

      goto LABEL_43;
    }
  }

  else if (!v9)
  {
    goto LABEL_21;
  }

  v70 = a1;
  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v11 = nw_protocol_copy_http_definition_http_definition;
  v12 = nw_content_context_copy_protocol_metadata(v9, v11);

  if (!v12 || !nw_http_metadata_is_capsule(v12))
  {

    a1 = v70;
    goto LABEL_21;
  }

  capsule_type = nw_http_metadata_get_capsule_type(v12);
  v69 = nw_http_metadata_copy_capsule_data(v12);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(*(v70 + 32) + 16);
    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    v90 = capsule_type;
    LOWORD(v91) = 2112;
    *(&v91 + 2) = v69;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received capsule type %llx with data %@", buf, 0x2Au);
  }

  if (capsule_type != 16770306)
  {
    goto LABEL_85;
  }

  if (!*(*(v70 + 32) + 40))
  {
    v16 = nw_dictionary_create();
    v17 = *(v70 + 32);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
  {
    dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
  }

  if (nw_protocol_demux_copy_definition::definition)
  {
    v19 = os_retain(nw_protocol_demux_copy_definition::definition);
    options = nw_protocol_create_options(v19);
    if (v19)
    {
      os_release(v19);
    }
  }

  else
  {
    options = nw_protocol_create_options(0);
  }

  *v77 = 0;
  v36 = dispatch_data_get_size(v69);
  if (v36 <= 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136446722;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v36;
    *&buf[22] = 2048;
    v90 = 2;
    v38 = "%{public}s insufficient capsule data bytes %zu < %zu";
    v39 = v37;
    v40 = 32;
LABEL_76:
    _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
    goto LABEL_83;
  }

  nw_dispatch_data_copyout_from_offset(v69, v77, 2, 0);
  v41 = bswap32(*v77) >> 16;
  if (v36 != v41 + 2)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v37 = gLogObj;
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
    *&buf[12] = 2048;
    *&buf[14] = v36;
    *&buf[22] = 2048;
    v90 = 2;
    LOWORD(v91) = 1024;
    *(&v91 + 2) = v41;
    v38 = "%{public}s mismatched capsule data bytes %zu != (%zu + %u)";
    v39 = v37;
    v40 = 38;
    goto LABEL_76;
  }

  if (v36 == 2)
  {
    goto LABEL_84;
  }

  endpoint = 0;
  v42 = 2;
  v43 = v69;
  do
  {
    v84 = 0;
    nw_dispatch_data_copyout_from_offset(v43, &v84, 1, v42);
    v83 = 0;
    nw_dispatch_data_copyout_from_offset(v43, &v83, 2, v42 + 1);
    v46 = v42 + 3;
    v47 = v83;
    v48 = __rev16(v83);
    v68 = v42 + 3 + v48;
    if (v84 != 2)
    {
      if (v84 == 1)
      {
        v49 = dispatch_data_create_subrange(v69, v42 + 3, v48);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v90 = 0;
        if (v47)
        {
          v50 = 0;
          do
          {
            v82 = 0;
            v81 = 0;
            nw_dispatch_data_copyout_from_offset(v49, &v82, 2, v50);
            v53 = *(*&buf[8] + 24) + 2;
            *(*&buf[8] + 24) = v53;
            nw_dispatch_data_copyout_from_offset(v49, &v81, 2, v53);
            *(*&buf[8] + 24) += 2;
            v93 = 0;
            v94 = &v93;
            v95 = 0x2020000000;
            v96 = 0;
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 3221225472;
            v80[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_354;
            v80[3] = &unk_1E6A30988;
            v80[4] = buf;
            v80[5] = &v93;
            dispatch_data_apply(v49, v80);
            v54 = *(*&buf[8] + 24) + v82;
            *(*&buf[8] + 24) = v54;
            v79 = 0;
            nw_dispatch_data_copyout_from_offset(v49, &v79, 1, v54);
            ++*(*&buf[8] + 24);
            v85 = 0;
            v86 = &v85;
            v87 = 0x2020000000;
            v88 = 0;
            if (v79)
            {
              applier[0] = MEMORY[0x1E69E9820];
              applier[1] = 3221225472;
              applier[2] = ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_2;
              applier[3] = &unk_1E6A30988;
              applier[4] = buf;
              applier[5] = &v85;
              dispatch_data_apply(v49, applier);
              v51 = v82;
              *(*&buf[8] + 24) += v82;
              v52 = v86[3];
            }

            else
            {
              v52 = 0;
              v51 = v82;
            }

            nw_demux_options_add_pattern(options, v81, v51, v94[3], v52);
            _Block_object_dispose(&v85, 8);
            _Block_object_dispose(&v93, 8);
            v50 = *(*&buf[8] + 24);
          }

          while (v50 < v48);
        }

        _Block_object_dispose(buf, 8);

        v44 = v68;
        goto LABEL_54;
      }

      v44 = v42 + 3 + v48;
LABEL_67:
      if (v44 != v46)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    v93 = 0;
    v94 = 0;
    nw_dispatch_data_copyout_from_offset(v69, &v93, 16, v42 + 3);
    if (BYTE1(v93) == 30)
    {
      memset(buf, 0, sizeof(buf));
      LODWORD(v90) = 0;
      nw_dispatch_data_copyout_from_offset(v69, buf, 28, v42 + 3);
      v44 = v42 + 3 + v48;
      v55 = _nw_endpoint_create_address(buf);

      v46 = v42 + 31;
    }

    else
    {
      v44 = v42 + 3 + v48;
      if (BYTE1(v93) != 2)
      {
        goto LABEL_67;
      }

      *buf = 0;
      *&buf[8] = 0;
      nw_dispatch_data_copyout_from_offset(v69, buf, 16, v42 + 3);
      v55 = _nw_endpoint_create_address(buf);

      v46 = v42 + 19;
    }

    endpoint = v55;
    if (v44 != v46)
    {
LABEL_71:
      v56 = __nwlog_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke_3";
        *&buf[12] = 2048;
        *&buf[14] = v44;
        *&buf[22] = 2048;
        v90 = v46;
        _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_ERROR, "%{public}s mismatched end offset %zu != %zu", buf, 0x20u);
      }

      goto LABEL_82;
    }

LABEL_54:
    v42 = v44;
    v45 = v44 >= v36;
    v43 = v69;
  }

  while (!v45);
  v57 = endpoint;
  if (!endpoint)
  {
    goto LABEL_84;
  }

  v58 = v69;
  v59 = nw_endpoint_copy_address_string(endpoint);
  nw_dictionary_set_value(*(*(v70 + 32) + 40), v59, options);
  if (v59)
  {
    free(v59);
  }

  if (gLogDatapath == 1)
  {
    v65 = __nwlog_obj();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      v66 = *(*(v70 + 32) + 16);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_read_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v66;
      *&buf[22] = 2112;
      v90 = endpoint;
      _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ received listener demux pattern for %@", buf, 0x20u);
    }

    v58 = v69;
    v57 = endpoint;
  }

  nw_masque_listener_pair_setup_inner_direct_connections(*(v70 + 32), options, v57);
  v60 = nw_content_context_create("listener ack pattern");
  metadata_for_capsule = nw_http_create_metadata_for_capsule(16770307, v58);
  nw_content_context_set_metadata_for_protocol(v60, metadata_for_capsule);
  nw_connection_send(*(*(*(v70 + 32) + 16) + 48), 0, v60, 1, &__block_literal_global_24512);

LABEL_82:
  v37 = endpoint;
LABEL_83:

LABEL_84:
LABEL_85:
  nw_masque_listener_pair_read_inner(*(v70 + 32));

LABEL_86:
LABEL_87:
}

BOOL ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

BOOL ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

void nw_masque_listener_pair_setup_inner_direct_connections(void *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = nw_connection_copy_parameters(*(v5[2] + 48));
    v9 = v8;
    if (!v5[6])
    {
      v10 = _nw_parameters_copy(v8);
      v11 = nw_parameters_copy_default_protocol_stack(v10);
      nw_protocol_stack_clear_application_protocols(v11);
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v12 = os_retain(nw_protocol_demux_copy_definition::definition);
        options = nw_protocol_create_options(v12);
        if (v12)
        {
          os_release(v12);
        }
      }

      else
      {
        options = nw_protocol_create_options(0);
      }

      nw_protocol_stack_prepend_application_protocol(v11, options);

      v14 = nw_connection_create_with_connection(*(v5[2] + 48), v10);
      nw_connection_set_queue(v14, *(v5[2] + 32));
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke;
      handler[3] = &unk_1E6A3D958;
      v38 = v5;
      v15 = v14;
      v39 = v15;
      nw_connection_set_state_changed_handler(v15, handler);
      nw_connection_start(v15);
      v16 = v5[6];
      v5[6] = v15;
      v17 = v15;
    }

    v18 = _nw_parameters_copy(v9);
    v19 = nw_parameters_copy_default_protocol_stack(v18);
    nw_protocol_stack_clear_application_protocols(v19);
    if (v6)
    {
      nw_protocol_stack_prepend_application_protocol(v19, v6);
    }

    v20 = nw_connection_create_with_connection(*(v5[2] + 48), v18);
    nw_connection_set_queue(v20, *(v5[2] + 32));
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke_358;
    v34[3] = &unk_1E6A3D958;
    v21 = v5;
    v35 = v21;
    v22 = v20;
    v36 = v22;
    nw_connection_set_state_changed_handler(v22, v34);
    nw_connection_start(v22);
    v23 = v21[7];
    if (v23 || (v24 = _nw_array_create(), v25 = v21[7], v21[7] = v24, v25, (v23 = v21[7]) != 0))
    {
      if (v22)
      {
        _nw_array_append(v23, v22);
      }
    }

    nw_masque_listener_pair_read_inner_direct(v21, v22, v7);

    goto LABEL_17;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v43 = "nw_masque_listener_pair_setup_inner_direct_connections";
  v27 = _os_log_send_and_compose_impl();

  v41 = OS_LOG_TYPE_ERROR;
  v40 = 0;
  if (__nwlog_fault(v27, &v41, &v40))
  {
    if (v41 == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = v41;
      if (os_log_type_enabled(v28, v41))
      {
        *buf = 136446210;
        v43 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v40 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v31 = v41;
      v32 = os_log_type_enabled(v28, v41);
      if (backtrace_string)
      {
        if (v32)
        {
          *buf = 136446466;
          v43 = "nw_masque_listener_pair_setup_inner_direct_connections";
          v44 = 2082;
          v45 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_34;
      }

      if (v32)
      {
        *buf = 136446210;
        v43 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v33 = v41;
      if (os_log_type_enabled(v28, v41))
      {
        *buf = 136446210;
        v43 = "nw_masque_listener_pair_setup_inner_direct_connections";
        _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_34:
  if (v27)
  {
    free(v27);
  }

LABEL_17:
}

void ___ZL34nw_masque_listener_pair_read_innerP34NWConcrete_nw_masque_listener_pair_block_invoke_357(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_inner_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection group %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 96));
}

void ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_listener_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct send connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void ___ZL54nw_masque_listener_pair_setup_inner_direct_connectionsP34NWConcrete_nw_masque_listener_pairPU33objcproto22OS_nw_protocol_options8NSObjectPU25objcproto14OS_nw_endpointS1__block_invoke_358(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v5 = "unknown";
    }

    else
    {
      v5 = off_1E6A2F020[a2];
    }

    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 16);
    v8 = 136446978;
    v9 = "nw_masque_listener_pair_setup_inner_direct_connections_block_invoke";
    v10 = 2114;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s %{public}@ inner direct receive connection to %@ has transitioned to %s", &v8, 0x2Au);
  }
}

void nw_masque_listener_pair_read_inner_direct(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v31 == 1)
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
          v34 = "nw_masque_listener_pair_read_inner_direct";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v24, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!v6)
  {
    v12 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null inner_direct_receive_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v10 = __nwlog_obj();
      v25 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v25, "%{public}s called with null inner_direct_receive_connection, backtrace limit exceeded", buf, 0xCu);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inner_direct_receive_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v21)
    {
      *buf = 136446466;
      v34 = "nw_masque_listener_pair_read_inner_direct";
      v35 = 2082;
      v36 = v19;
      _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null inner_direct_receive_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!v5[3])
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_masque_listener_pair_read_inner_direct";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v9, &type, &v31))
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null pair->mlp_outer_connection_group", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v31 != 1)
    {
      v10 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v26, "%{public}s called with null pair->mlp_outer_connection_group, backtrace limit exceeded", buf, 0xCu);
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
        v34 = "nw_masque_listener_pair_read_inner_direct";
        _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null pair->mlp_outer_connection_group, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v23)
    {
      *buf = 136446466;
      v34 = "nw_masque_listener_pair_read_inner_direct";
      v35 = 2082;
      v36 = v19;
      _os_log_impl(&dword_181A37000, v10, v22, "%{public}s called with null pair->mlp_outer_connection_group, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v19);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke;
  v27[3] = &unk_1E6A309D8;
  v28 = v5;
  v29 = v7;
  v30 = v6;
  nw_connection_read_multiple(v30, 1u, 0xFFFFFFFF, v27);

LABEL_5:
}

void ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(void *a1, id *a2, int a3, int a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (*(a1[4] + 24) && ((LODWORD(v6) = a3, a4 == 40) || !a4))
  {
    if (gLogDatapath == 1)
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1[4] + 16);
        *buf = 136446722;
        v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
        v25 = 2114;
        v26 = v20;
        v27 = 1024;
        LODWORD(v28[0]) = v6;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to target group", buf, 0x1Cu);
      }
    }

    if (v6)
    {
      v6 = v6;
      do
      {
        v8 = *a2;
        if (gLogDatapath == 1)
        {
          v12 = __nwlog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = *(a1[4] + 16);
            if (v8)
            {
              size = dispatch_data_get_size(v8);
            }

            else
            {
              size = 0;
            }

            *buf = 136446722;
            v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
            v25 = 2114;
            v26 = v13;
            v27 = 2048;
            v28[0] = size;
            _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes directly to target", buf, 0x20u);
          }
        }

        v9 = a1[4];
        v10 = a1[5];
        v11 = v9[3];
        completion[0] = MEMORY[0x1E69E9820];
        completion[1] = 3221225472;
        completion[2] = ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_359;
        completion[3] = &unk_1E6A33F88;
        v22 = v9;
        nw_connection_group_send_message(v11, v8, v10, &__block_literal_global_44658, completion);

        ++a2;
        --v6;
      }

      while (v6);
    }

    nw_masque_listener_pair_read_inner_direct(a1[4], a1[6], a1[5]);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[4];
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      *buf = 136446978;
      v24 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
      v25 = 2114;
      v26 = v18;
      v27 = 1024;
      LODWORD(v28[0]) = a4;
      WORD2(v28[0]) = 2112;
      *(v28 + 6) = v17;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL41nw_masque_listener_pair_read_inner_directP34NWConcrete_nw_masque_listener_pairP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke_359(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_inner_direct_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }
}

uint64_t ___ZL38nw_masque_listener_pair_handle_headersP34NWConcrete_nw_masque_listener_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v7 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  v8 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Listener-Association"];
  if (![v9 caseInsensitiveCompare:v11])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136446722;
      v16 = "nw_masque_listener_pair_handle_listener_association_header";
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", &v15, 0x20u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
    if (v13)
    {
      objc_storeStrong(v8 + 16, v7);
    }
  }

  return 1;
}

void *__Block_byref_object_copy__271(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(*(a1 + 32) + 16) + 88));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_346(uint64_t a1, unsigned int a2, void *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 4)
    {
      v7 = "<unknown>";
    }

    else
    {
      v7 = off_1E6A2E220[a2];
    }

    v8 = *(*(a1 + 32) + 16);
    v9 = *(*(a1 + 32) + 24);
    *buf = 136446978;
    *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v61 = v9;
    LOWORD(v62) = 2080;
    *(&v62 + 2) = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ outer connection group to %@ has transitioned to %s", buf, 0x2Au);
  }

  if (a2 - 3 < 2)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    if (*(*(a1 + 32) + 81))
    {
      goto LABEL_20;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 32);
      v27 = *(v26 + 16);
      v28 = *(v26 + 88);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v27;
      *&buf[22] = 2112;
      v61 = v28;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Opened UDP connection group (for %@)", buf, 0x20u);
    }

    *(*(a1 + 32) + 81) = 1;
    v29 = *(a1 + 32);
    if (!*(v29 + 128))
    {
LABEL_29:
      well_known = _nw_http_response_create_well_known(200);
      metadata_for_response = nw_http_create_metadata_for_response(well_known);
      v38 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v38, metadata_for_response);
      nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v38, 1, &__block_literal_global_24512);

      goto LABEL_20;
    }

    port = nw_connection_group_get_port(*(v29 + 24));
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 16) + 40));
    v32 = [*(*(a1 + 32) + 128) UTF8String];
    v33 = WeakRetained;
    v34 = v33;
    if (v33)
    {
      if (v32)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nw_masque_server_set_listener_association_port_block_invoke;
        v61 = &unk_1E6A3D8E0;
        *&v62 = v33;
        *(&v62 + 1) = v32;
        v63 = port;
        v35 = _Block_copy(buf);
        os_unfair_lock_lock(v34 + 4);
        v35[2](v35);
        os_unfair_lock_unlock(v34 + 4);

LABEL_28:
        goto LABEL_29;
      }

      v43 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_server_set_listener_association_port";
      v40 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v40, &type, &v58))
      {
        goto LABEL_63;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v44 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v44, "%{public}s called with null key", buf, 0xCu);
        }
      }

      else if (v58 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v49 = type;
        v50 = os_log_type_enabled(v41, type);
        if (backtrace_string)
        {
          if (v50)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_server_set_listener_association_port";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v40)
          {
            goto LABEL_28;
          }

          goto LABEL_64;
        }

        if (v50)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v49, "%{public}s called with null key, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v52, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    else
    {
      v39 = __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_masque_server_set_listener_association_port";
      v40 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v58 = 0;
      if (!__nwlog_fault(v40, &type, &v58))
      {
        goto LABEL_63;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null server", buf, 0xCu);
        }
      }

      else if (v58 == 1)
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
            *&buf[4] = "nw_masque_server_set_listener_association_port";
            *&buf[12] = 2082;
            *&buf[14] = v45;
            _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v45);
LABEL_63:
          if (!v40)
          {
            goto LABEL_28;
          }

LABEL_64:
          free(v40);
          goto LABEL_28;
        }

        if (v47)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v46, "%{public}s called with null server, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v51 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_set_listener_association_port";
          _os_log_impl(&dword_181A37000, v41, v51, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    goto LABEL_63;
  }

  if (a2 != 1)
  {
    goto LABEL_20;
  }

LABEL_9:
  v10 = *(a1 + 32);
  if ((*(v10 + 81) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 16);
      v18 = *(v16 + 88);
      *buf = 136446978;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v61 = v5;
      LOWORD(v62) = 2112;
      *(&v62 + 2) = v18;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Failed UDP connection group with error %@ (for %@)", buf, 0x2Au);
    }

    *(*(a1 + 32) + 81) = 1;
    v11 = _nw_http_response_create_well_known(500);
    v19 = nw_http_create_metadata_for_response(v11);
    v20 = nw_content_context_create("response");
    nw_content_context_set_metadata_for_protocol(v20, v19);
    v21 = *(a1 + 32);
    v22 = *(v21[2] + 48);
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_347;
    completion[3] = &unk_1E6A33F88;
    v57 = v21;
    nw_connection_send(v22, 0, v20, 1, completion);

    goto LABEL_16;
  }

  if ((*(v10 + 82) & 1) == 0)
  {
    *(v10 + 82) = 1;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(v12 + 16);
      v14 = *(v12 + 88);
      *buf = 136446722;
      *&buf[4] = "nw_masque_listener_pair_setup_outer_connection_group_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v13;
      *&buf[22] = 2112;
      v61 = v14;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Closed UDP connection group (for %@)", buf, 0x20u);
    }

LABEL_16:

    v10 = *(a1 + 32);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v61 = __Block_byref_object_copy__271;
  *&v62 = __Block_byref_object_dispose__272;
  *(&v62 + 1) = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_349;
  aBlock[3] = &unk_1E6A3D738;
  v55 = buf;
  v54 = v10;
  v23 = _Block_copy(aBlock);
  os_unfair_lock_lock((v10 + 8));
  v23[2](v23);
  os_unfair_lock_unlock((v10 + 8));

  v24 = *(*&buf[8] + 40);
  if (v24)
  {
    (*(v24 + 16))(v24, dword_182B08EB0[a2 - 1], v5);
  }

  _Block_object_dispose(buf, 8);
LABEL_20:
}

void ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 24);
    v10 = !v9 || a4 == 0;
    if (!v10)
    {
      v11 = nw_connection_group_copy_remote_endpoint_for_message(v9, v8);
      v12 = v11;
      if (!v11 || (v13 = v11, type = _nw_endpoint_get_type(v13), v13, type != 1))
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v21 = gLogObj;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(*(a1 + 32) + 16);
          *buffer = 136446978;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
          *&buffer[12] = 2114;
          *&buffer[14] = v22;
          v49 = 2048;
          size = dispatch_data_get_size(v7);
          v51 = 2112;
          v52 = v12;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Unable to proxy %zu bytes, invalid endpoint %@", buffer, 0x2Au);
        }

        goto LABEL_35;
      }

      v45 = 0;
      v46 = 0uLL;
      v47 = 0;
      if (nw_endpoint_fillout_v4v6_address(v13, &v45) && BYTE1(v45) != 2 && BYTE1(v45) != 30)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(*(a1 + 32) + 16);
          v25 = dispatch_data_get_size(v7);
          *buffer = 136446978;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
          *&buffer[12] = 2114;
          *&buffer[14] = v24;
          v49 = 2048;
          size = v25;
          v51 = 1024;
          LODWORD(v52) = BYTE1(v45);
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Unable to proxy %zu bytes, invalid address family %u", buffer, 0x26u);
        }

        goto LABEL_35;
      }

      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v15 = *(a1 + 32);
      if (*(v15 + 48) && *(v15 + 40))
      {
        v16 = v13;
        v17 = _nw_endpoint_copy_address_string(v16);

        v18 = nw_dictionary_copy_value(*(*(a1 + 32) + 40), v17);
        if (v17)
        {
          free(v17);
        }

        if (gLogDatapath == 1)
        {
          v34 = __nwlog_obj();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = *(*(a1 + 32) + 16);
            *buffer = 136446722;
            *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
            *&buffer[12] = 2114;
            *&buffer[14] = v35;
            v49 = 2112;
            size = v7;
            _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", buffer, 0x20u);
          }
        }

        if (v18)
        {
          applier[0] = MEMORY[0x1E69E9820];
          applier[1] = 3221225472;
          applier[2] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_350;
          applier[3] = &unk_1E6A308E8;
          v39 = v18;
          v40 = &v41;
          dispatch_data_apply(v7, applier);
        }
      }

      if (gLogDatapath == 1)
      {
        v30 = __nwlog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(*(a1 + 32) + 16);
          v32 = dispatch_data_get_size(v7);
          v10 = *(v42 + 24) == 0;
          *buffer = 136447234;
          *&buffer[4] = "nw_masque_listener_pair_read_outer_datagrams_block_invoke_2";
          if (v10)
          {
            v33 = "";
          }

          else
          {
            v33 = " directly";
          }

          *&buffer[12] = 2114;
          *&buffer[14] = v31;
          v49 = 2048;
          size = v32;
          v51 = 2112;
          v52 = v13;
          v53 = 2080;
          v54 = v33;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes from %@%s to client", buffer, 0x34u);
        }
      }

      if ((v42[3] & 1) == 0)
      {
        if (BYTE1(v45) == 30)
        {
          buffer[0] = 6;
          *&buffer[1] = v46;
          *&buffer[17] = WORD1(v45);
          v26 = dispatch_data_create(buffer, 0x13uLL, 0, 0);
          concat = dispatch_data_create_concat(v26, v7);

          goto LABEL_31;
        }

        if (BYTE1(v45) == 2)
        {
          buffer[0] = 4;
          *&buffer[1] = HIDWORD(v45);
          *&buffer[5] = WORD1(v45);
          v19 = dispatch_data_create(buffer, 7uLL, 0, 0);
          concat = dispatch_data_create_concat(v19, v7);

LABEL_31:
          v7 = concat;
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 96));
      v27 = *(a1 + 32);
      v28 = v27;
      if ((v42[3] & 1) == 0)
      {
        v28 = v27[2];
      }

      v29 = v28[6];
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_352;
      completion[3] = &unk_1E6A33F88;
      v37 = v27;
      nw_connection_send(v29, v7, &__block_literal_global_44658, 1, completion);

      _Block_object_dispose(&v41, 8);
LABEL_35:
    }
  }
}

void sub_18255A798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  matched = nw_masque_connection_pair_match_demux_pattern(a4, a5, *(a1 + 32));
  if (matched)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return matched ^ 1u;
}

void ___ZL44nw_masque_listener_pair_read_outer_datagramsP34NWConcrete_nw_masque_listener_pair_block_invoke_352(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_listener_pair_read_outer_datagrams_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 96));
}

uint64_t nw_masque_connection_pair_match_demux_pattern(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v7 = 0;
  if (a1 && a2 && v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL45nw_masque_connection_pair_match_demux_patternPKhmPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke;
    v9[3] = &unk_1E6A30960;
    v9[5] = a2;
    v9[6] = a1;
    v9[4] = &v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __nw_demux_options_enumerate_patterns_block_invoke;
    v14[3] = &unk_1E6A2F0D8;
    v14[4] = v9;
    nw_protocol_options_access_handle(v5, v14);
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return v7 & 1;
}

uint64_t ___ZL45nw_masque_connection_pair_match_demux_patternPKhmPU33objcproto22OS_nw_protocol_options8NSObject_block_invoke(void *a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v5 = a2;
  if (a1[5] < a2 + a3)
  {
    return 1;
  }

  if (a2)
  {
    v7 = a1[6];
    if (a5)
    {
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        v11 = *a5++;
        v10 = v11;
        v12 = *a4++;
        v13 = (v8 ^ v12) & v10;
        v14 = v13 != 0;
        if (v13)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      while (1)
      {
        v17 = *v7++;
        v16 = v17;
        v18 = *a4++;
        v19 = v16 == v18;
        v14 = v16 != v18;
        if (!v19)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_7;
        }
      }
    }

    v15 = 0;
  }

  else
  {
LABEL_7:
    v14 = 0;
    v15 = 1;
  }

  *(*(a1[4] + 8) + 24) = v15;
  return v14;
}

void ___ZL52nw_masque_listener_pair_setup_outer_connection_groupP34NWConcrete_nw_masque_listener_pairhPU29objcproto18OS_nw_http_request8NSObject_block_invoke_349(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL30nw_masque_listener_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    nw_dictionary_set_value(*(*(a1 + 32) + 64), (*(a1 + 40) + 64), 0);
    v4 = *(a1 + 40);

    nw_masque_listener_pair_cancel(v4);
  }
}

void ___ZL49nw_masque_listener_pair_set_state_changed_handlerP34NWConcrete_nw_masque_listener_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

void nw_masque_listener_pair_cancel(NWConcrete_nw_masque_listener_pair *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 12);
    v4 = *(*(v1 + 2) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL30nw_masque_listener_pair_cancelP34NWConcrete_nw_masque_listener_pair_block_invoke;
    block[3] = &unk_1E6A3D868;
    v14 = v1;
    dispatch_group_notify(v3, v4, block);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_listener_pair_cancel";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v6, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_masque_listener_pair_cancel";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_listener_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL30nw_masque_listener_pair_cancelP34NWConcrete_nw_masque_listener_pair_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2[2] + 48);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 16);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[3];
  if (v6)
  {
    nw_connection_group_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v9 = v2[6];
  if (v9)
  {
    nw_connection_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    *(v10 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v12 = v2[7];
  if (v12)
  {
    _nw_array_apply(v12, &__block_literal_global_345);
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = 0;

    v2 = *(a1 + 32);
  }

  v15 = v2[5];
  v2[5] = 0;
}

uint64_t ___ZL40nw_masque_connection_pair_handle_headersP36NWConcrete_nw_masque_connection_pairPU29objcproto18OS_nw_http_request8NSObject_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = *MEMORY[0x1E69E9840];
  v85 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:5];
  v6 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:5];
  v7 = *(a1 + 32);
  v8 = v85;
  v9 = v6;
  v86 = v8;
  v87 = v9;
  v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Prohibit-Interface"];
  if (![v8 caseInsensitiveCompare:?])
  {
    v82 = v7;
    v40 = [v9 componentsSeparatedByString:{@", "}];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v41 = gLogObj;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *v101 = 136446722;
      v102 = "nw_masque_connection_pair_handle_prohibit_interface_header";
      v103 = 2112;
      v104 = v8;
      v105 = 2112;
      v106 = v40;
      _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", v101, 0x20u);
    }

    v94 = 0u;
    v95 = 0u;
    *type = 0u;
    v93 = 0u;
    v42 = v40;
    v43 = [v42 countByEnumeratingWithState:type objects:buf count:16];
    if (v43)
    {
      *v88 = v7 + 266;
      v91 = v7 + 267;
      v44 = v7 + 270;
      v45 = v7 + 269;
      v46 = *v93;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v93 != v46)
          {
            objc_enumerationMutation(v42);
          }

          v48 = *(*&type[8] + 8 * i);
          v49 = strcmp([v48 UTF8String], "wifi");
          v50 = v82 + 268;
          if (v49)
          {
            v51 = strcmp([v48 UTF8String], "cellular");
            v50 = v45;
            if (v51)
            {
              v52 = strcmp([v48 UTF8String], "wired");
              v50 = v44;
              if (v52)
              {
                v53 = strcmp([v48 UTF8String], "expensive");
                v50 = v91;
                if (v53)
                {
                  v54 = strcmp([v48 UTF8String], "constrained");
                  v50 = *v88;
                  if (v54)
                  {
                    continue;
                  }
                }
              }
            }
          }

          *v50 = 1;
        }

        v43 = [v42 countByEnumeratingWithState:type objects:buf count:16];
      }

      while (v43);
    }

    goto LABEL_59;
  }

  v10 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Require-Interface"];
  if (![v11 caseInsensitiveCompare:v13])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v55 = gLogObj;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_require_interface_header";
      *&buf[12] = 2112;
      *&buf[14] = v11;
      *&buf[22] = 2112;
      v97 = v12;
      _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    if (!strcmp([v12 UTF8String], "wifi"))
    {
      v56 = 1;
    }

    else if (!strcmp([v12 UTF8String], "cellular"))
    {
      v56 = 2;
    }

    else
    {
      if (strcmp([v12 UTF8String], "wired"))
      {
LABEL_58:

        goto LABEL_59;
      }

      v56 = 3;
    }

    v10[64] = v56;
    goto LABEL_58;
  }

  v14 = *(a1 + 32);
  v15 = v11;
  v16 = v12;
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Multipath"];
  if ([v15 caseInsensitiveCompare:v17])
  {

    v18 = *(a1 + 32);
    v19 = v15;
    v20 = v16;
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Client-Application"];
    if ([v19 caseInsensitiveCompare:v21])
    {

      v22 = *(a1 + 32);
      v23 = v19;
      v24 = v20;
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Priority"];
      if ([v23 caseInsensitiveCompare:v25])
      {

        v26 = *(a1 + 32);
        v27 = v23;
        v28 = v24;
        v81 = v26;
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Listener-Association"];
        if ([v27 caseInsensitiveCompare:v29])
        {
LABEL_17:

          goto LABEL_59;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v30 = gLogObj;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_masque_connection_pair_handle_listener_association_header";
          *&buf[12] = 2112;
          *&buf[14] = v27;
          *&buf[22] = 2112;
          v97 = v28;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
        }

        v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v28];
        if (!v31)
        {
LABEL_16:

          goto LABEL_17;
        }

        WeakRetained = objc_loadWeakRetained((*(v81 + 2) + 40));
        v33 = [v28 UTF8String];
        v34 = WeakRetained;
        v35 = v34;
        if (v34)
        {
          if (v33)
          {
            *type = 0;
            *&type[8] = type;
            *&v93 = 0x2020000000;
            WORD4(v93) = 0;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __nw_masque_server_get_listener_association_port_block_invoke;
            v97 = &unk_1E6A3D8B8;
            v98 = v34;
            v99 = type;
            v100 = v33;
            v36 = _Block_copy(buf);
            os_unfair_lock_lock(v35 + 4);
            v36[2](v36);
            os_unfair_lock_unlock(v35 + 4);

            v37 = *(*&type[8] + 24);
            _Block_object_dispose(type, 8);
LABEL_13:

            v81[140] = v37;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v38 = gLogObj;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v39 = v81[140];
              *buf = 136446466;
              *&buf[4] = "nw_masque_connection_pair_handle_listener_association_header";
              *&buf[12] = 1024;
              *&buf[14] = v39;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s local port: %u", buf, 0x12u);
            }

            goto LABEL_16;
          }

          v72 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_get_listener_association_port";
          v69 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v101[0] = 0;
          if (__nwlog_fault(v69, type, v101))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v70 = __nwlog_obj();
              v73 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v73, "%{public}s called with null key", buf, 0xCu);
              }

LABEL_113:

              goto LABEL_114;
            }

            if (v101[0] != 1)
            {
              v70 = __nwlog_obj();
              v80 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v80, "%{public}s called with null key, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_113;
            }

            backtrace_string = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v90 = type[0];
            v78 = os_log_type_enabled(v70, type[0]);
            if (!backtrace_string)
            {
              if (v78)
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v90, "%{public}s called with null key, no backtrace", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v78)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_server_get_listener_association_port";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v70, v90, "%{public}s called with null key, dumping backtrace:%{public}s", buf, 0x16u);
            }

            goto LABEL_101;
          }
        }

        else
        {
          v68 = __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_masque_server_get_listener_association_port";
          v69 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v101[0] = 0;
          if (__nwlog_fault(v69, type, v101))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v70 = __nwlog_obj();
              v71 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v71, "%{public}s called with null server", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v101[0] != 1)
            {
              v70 = __nwlog_obj();
              v79 = type[0];
              if (os_log_type_enabled(v70, type[0]))
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v79, "%{public}s called with null server, backtrace limit exceeded", buf, 0xCu);
              }

              goto LABEL_113;
            }

            backtrace_string = __nw_create_backtrace_string();
            v70 = __nwlog_obj();
            v89 = type[0];
            v77 = os_log_type_enabled(v70, type[0]);
            if (!backtrace_string)
            {
              if (v77)
              {
                *buf = 136446210;
                *&buf[4] = "nw_masque_server_get_listener_association_port";
                _os_log_impl(&dword_181A37000, v70, v89, "%{public}s called with null server, no backtrace", buf, 0xCu);
              }

              goto LABEL_113;
            }

            if (v77)
            {
              *buf = 136446466;
              *&buf[4] = "nw_masque_server_get_listener_association_port";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v70, v89, "%{public}s called with null server, dumping backtrace:%{public}s", buf, 0x16u);
            }

LABEL_101:

            free(backtrace_string);
          }
        }

LABEL_114:
        if (v69)
        {
          free(v69);
        }

        v37 = 0;
        goto LABEL_13;
      }

      if (strstr([v24 UTF8String], "tc=video"))
      {
        v66 = 700;
      }

      else if (strstr([v24 UTF8String], "tc=voice"))
      {
        v66 = 800;
      }

      else if (strstr([v24 UTF8String], "tc=oam"))
      {
        v66 = 400;
      }

      else if (strstr([v24 UTF8String], "tc=best-effort"))
      {
        v66 = 0;
      }

      else if (strstr([v24 UTF8String], "tc=background-user"))
      {
        v66 = 200;
      }

      else if (strstr([v24 UTF8String], "tc=background-system"))
      {
        v66 = 100;
      }

      else if (strstr([v24 UTF8String], "tc=responsive-data"))
      {
        v66 = 300;
      }

      else if (strstr([v24 UTF8String], "tc=responsive-av"))
      {
        v66 = 600;
      }

      else if (strstr([v24 UTF8String], "tc=av-streaming"))
      {
        v66 = 500;
      }

      else
      {
        if (!strstr([v24 UTF8String], "tc=network-control"))
        {
LABEL_89:
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v74 = gLogObj;
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            v75 = v22[63];
            *buf = 136446978;
            *&buf[4] = "nw_masque_connection_pair_handle_priority_header";
            *&buf[12] = 2112;
            *&buf[14] = v23;
            *&buf[22] = 2112;
            v97 = v24;
            LOWORD(v98) = 1024;
            *(&v98 + 2) = v75;
            _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@  traffic class:%u", buf, 0x26u);
          }

          goto LABEL_59;
        }

        v66 = 900;
      }

      v22[63] = v66;
      goto LABEL_89;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v64 = gLogObj;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_client_application_header";
      *&buf[12] = 2112;
      *&buf[14] = v19;
      *&buf[22] = 2112;
      v97 = v20;
      _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    v65 = v18[34];
    v18[34] = v20;
  }

  else
  {
    v83 = v14;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v57 = gLogObj;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446722;
      *&buf[4] = "nw_masque_connection_pair_handle_multipath_header";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      v97 = v16;
      _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %@ : %@", buf, 0x20u);
    }

    if (strstr([v16 UTF8String], "interactive"))
    {
      v83[65] = 2;
    }

    v58 = [v16 componentsSeparatedByString:@"port="];
    if ([v58 count] >= 2)
    {
      v59 = [v58 objectAtIndex:1];
      v60 = [v59 componentsSeparatedByString:{@", "}];

      v61 = [v60 objectAtIndex:0];
      *(v83 + 132) = [v61 integerValue];

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v62 = gLogObj;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        v63 = *(v83 + 132);
        *buf = 136446466;
        *&buf[4] = "nw_masque_connection_pair_handle_multipath_header";
        *&buf[12] = 1024;
        *&buf[14] = v63;
        _os_log_impl(&dword_181A37000, v62, OS_LOG_TYPE_DEBUG, "%{public}s port: %u", buf, 0x12u);
      }
    }
  }

LABEL_59:

  return 1;
}

void sub_18255C0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(*(a1 + 32) + 16) + 88));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_2(uint64_t a1)
{
  (*(*(*(*(a1 + 80) + 8) + 40) + 16))();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL48nw_masque_connection_pair_setup_outer_connectionP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU29objcproto18OS_nw_http_requestS1__block_invoke_3;
  v3[3] = &unk_1E6A30870;
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v7 = *(a1 + 96);
  v6 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void nw_masque_connection_pair_setup_outer_connection_inner(void *a1, void *a2, int a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v45 = 0;
    if (!__nwlog_fault(v27, &type, &v45))
    {
      goto LABEL_69;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v28 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v29, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v45 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v28 = __nwlog_obj();
      v33 = type;
      v34 = os_log_type_enabled(v28, type);
      if (backtrace_string)
      {
        if (v34)
        {
          *buf = 136446466;
          v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
          v49 = 2082;
          v50 = backtrace_string;
          _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_69:
        if (!v27)
        {
          goto LABEL_35;
        }

LABEL_70:
        free(v27);
        goto LABEL_35;
      }

      if (v34)
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v33, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v28 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v28, type))
      {
        *buf = 136446210;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        _os_log_impl(&dword_181A37000, v28, v38, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (v8)
  {
    v11 = *(v7 + 2);
    if (*(v11 + 112) != 255)
    {
      *(v7 + 219) = a3 != 6;
      v12 = a3 != 6 && a3 != 17;
      v13 = *(v11 + 80);
      if (v13)
      {
        nw_parameters_require_interface(v9, v13);
      }

      nw_parameters_set_proxy_applied(v10);
      if (*(v7 + 268) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_wifi);
      }

      if (*(v7 + 270) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_wired);
      }

      if (*(v7 + 269) == 1)
      {
        nw_parameters_prohibit_interface_type(v10, nw_interface_type_cellular);
      }

      if (*(v7 + 267) == 1)
      {
        nw_parameters_set_prohibit_expensive(v10, 1);
      }

      if (*(v7 + 266) == 1)
      {
        nw_parameters_set_prohibit_constrained(v10, 1);
      }

      v14 = *(v7 + 64);
      if (v14)
      {
        nw_parameters_set_required_interface_type(v10, v14);
      }

      if (v7[140])
      {
        host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v7[140]);
        nw_parameters_set_local_endpoint(v10, host_with_numeric_port);
        nw_parameters_set_reuse_local_address(v10, 1);
      }

      nw_parameters_set_traffic_class(v10, *(v7 + 63));
      nw_connection_reset_traffic_class(*(*(v7 + 2) + 48), *(v7 + 63));
      v16 = *(v7 + 34);
      if (v16)
      {
        nw_parameters_set_source_application_by_bundle_id_internal(v10, [v16 UTF8String]);
      }

      v17 = *(v7 + 65);
      if (v17)
      {
        nw_parameters_set_multipath_service(v10, v17);
      }

      v18 = v7[132];
      if (v18)
      {
        v19 = v8;
        _nw_endpoint_set_alternate_port(v19, v18);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(v7 + 2);
        *buf = 136446978;
        v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
        v49 = 2114;
        v50 = v21;
        v51 = 2112;
        v52 = v8;
        v53 = 2112;
        v54 = v10;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_INFO, "%{public}s %{public}@ creating new outer connection to %@ with parameters %@", buf, 0x2Au);
      }

      v22 = nw_connection_create(v8, v10);
      v23 = *(v7 + 6);
      *(v7 + 6) = v22;

      nw_connection_set_queue(*(v7 + 6), *(*(v7 + 2) + 32));
      v24 = *(v7 + 6);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke;
      handler[3] = &unk_1E6A308C0;
      v25 = v7;
      v41 = v25;
      v43 = a3;
      v42 = v8;
      v44 = v12;
      nw_connection_set_state_changed_handler(v24, handler);
      if (*(v7 + 219) == 1)
      {
        nw_masque_connection_pair_read_outer_datagrams(v25);
      }

      else
      {
        nw_masque_connection_pair_read_outer(v25);
      }

      nw_connection_start(*(v7 + 6));
      nw_masque_connection_pair_read_inner(v25);
    }

    goto LABEL_35;
  }

  v30 = __nwlog_obj();
  *buf = 136446210;
  v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
  v27 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v45 = 0;
  if (!__nwlog_fault(v27, &type, &v45))
  {
    goto LABEL_69;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v28 = __nwlog_obj();
    v31 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v31, "%{public}s called with null endpoint", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (v45 != 1)
  {
    v28 = __nwlog_obj();
    v39 = type;
    if (os_log_type_enabled(v28, type))
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v39, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_68;
  }

  v35 = __nw_create_backtrace_string();
  v28 = __nwlog_obj();
  v36 = type;
  v37 = os_log_type_enabled(v28, type);
  if (!v35)
  {
    if (v37)
    {
      *buf = 136446210;
      v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
      _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
    }

    goto LABEL_68;
  }

  if (v37)
  {
    *buf = 136446466;
    v48 = "nw_masque_connection_pair_setup_outer_connection_inner";
    v49 = 2082;
    v50 = v35;
    _os_log_impl(&dword_181A37000, v28, v36, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v35);
  if (v27)
  {
    goto LABEL_70;
  }

LABEL_35:
}

void ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v7 = "unknown";
    }

    else
    {
      v7 = off_1E6A2F020[a2];
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    v10 = *(v8 + 16);
    *buf = 136446978;
    *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v119 = v9;
    *v120 = 2080;
    *&v120[2] = v7;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}@ outer connection to %@ has transitioned to %s", buf, 0x2Au);
  }

  v11 = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v11 processName];
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    v13 = *(a1 + 32);
    if (*(v13 + 217))
    {
      if (*(v13 + 218))
      {
LABEL_64:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v119 = __Block_byref_object_copy__271;
        *v120 = __Block_byref_object_dispose__272;
        *&v120[8] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_299;
        aBlock[3] = &unk_1E6A3D738;
        v114 = buf;
        v113 = v13;
        v73 = _Block_copy(aBlock);
        os_unfair_lock_lock((v13 + 8));
        v73[2](v73);
        os_unfair_lock_unlock((v13 + 8));

        v74 = *(*&buf[8] + 40);
        if (v74)
        {
          (*(v74 + 16))(v74, a2, v5);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_67;
      }

      *(v13 + 218) = 1;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      well_known = gLogObj;
      if (os_log_type_enabled(well_known, OS_LOG_TYPE_INFO))
      {
        v15 = "IP";
        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        if (v16 == 6)
        {
          v15 = "TCP";
        }

        v19 = *(v17 + 16);
        if (v16 == 17)
        {
          v15 = "UDP";
        }

        v20 = *(v17 + 224);
        *buf = 136447234;
        *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke_2";
        *&buf[12] = 2114;
        *&buf[14] = v19;
        *&buf[22] = 2080;
        v119 = v15;
        *v120 = 2112;
        *&v120[2] = v18;
        *&v120[10] = 2112;
        *&v120[12] = v20;
        _os_log_impl(&dword_181A37000, well_known, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Closed %s connection to %@ (for %@)\n", buf, 0x34u);
      }

LABEL_63:

      v13 = *(a1 + 32);
      goto LABEL_64;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v34 = gLogObj;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = "IP";
      v36 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = *(a1 + 40);
      if (v36 == 6)
      {
        v35 = "TCP";
      }

      v39 = *(v37 + 16);
      v40 = *(v37 + 224);
      if (v36 == 17)
      {
        v35 = "UDP";
      }

      *buf = 136447490;
      *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke";
      *&buf[12] = 2114;
      *&buf[14] = v39;
      *&buf[22] = 2080;
      v119 = v35;
      *v120 = 2112;
      *&v120[2] = v38;
      *&v120[10] = 2112;
      *&v120[12] = v5;
      v121 = 2112;
      v122 = v40;
      _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Failed %s connection to %@ with error %@ (for %@)\n", buf, 0x3Eu);
    }

    *(*(a1 + 32) + 217) = 1;
    if (v5)
    {
      v41 = v5;
      v42 = v41[2] == 2;

      if (v42)
      {
        v43 = v41;
        v44 = v43[3] == -65554;

        if (v44)
        {
          well_known = _nw_http_response_create_well_known(502);
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=dns_error"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
LABEL_61:

            goto LABEL_62;
          }

          goto LABEL_62;
        }
      }

      v61 = v41;
      v62 = v41[2] == 1;

      if (v62)
      {
        v63 = v61;
        v64 = v63[3] == 61;

        if (v64)
        {
          well_known = _nw_http_response_create_well_known(502);
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=connection_refused"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
            goto LABEL_61;
          }

LABEL_62:
          metadata_for_response = nw_http_create_metadata_for_response(well_known);
          v70 = nw_content_context_create("response");
          nw_content_context_set_metadata_for_protocol(v70, metadata_for_response);
          v71 = *(a1 + 32);
          v72 = *(v71[2] + 48);
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_297;
          completion[3] = &unk_1E6A33F88;
          v116 = v71;
          nw_connection_send(v72, 0, v70, 1, completion);

          goto LABEL_63;
        }
      }

      v65 = v61;
      v66 = v41[2] == 1;

      if (v66)
      {
        v67 = v65;
        v68 = v67[3] == 60;

        if (v68)
        {
          well_known = _nw_http_response_create_well_known(502);
          if ((*(*(a1 + 32) + 220) & 1) == 0)
          {
            v45 = [v12 mutableCopy];
            [v45 appendString:@"; error=connection_timeout"];
            nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
            goto LABEL_61;
          }

          goto LABEL_62;
        }
      }
    }

    well_known = _nw_http_response_create_well_known(502);
    if ((*(*(a1 + 32) + 220) & 1) == 0)
    {
      v45 = [v12 mutableCopy];
      [v45 appendString:@"; error=destination_unavailable"];
      nw_http_fields_append(well_known, "Proxy-Status", [v45 UTF8String]);
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  if (a2 != 1)
  {
    if (a2 != 3 || (*(*(a1 + 32) + 217) & 1) != 0)
    {
      goto LABEL_67;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = "IP";
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      if (v23 == 6)
      {
        v22 = "TCP";
      }

      v26 = *(v24 + 16);
      if (v23 == 17)
      {
        v22 = "UDP";
      }

      v27 = *(v24 + 224);
      *buf = 136447234;
      *&buf[4] = "nw_masque_connection_pair_setup_outer_connection_inner_block_invoke_2";
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2080;
      v119 = v22;
      *v120 = 2112;
      *&v120[2] = v25;
      *&v120[10] = 2112;
      *&v120[12] = v27;
      _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}@ Opened %s connection to %@ (for %@)\n", buf, 0x34u);
    }

    *(*(a1 + 32) + 217) = 1;
    v28 = *(a1 + 32);
    if (*(v28 + 240))
    {
      if (*(v28 + 248) == 1)
      {
        v29 = dispatch_data_create("hello", 5uLL, 0, 0);
        v30 = _nw_http_response_create_well_known(200);
        nw_http_fields_append(v30, "Capsule-Protocol", "?1");
        if (*(a1 + 48) == 17)
        {
          v31 = *(a1 + 32);
          if (*(v31 + 178))
          {
            nw_http_fields_append(v30, "Datagram-Flow-Id", v31 + 178);
            v31 = *(a1 + 32);
          }

          v33 = *(v31 + 116);
          v32 = v31 + 116;
          if (v33)
          {
            nw_http_fields_append(v30, "Client-Connection-Id", v32);
          }

          nw_http_fields_append(v30, "Proxy-QUIC-Forwarding", "?1");
        }

LABEL_84:
        protocol_metadata = nw_http_create_metadata_for_response(v30);
        v85 = nw_content_context_create("response");
        nw_content_context_set_metadata_for_protocol(v85, protocol_metadata);
        nw_connection_send(*(*(*(a1 + 32) + 16) + 48), v29, v85, *(*(a1 + 32) + 219), &__block_literal_global_24512);
        objc_storeStrong((*(a1 + 32) + 56), v85);
        v86 = *(a1 + 32);
        if (*(v86 + 240) && (*(v86 + 248) & 1) == 0)
        {
          v87 = *(*(v86 + 16) + 48);
          if (nw_protocol_copy_http_connection_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
          }

          v88 = nw_protocol_copy_http_connection_definition_definition;
          v89 = nw_connection_copy_protocol_metadata(v87, v88);

          nw_http_connection_metadata_send_certificate(v89, *(*(a1 + 32) + 240));
        }

        if (*(a1 + 49) != 1)
        {
          goto LABEL_114;
        }

        v106 = nw_connection_copy_connected_local_endpoint(*(*(a1 + 32) + 48));
        v105 = nw_connection_copy_connected_remote_endpoint(*(*(a1 + 32) + 48));
        memset(buf, 0, sizeof(buf));
        LODWORD(v119) = 0;
        if (nw_endpoint_fillout_v4v6_address(v106, buf))
        {
          if (buf[1] == 30)
          {
            v90 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v123[0] = 0;
            [v90 appendBytes:v123 length:1];
            v117 = 6;
            [v90 appendBytes:&v117 length:1];
            [v90 appendBytes:&buf[8] length:16];
            v109 = 0x80;
            [v90 appendBytes:&v109 length:1];
            if (v90)
            {
              goto LABEL_94;
            }

            goto LABEL_97;
          }

          if (buf[1] == 2)
          {
            v90 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v123[0] = 0;
            [v90 appendBytes:v123 length:1];
            v117 = 4;
            [v90 appendBytes:&v117 length:1];
            [v90 appendBytes:&buf[4] length:4];
            v109 = 32;
            [v90 appendBytes:&v109 length:1];
            if (v90)
            {
LABEL_94:
              v107 = [v90 _createDispatchData];
LABEL_98:

LABEL_99:
              memset(v123, 0, sizeof(v123));
              LODWORD(v124) = 0;
              if (nw_endpoint_fillout_v4v6_address(v105, v123))
              {
                if (v123[1] == 30)
                {
                  v91 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  v117 = 6;
                  [v91 appendBytes:&v117 length:1];
                  [v91 appendBytes:&v123[8] length:16];
                  [v91 appendBytes:&v123[8] length:16];
                  v109 = *(a1 + 48);
                  [v91 appendBytes:&v109 length:1];
                  if (v91)
                  {
LABEL_106:
                    v92 = [v91 _createDispatchData];
LABEL_108:

                    goto LABEL_109;
                  }

LABEL_107:
                  v92 = 0;
                  goto LABEL_108;
                }

                if (v123[1] == 2)
                {
                  v91 = objc_alloc_init(MEMORY[0x1E695DF88]);
                  v117 = 4;
                  [v91 appendBytes:&v117 length:1];
                  [v91 appendBytes:&v123[4] length:4];
                  [v91 appendBytes:&v123[4] length:4];
                  v109 = *(a1 + 48);
                  [v91 appendBytes:&v109 length:1];
                  if (v91)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_107;
                }
              }

              v92 = 0;
LABEL_109:
              if (v107)
              {
                v93 = nw_content_context_create("assign address");
                metadata_for_capsule = nw_http_create_metadata_for_capsule(1, v107);
                nw_content_context_set_metadata_for_protocol(v93, metadata_for_capsule);
                nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v93, 1, &__block_literal_global_24512);
              }

              if (v92)
              {
                v95 = nw_content_context_create("advertise route");
                v96 = nw_http_create_metadata_for_capsule(3, v92);
                nw_content_context_set_metadata_for_protocol(v95, v96);
                nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v95, 1, &__block_literal_global_24512);
              }

LABEL_114:
LABEL_67:
              nw_masque_connection_pair_cancel_waiting_timer(*(a1 + 32));
              goto LABEL_68;
            }

LABEL_97:
            v107 = 0;
            goto LABEL_98;
          }
        }

        v107 = 0;
        goto LABEL_99;
      }

      v84 = _nw_http_response_create_well_known(405);
      nw_http_fields_append(v84, "Capsule-Protocol", "?1");
      v80 = [v12 mutableCopy];
      [v80 appendString:@"; error=resource_uses_reverse_proxy"];
      nw_http_fields_append(v84, "Proxy-Status", [v80 UTF8String]);
      v30 = v84;
    }

    else
    {
      v75 = _nw_http_response_create_well_known(200);
      v30 = v75;
      if (*(a1 + 48) != 6)
      {
        nw_http_fields_append(v75, "Capsule-Protocol", "?1");
        if (*(a1 + 48) == 17)
        {
          v76 = *(a1 + 32);
          if (*(v76 + 178))
          {
            nw_http_fields_append(v30, "Datagram-Flow-Id", v76 + 178);
            v76 = *(a1 + 32);
          }

          v78 = *(v76 + 116);
          v77 = v76 + 116;
          if (v78)
          {
            nw_http_fields_append(v30, "Client-Connection-Id", v77);
          }

          nw_http_fields_append(v30, "Proxy-QUIC-Forwarding", "?1");
        }
      }

      v79 = *(a1 + 32);
      if (*(v79 + 220))
      {
        goto LABEL_83;
      }

      v80 = nw_connection_copy_connected_remote_endpoint(*(v79 + 48));
      if (v80)
      {
        v81 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v12];
        [v81 appendFormat:@"; next-hop=%@", v80];
        v82 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:&stru_1EEFDE910];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_312;
        v110[3] = &unk_1E6A3A500;
        v83 = v82;
        v111 = v83;
        nw_endpoint_enumerate_cnames(v80, v110);
        if ([v83 length])
        {
          [v81 appendFormat:@"; next-hop-aliases=%@", v83];
        }

        nw_http_fields_append(v30, "Proxy-Status", [v81 UTF8String]);
      }
    }

LABEL_83:
    v29 = 0;
    goto LABEL_84;
  }

  v46 = *(a1 + 32);
  if (!v46)
  {
    v97 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
    v98 = _os_log_send_and_compose_impl();

    v123[0] = 16;
    v117 = 0;
    if (__nwlog_fault(v98, v123, &v117))
    {
      if (v123[0] == 17)
      {
        v99 = __nwlog_obj();
        v100 = v123[0];
        if (os_log_type_enabled(v99, v123[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v100, "%{public}s called with null pair", buf, 0xCu);
        }
      }

      else if (v117 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v99 = __nwlog_obj();
        v102 = v123[0];
        v103 = os_log_type_enabled(v99, v123[0]);
        if (backtrace_string)
        {
          if (v103)
          {
            *buf = 136446466;
            *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_131;
        }

        if (v103)
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v102, "%{public}s called with null pair, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v99 = __nwlog_obj();
        v104 = v123[0];
        if (os_log_type_enabled(v99, v123[0]))
        {
          *buf = 136446210;
          *&buf[4] = "nw_masque_connection_pair_start_waiting_timer";
          _os_log_impl(&dword_181A37000, v99, v104, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_131:
    if (v98)
    {
      free(v98);
    }

    v46 = 0;
    goto LABEL_50;
  }

  if ((v46[218] & 1) == 0 && *(v46 + 6) && !*(v46 + 36))
  {
    v47 = v46;
    v48 = v46 + 16;
    v49 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(v46 + 2) + 32));
    v50 = *(v48 + 34);
    *(v48 + 34) = v49;

    v51 = *v48;
    v52 = v47[6];
    v53 = *(v48 + 34);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL45nw_masque_connection_pair_start_waiting_timerP36NWConcrete_nw_masque_connection_pair_block_invoke;
    v119 = &unk_1E6A3D760;
    v54 = v51;
    *v120 = v54;
    v55 = v52;
    *&v120[8] = v55;
    dispatch_source_set_event_handler(v53, buf);
    v56 = *(v48 + 34);
    v57 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v56, v57, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
    dispatch_resume(*(v48 + 34));
    v58 = __nwlog_obj();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      v59 = v47[2];
      v60 = v47[6];
      *v123 = 136446722;
      *&v123[4] = "nw_masque_connection_pair_start_waiting_timer";
      *&v123[12] = 2114;
      *&v123[14] = v59;
      *&v123[22] = 2112;
      v124 = v60;
      _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_INFO, "%{public}s %{public}@ starting wait timer for %@", v123, 0x20u);
    }

    v46 = v47;
  }

LABEL_50:

LABEL_68:
}

void nw_masque_connection_pair_read_outer_datagrams(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_outer_datagrams";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!*(*(v1 + 2) + 48))
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer_datagrams";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v3 = *(v1 + 6);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer_datagrams";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer_datagrams";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer_datagrams";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A30938;
  v24 = v1;
  nw_connection_read_multiple(v3, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void nw_masque_connection_pair_read_outer(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_outer";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  if (!*(*(v1 + 2) + 48))
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v3 = *(v1 + 6);
  if (!v3)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_outer";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_outer";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_outer";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void nw_masque_connection_pair_read_inner(NWConcrete_nw_masque_connection_pair *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v4 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v28 = "nw_masque_connection_pair_read_inner";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_55:
        if (!v5)
        {
          goto LABEL_5;
        }

LABEL_56:
        free(v5);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v13, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v20, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_54:

    goto LABEL_55;
  }

  v3 = *(*(v1 + 2) + 48);
  if (!v3)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null pair->mcp_parent->mc_in_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v21, "%{public}s called with null pair->mcp_parent->mc_in_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v16 = type;
    v17 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v17)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v17)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v16, "%{public}s called with null pair->mcp_parent->mc_in_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_35;
  }

  if (!*(v1 + 6))
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v28 = "nw_masque_connection_pair_read_inner";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v5, &type, &v25))
    {
      goto LABEL_55;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null pair->mcp_outer_connection", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v25 != 1)
    {
      v6 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v22, "%{public}s called with null pair->mcp_outer_connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_54;
    }

    v15 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v18 = type;
    v19 = os_log_type_enabled(v6, type);
    if (!v15)
    {
      if (v19)
      {
        *buf = 136446210;
        v28 = "nw_masque_connection_pair_read_inner";
        _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_54;
    }

    if (v19)
    {
      *buf = 136446466;
      v28 = "nw_masque_connection_pair_read_inner";
      v29 = 2082;
      v30 = v15;
      _os_log_impl(&dword_181A37000, v6, v18, "%{public}s called with null pair->mcp_outer_connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_35:

    free(v15);
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke;
  v23[3] = &unk_1E6A39638;
  v24 = v1;
  nw_connection_receive_internal(v3, 0, 1u, 0xFFFFFFFF, v23);

LABEL_5:
}

void ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, void *a2, void *a3, _BOOL4 a4, void *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = v9;
  v12 = v10;
  v72 = a5;
  context = v12;
  if (v11)
  {
    size = dispatch_data_get_size(v11);
    if (!v12 || size)
    {
      goto LABEL_20;
    }
  }

  else if (!v12)
  {
    goto LABEL_20;
  }

  if (nw_protocol_copy_http_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_definition_onceToken, &__block_literal_global_16_75909);
  }

  v14 = nw_protocol_copy_http_definition_http_definition;
  v15 = nw_content_context_copy_protocol_metadata(v12, v14);

  if (v15 && nw_http_metadata_is_capsule(v15))
  {
    capsule_type = nw_http_metadata_get_capsule_type(v15);
    v17 = nw_http_metadata_copy_capsule_data(v15);
    if (gLogDatapath == 1)
    {
      v57 = __nwlog_obj();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(*(a1 + 32) + 16);
        *buf = 136446978;
        *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v58;
        *&buf[22] = 2048;
        v86 = capsule_type;
        v87 = 2112;
        v88 = v17;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received capsule type %llx with data %@", buf, 0x2Au);
      }
    }

    if (capsule_type >> 1 == 8385024)
    {
      if (capsule_type == 16770049)
      {
        v18 = 16770051;
      }

      else
      {
        v18 = 16770050;
      }

      LOBYTE(__n) = 0;
      nw_dispatch_data_copyout_from_offset(v17, &__n, 1, 0);
      memset(__src, 0, 20);
      nw_dispatch_data_copyout_from_offset(v17, __src, __n, 1);
      v19 = objc_alloc(MEMORY[0x1E695DEF0]);
      v20 = [v19 initWithBytes:__src length:__n];
      v70 = v18;
      if (gLogDatapath == 1)
      {
        v59 = __nwlog_obj();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(*(a1 + 32) + 16);
          v61 = "target";
          if (capsule_type == 16770048)
          {
            v61 = "client";
          }

          *buf = 136446978;
          *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
          *&buf[12] = 2114;
          *&buf[14] = v60;
          *&buf[22] = 2082;
          v86 = v61;
          v87 = 2112;
          v88 = v20;
          _os_log_impl(&dword_181A37000, v59, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received %{public}s CID %@, acking", buf, 0x2Au);
        }
      }

      v21 = __n;
      v22 = *(a1 + 32);
      if (capsule_type == 16770048)
      {
        *(v22 + 72) = __n;
        memcpy((*(a1 + 32) + 74), __src, v21);
        BYTE2(v84) = 0;
        nw_dispatch_data_copyout_from_offset(v17, &v84 + 2, 1, v21 + 1);
        memset(buf, 0, 20);
        nw_dispatch_data_copyout_from_offset(v17, buf, BYTE2(v84), __n + 2);
        *(*(a1 + 32) + 94) = BYTE2(v84);
        memcpy((*(a1 + 32) + 96), buf, *(*(a1 + 32) + 94));
        if (v20)
        {
          v23 = [v20 _createDispatchData];
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        *(v22 + 136) = __n;
        memcpy((*(a1 + 32) + 138), __src, v21);
        if (gLogDatapath == 1)
        {
          v68 = __nwlog_obj();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v69 = *(*(a1 + 32) + 16);
            *buf = 136446466;
            *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
            *&buf[12] = 2114;
            *&buf[14] = v69;
            _os_log_impl(&dword_181A37000, v68, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Setting up forwarded mode connections", buf, 0x16u);
          }
        }

        if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
        {
          dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
        }

        if (nw_protocol_demux_copy_definition::definition)
        {
          v31 = os_retain(nw_protocol_demux_copy_definition::definition);
          options = nw_protocol_create_options(v31);
          if (v31)
          {
            os_release(v31);
          }
        }

        else
        {
          options = nw_protocol_create_options(0);
        }

        nw_demux_options_add_pattern(options, 1, *(*(a1 + 32) + 136), *(a1 + 32) + 138, 0);
        nw_masque_connection_pair_setup_inner_direct_connections(*(a1 + 32), options);
        v45 = objc_alloc_init(MEMORY[0x1E695DF88]);
        [v45 appendBytes:&__n length:1];
        [v45 appendBytes:__src length:__n];
        [v45 appendBytes:&__n length:1];
        [v45 appendBytes:__src length:__n];
        buf[0] = 0;
        [v45 appendBytes:buf length:1];
        if (v45)
        {
          v23 = [v45 _createDispatchData];
        }

        else
        {
          v23 = 0;
        }
      }

      if (v23)
      {
        v46 = nw_content_context_create("ack cid");
        metadata_for_capsule = nw_http_create_metadata_for_capsule(v70, v23);
        nw_content_context_set_metadata_for_protocol(v46, metadata_for_capsule);
        nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v46, 1, &__block_literal_global_24512);
      }
    }

    else if (capsule_type == 16770304)
    {
      if (nw_protocol_demux_copy_definition::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_demux_copy_definition::onceToken, &__block_literal_global_8_26041);
      }

      if (nw_protocol_demux_copy_definition::definition)
      {
        v30 = os_retain(nw_protocol_demux_copy_definition::definition);
        v71 = nw_protocol_create_options(v30);
        if (v30)
        {
          os_release(v30);
        }
      }

      else
      {
        v71 = nw_protocol_create_options(0);
      }

      if (!*(*(a1 + 32) + 192))
      {
        v33 = nw_demux_create_options();
        v34 = *(a1 + 32);
        v35 = *(v34 + 192);
        *(v34 + 192) = v33;
      }

      v36 = dispatch_data_get_size(v17);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v86 = 0;
      if (v36)
      {
        v37 = v36;
        for (i = 0; i < v37; i = *(*&buf[8] + 24))
        {
          v84 = 0;
          nw_dispatch_data_copyout_from_offset(v17, &v84 + 2, 2, i);
          v41 = *(*&buf[8] + 24) + 2;
          *(*&buf[8] + 24) = v41;
          nw_dispatch_data_copyout_from_offset(v17, &v84, 2, v41);
          *(*&buf[8] + 24) += 2;
          *__src = 0;
          *&__src[8] = __src;
          *&__src[16] = 0x2020000000;
          v92 = 0;
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_339;
          v83[3] = &unk_1E6A30988;
          v83[4] = buf;
          v83[5] = __src;
          dispatch_data_apply(v17, v83);
          v42 = *(*&buf[8] + 24) + HIWORD(v84);
          *(*&buf[8] + 24) = v42;
          v82 = 0;
          nw_dispatch_data_copyout_from_offset(v17, &v82, 1, v42);
          ++*(*&buf[8] + 24);
          __n = 0;
          p_n = &__n;
          v80 = 0x2020000000;
          v81 = 0;
          if (v82)
          {
            applier[0] = MEMORY[0x1E69E9820];
            applier[1] = 3221225472;
            applier[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_2;
            applier[3] = &unk_1E6A30988;
            applier[4] = buf;
            applier[5] = &__n;
            dispatch_data_apply(v17, applier);
            v39 = HIWORD(v84);
            *(*&buf[8] + 24) += HIWORD(v84);
            v40 = p_n[3];
          }

          else
          {
            v40 = 0;
            v39 = HIWORD(v84);
          }

          nw_demux_options_add_pattern(*(*(a1 + 32) + 192), v84, v39, *(*&__src[8] + 24), v40);
          nw_demux_options_add_pattern(v71, v84, HIWORD(v84), *(*&__src[8] + 24), p_n[3]);
          _Block_object_dispose(&__n, 8);
          _Block_object_dispose(__src, 8);
        }
      }

      if (gLogDatapath == 1)
      {
        v64 = __nwlog_obj();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = *(*(a1 + 32) + 16);
          *__src = 136446466;
          *&__src[4] = "nw_masque_connection_pair_read_inner_block_invoke_3";
          *&__src[12] = 2114;
          *&__src[14] = v65;
          _os_log_impl(&dword_181A37000, v64, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Setting up forwarded mode connections", __src, 0x16u);
        }
      }

      nw_masque_connection_pair_setup_inner_direct_connections(*(a1 + 32), v71);
      if (gLogDatapath == 1)
      {
        v66 = __nwlog_obj();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(*(a1 + 32) + 16);
          *__src = 136446466;
          *&__src[4] = "nw_masque_connection_pair_read_inner_block_invoke";
          *&__src[12] = 2114;
          *&__src[14] = v67;
          _os_log_impl(&dword_181A37000, v66, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received demux patterns, acking", __src, 0x16u);
        }
      }

      v43 = nw_content_context_create("ack pattern");
      v44 = nw_http_create_metadata_for_capsule(16770305, v17);
      nw_content_context_set_metadata_for_protocol(v43, v44);
      nw_connection_send(*(*(*(a1 + 32) + 16) + 48), 0, v43, 1, &__block_literal_global_24512);

      _Block_object_dispose(buf, 8);
    }

    nw_masque_connection_pair_read_inner(*(a1 + 32));

    goto LABEL_75;
  }

LABEL_20:
  if (*(*(a1 + 32) + 48))
  {
    if (!v72 || (v24 = v72, v25 = v24[3], v24, v25 == 40))
    {
      v26 = 0;
      if (!context || !a4)
      {
        goto LABEL_70;
      }

      v27 = context;
      if (v27 != &__block_literal_global_44658 && v27 != &__block_literal_global_10_44685)
      {
        if (v27 == &__block_literal_global_6_44667 || v27 == &__block_literal_global_8_44676)
        {
        }

        else
        {
          v28 = BYTE6(v27[14].isa);

          if ((v28 & 1) == 0)
          {
LABEL_30:
            v26 = 0;
LABEL_70:
            if (gLogDatapath == 1)
            {
              v52 = __nwlog_obj();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = v11;
                v54 = *(*(a1 + 32) + 16);
                v55 = v53;
                if (v53)
                {
                  v56 = dispatch_data_get_size(v53);
                }

                else
                {
                  v56 = 0;
                }

                v62 = "";
                *buf = 136447234;
                v63 = ", complete";
                *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
                if (!a4)
                {
                  v63 = "";
                }

                *&buf[12] = 2114;
                *&buf[14] = v54;
                *&buf[22] = 2048;
                v86 = v56;
                v87 = 2080;
                if (v26)
                {
                  v62 = ", final";
                }

                v88 = v63;
                v89 = 2080;
                v90 = v62;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes to target%s%s", buf, 0x34u);
                v11 = v55;
              }
            }

            dispatch_group_enter(*(*(a1 + 32) + 232));
            v48 = *(a1 + 32);
            v49 = v48[6];
            v50 = v26 & 1;
            if (v50)
            {
              v51 = &__block_literal_global_6_44667;
            }

            else
            {
              v51 = &__block_literal_global_44658;
            }

            completion[0] = MEMORY[0x1E69E9820];
            completion[1] = 3221225472;
            completion[2] = ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_342;
            completion[3] = &unk_1E6A39610;
            v75 = v48;
            v76 = v50;
            nw_connection_send(v49, v11, v51, a4, completion);
            v15 = v75;
            goto LABEL_75;
          }
        }

        v26 = *(*(a1 + 32) + 219) ^ 1;
        goto LABEL_70;
      }

      goto LABEL_30;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v29 = *(*(a1 + 32) + 16);
    *buf = 136446722;
    *&buf[4] = "nw_masque_connection_pair_read_inner_block_invoke";
    *&buf[12] = 2114;
    *&buf[14] = v29;
    *&buf[22] = 2112;
    v86 = v72;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
  }

LABEL_75:
}

BOOL ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_339(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

BOOL ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  if (a5 + a3 >= v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4 + v5 - a3;
  }

  return a5 + a3 < v5;
}

void ___ZL36nw_masque_connection_pair_read_innerP36NWConcrete_nw_masque_connection_pair_block_invoke_342(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_inner_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to outer connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  if ((*(a1 + 40) & 1) == 0)
  {
    nw_masque_connection_pair_read_inner(*(a1 + 32));
  }
}

void ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, void *a2, void *a3, _BOOL4 a4, void *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  v13 = *(a1 + 32);
  if (*(v13[2] + 48))
  {
    if (v13[6])
    {
      if (v13[7])
      {
        if (!v11 || (v14 = v11, v15 = v14[3], v14, v15 == 40))
        {
          if (v10 && a4)
          {
            v16 = v10;
            if (v16 != &__block_literal_global_44658 && v16 != &__block_literal_global_10_44685)
            {
              if (v16 == &__block_literal_global_6_44667 || v16 == &__block_literal_global_8_44676)
              {

                v18 = *(a1 + 32);
              }

              else
              {
                v17 = v16[118];

                v18 = *(a1 + 32);
                if ((v17 & 1) == 0)
                {
                  v19 = 0;
                  if (!*(v18 + 32))
                  {
                    goto LABEL_25;
                  }

                  v22 = *(v18 + 72);
                  if (!v22)
                  {
                    goto LABEL_25;
                  }

LABEL_20:
                  if (gLogDatapath == 1)
                  {
                    v38 = __nwlog_obj();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      v39 = *(*(a1 + 32) + 16);
                      *buf = 136446722;
                      v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                      v51 = 2114;
                      v52 = v39;
                      v53 = 2112;
                      v54 = v9;
                      _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", buf, 0x20u);
                    }

                    v22 = *(*(a1 + 32) + 72);
                  }

                  __s1[0] = 0;
                  __s1[1] = 0;
                  v62 = 0;
                  v23 = nw_dispatch_data_copyout_from_offset(v9, __s1, v22, 1);
                  v24 = *(a1 + 32);
                  if (v23 == v24[36] && (v25 = v23, !memcmp(__s1, v24 + 37, v23)))
                  {
                    if (v25 == v24[47])
                    {
                      size = dispatch_data_get_size(v9);
                      v48 = 0;
                      alloc = dispatch_data_create_alloc();
                      nw_dispatch_data_copyout(v9, 0, size);
                      memcpy(1, (*(a1 + 32) + 96), v25);
                      v34 = alloc;

                      if (gLogDatapath == 1)
                      {
                        v43 = __nwlog_obj();
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                        {
                          v44 = *(*(a1 + 32) + 16);
                          *buf = 136446466;
                          v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                          v51 = 2114;
                          v52 = v44;
                          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Replaced with Virtual Client CID before proxying", buf, 0x16u);
                        }
                      }

                      v26 = 1;
                      v9 = v34;
                    }

                    else
                    {
                      v26 = 1;
                    }
                  }

                  else
                  {
LABEL_25:
                    v26 = 0;
                  }

                  if (gLogDatapath == 1)
                  {
                    v35 = __nwlog_obj();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                    {
                      v36 = *(*(a1 + 32) + 16);
                      if (v9)
                      {
                        v37 = dispatch_data_get_size(v9);
                      }

                      else
                      {
                        v37 = 0;
                      }

                      v40 = "";
                      *buf = 136447490;
                      v41 = " directly";
                      v50 = "nw_masque_connection_pair_read_outer_block_invoke";
                      if (!v26)
                      {
                        v41 = "";
                      }

                      v51 = 2114;
                      v52 = v36;
                      v42 = ", complete";
                      if (!a4)
                      {
                        v42 = "";
                      }

                      v53 = 2048;
                      v54 = v37;
                      v55 = 2080;
                      v56 = v41;
                      v57 = 2080;
                      if (v19)
                      {
                        v40 = ", final";
                      }

                      v58 = v42;
                      v59 = 2080;
                      v60 = v40;
                      _os_log_impl(&dword_181A37000, v35, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes%s to client%s%s", buf, 0x3Eu);
                    }
                  }

                  dispatch_group_enter(*(*(a1 + 32) + 232));
                  v27 = *(a1 + 32);
                  if (v26)
                  {
                    v28 = (v27 + 32);
                  }

                  else
                  {
                    v28 = (*(v27 + 16) + 48);
                  }

                  v29 = *v28;
                  if (*(v27 + 219))
                  {
                    v30 = &_nw_content_context_default_message;
                  }

                  else
                  {
                    v30 = (v27 + 56);
                  }

                  v31 = *v30;
                  completion[0] = MEMORY[0x1E69E9820];
                  completion[1] = 3221225472;
                  completion[2] = ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke_334;
                  completion[3] = &unk_1E6A39610;
                  v46 = v27;
                  v47 = v19 & 1;
                  nw_connection_send(v29, v9, v31, a4, completion);
                  v20 = v46;
                  goto LABEL_34;
                }
              }

              v19 = *(v18 + 219) ^ 1;
              goto LABEL_20;
            }
          }

          v19 = 0;
          v18 = *(a1 + 32);
          goto LABEL_20;
        }
      }
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = *(*(a1 + 32) + 16);
    *buf = 136446722;
    v50 = "nw_masque_connection_pair_read_outer_block_invoke";
    v51 = 2114;
    v52 = v21;
    v53 = 2112;
    v54 = v12;
    _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %@", buf, 0x20u);
  }

LABEL_34:
}

void ___ZL36nw_masque_connection_pair_read_outerP36NWConcrete_nw_masque_connection_pair_block_invoke_334(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_outer_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
  if ((*(a1 + 40) & 1) == 0)
  {
    nw_masque_connection_pair_read_outer(*(a1 + 32));
  }
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6[6];
  if (v7 && (a4 == 40 || !a4))
  {
    if (gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(*(a1 + 32) + 16);
        *buf = 136446722;
        v21 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
        v22 = 2114;
        v23 = v15;
        v24 = 1024;
        v25 = a3;
        _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying batch of %u packets to client", buf, 0x1Cu);
      }

      v6 = *(a1 + 32);
      v7 = v6[6];
    }

    batch_block[0] = MEMORY[0x1E69E9820];
    batch_block[1] = 3221225472;
    batch_block[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_325;
    batch_block[3] = &unk_1E6A30910;
    v19 = a3;
    v18 = a2;
    v17 = v6;
    nw_connection_batch(v7, batch_block);
    nw_masque_connection_pair_read_outer_datagrams(*(a1 + 32));
    v10 = v17;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 16);
      v13 = *(v11 + 48);
      *buf = 136446978;
      v21 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
      v22 = 2114;
      v23 = v12;
      v24 = 1024;
      v25 = a4;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ Stopping reading, error %d, outer %@", buf, 0x26u);
    }
  }
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_325(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    for (i = 0; i < *(a1 + 48); ++i)
    {
      v3 = *(*(a1 + 40) + 8 * i);
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v4 = *(a1 + 32);
      if (*(v4 + 32))
      {
        if (gLogDatapath == 1)
        {
          v11 = __nwlog_obj();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = *(*(a1 + 32) + 16);
            *applier = 136446722;
            *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
            *&applier[12] = 2114;
            *&applier[14] = v12;
            *&applier[22] = 2112;
            v38 = v3;
            _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Received content %@", applier, 0x20u);
          }

          v4 = *(a1 + 32);
          v5 = *(v4 + 72);
          if (!*(v4 + 72))
          {
LABEL_19:
            if (*(v4 + 192))
            {
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_326;
              v25[3] = &unk_1E6A308E8;
              v26 = v4;
              v27 = &v29;
              dispatch_data_apply(v3, v25);
            }

            goto LABEL_21;
          }
        }

        else
        {
          v5 = *(v4 + 72);
          if (!*(v4 + 72))
          {
            goto LABEL_19;
          }
        }

        __s1[0] = 0;
        __s1[1] = 0;
        v36 = 0;
        v6 = nw_dispatch_data_copyout_from_offset(v3, __s1, v5, 1);
        v7 = *(a1 + 32);
        if (v6 == *(v7 + 72))
        {
          v8 = v6;
          if (!memcmp(__s1, (v7 + 74), v6))
          {
            *(v30 + 24) = 1;
            if (v8 == *(*(a1 + 32) + 94))
            {
              size = dispatch_data_get_size(v3);
              v28 = 0;
              alloc = dispatch_data_create_alloc();
              v34[0] = 0;
              v34[1] = v34;
              v34[2] = 0x2000000000;
              v34[3] = 0;
              v33[0] = 0;
              v33[1] = v33;
              v33[2] = 0x2000000000;
              v33[3] = v28;
              if (v3)
              {
                *applier = MEMORY[0x1E69E9820];
                *&applier[8] = 0x40000000;
                *&applier[16] = __nw_dispatch_data_copyout_block_invoke;
                v38 = &unk_1E6A34348;
                *(&v39 + 1) = v33;
                v40 = size;
                *&v39 = v34;
                dispatch_data_apply(v3, applier);
              }

              _Block_object_dispose(v33, 8);
              _Block_object_dispose(v34, 8);
              memcpy((v28 + 1), (*(a1 + 32) + 96), v8);
              v10 = alloc;

              if (gLogDatapath == 1)
              {
                v20 = __nwlog_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v21 = *(*(a1 + 32) + 16);
                  *applier = 136446466;
                  *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
                  *&applier[12] = 2114;
                  *&applier[14] = v21;
                  _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Replaced with Virtual Client CID before proxying", applier, 0x16u);
                }
              }

              v3 = v10;
            }
          }
        }
      }

LABEL_21:
      if (gLogDatapath == 1)
      {
        v16 = __nwlog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(*(a1 + 32) + 16);
          if (v3)
          {
            v18 = dispatch_data_get_size(v3);
          }

          else
          {
            v18 = 0;
          }

          v19 = "";
          if (*(v30 + 24))
          {
            v19 = " directly";
          }

          *applier = 136446978;
          *&applier[4] = "nw_masque_connection_pair_read_outer_datagrams_block_invoke_2";
          *&applier[12] = 2114;
          *&applier[14] = v17;
          *&applier[22] = 2048;
          v38 = v18;
          LOWORD(v39) = 2080;
          *(&v39 + 2) = v19;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %{public}@ Proxying %zu bytes%s to client", applier, 0x2Au);
        }
      }

      dispatch_group_enter(*(*(a1 + 32) + 232));
      v13 = *(a1 + 32);
      if (*(v30 + 24) == 1)
      {
        v14 = v13 + 4;
      }

      else
      {
        v14 = &v13[2][6];
      }

      v15 = *v14;
      completion[0] = MEMORY[0x1E69E9820];
      completion[1] = 3221225472;
      completion[2] = ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_329;
      completion[3] = &unk_1E6A33F88;
      v24 = v13;
      nw_connection_send(v15, v3, &__block_literal_global_44658, 1, completion);

      _Block_object_dispose(&v29, 8);
    }
  }
}

void sub_1825614C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_326(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  matched = nw_masque_connection_pair_match_demux_pattern(a4, a5, *(*(a1 + 32) + 192));
  if (matched)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return matched ^ 1u;
}

void ___ZL46nw_masque_connection_pair_read_outer_datagramsP36NWConcrete_nw_masque_connection_pair_block_invoke_329(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(*(a1 + 32) + 16);
      v6 = 136446722;
      v7 = "nw_masque_connection_pair_read_outer_datagrams_block_invoke";
      v8 = 2114;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, "%{public}s %{public}@ received error sending to inner connection %@", &v6, 0x20u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 232));
}

void ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_299(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 64));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t ___ZL54nw_masque_connection_pair_setup_outer_connection_innerP36NWConcrete_nw_masque_connection_pairPU25objcproto14OS_nw_endpoint8NSObjecthPU27objcproto16OS_nw_parametersS1__block_invoke_312(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 length];
  v5 = ",";
  if (!v4)
  {
    v5 = "";
  }

  [v3 appendFormat:@"%s%s", v5, a2];
  return 1;
}

void ___ZL45nw_masque_connection_pair_start_waiting_timerP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 136446722;
    v6 = "nw_masque_connection_pair_start_waiting_timer_block_invoke";
    v7 = 2114;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s %{public}@ wait timer fired for outer connection %@", &v5, 0x20u);
  }

  nw_connection_cancel(*(a1 + 40));
}

void ___ZL32nw_masque_connection_pair_createP31NWConcrete_nw_masque_connection_block_invoke_2(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFE) == 4)
  {
    nw_dictionary_set_value(*(*(a1 + 32) + 56), (*(a1 + 40) + 200), 0);
    v4 = *(a1 + 40);

    nw_masque_connection_pair_cancel(v4);
  }
}

void ___ZL51nw_masque_connection_pair_set_state_changed_handlerP36NWConcrete_nw_masque_connection_pairU13block_pointerFv21nw_connection_state_tPU22objcproto11OS_nw_error8NSObjectE_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;
}

void nw_masque_connection_pair_cancel(NWConcrete_nw_masque_connection_pair *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 29);
    v4 = *(*(v1 + 2) + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL32nw_masque_connection_pair_cancelP36NWConcrete_nw_masque_connection_pair_block_invoke;
    block[3] = &unk_1E6A3D868;
    v14 = v1;
    dispatch_group_notify(v3, v4, block);

    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_masque_connection_pair_cancel";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v6, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null pair", buf, 0xCu);
      }
    }

    else if (v15 == 1)
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
          v18 = "nw_masque_connection_pair_cancel";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null pair, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v18 = "nw_masque_connection_pair_cancel";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null pair, backtrace limit exceeded", buf, 0xCu);
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

void ___ZL32nw_masque_connection_pair_cancelP36NWConcrete_nw_masque_connection_pair_block_invoke(uint64_t a1)
{
  nw_masque_connection_pair_cancel_waiting_timer(*(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(v2[2] + 48);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(*(a1 + 32) + 16);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v6 = v2[3];
  if (v6)
  {
    nw_connection_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v9 = v2[4];
  if (v9)
  {
    nw_connection_cancel(v9);
    v10 = *(a1 + 32);
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v2 = *(a1 + 32);
  }

  v12 = v2[5];
  if (v12)
  {
    _nw_array_apply(v12, &__block_literal_global_270);
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;

    v2 = *(a1 + 32);
  }

  v15 = v2[6];
  if (v15)
  {
    nw_connection_cancel(v15);
    v16 = *(a1 + 32);
    v17 = *(v16 + 48);
    *(v16 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v18 = v2[24];
  v2[24] = 0;

  v19 = *(a1 + 32);
  v20 = *(v19 + 56);
  *(v19 + 56) = 0;

  v21 = *(a1 + 32);
  v22 = *(v21 + 64);
  *(v21 + 64) = 0;
}

void __nw_masque_connection_set_cancel_handler_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = &__block_literal_global_7_30598;
  if (v1)
  {
    v3 = nw_context_copy_globals_context(v1);

    nw_context_assert_queue(v3);
    if (!*(v3 + 18))
    {
      v4 = _Block_copy(&__block_literal_global_7_30598);
      v5 = *(v3 + 18);
      *(v3 + 18) = v4;

      goto LABEL_4;
    }

    v10 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_context_register_channel_flow_count_handler";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if ((__nwlog_fault(v11, &type, &v22) & 1) == 0)
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null !context->flow_count_increment_callback", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *buf = 136446466;
          v25 = "nw_context_register_channel_flow_count_handler";
          v26 = 2082;
          v27 = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null !context->flow_count_increment_callback, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v19)
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v18, "%{public}s called with null !context->flow_count_increment_callback, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null !context->flow_count_increment_callback, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:
    if (v11)
    {
      free(v11);
    }

    goto LABEL_4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_context_register_channel_flow_count_handler";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v7, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v22 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v8, type);
      if (v14)
      {
        if (v16)
        {
          *buf = 136446466;
          v25 = "nw_context_register_channel_flow_count_handler";
          v26 = 2082;
          v27 = v14;
          _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v14);
        goto LABEL_34;
      }

      if (v16)
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v15, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v25 = "nw_context_register_channel_flow_count_handler";
        _os_log_impl(&dword_181A37000, v8, v20, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_34:
  if (v7)
  {
    free(v7);
  }

LABEL_4:
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1E0)
  {
    if (nw_protocol_http3_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http3_identifier::http3_protocol_identifier, &__block_literal_global_11_30602);
    if (nw_protocol_http2_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http2_identifier::onceToken, &__block_literal_global_88988);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http2_identifier::http2_protocol_identifier, &__block_literal_global_14_30603);
    if (nw_protocol_http1_identifier::onceToken != -1)
    {
      dispatch_once(&nw_protocol_http1_identifier::onceToken, &__block_literal_global_42999);
    }

    nw_protocol_enumerate_instances(&nw_protocol_http1_identifier::http1_protocol_identifier, &__block_literal_global_17_30604);
  }
}

void ___ZL44nw_http_client_register_channel_flow_changesP10nw_context_block_invoke_5(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v9, &type, &v30))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol";
    }

    else if (v30 == 1)
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
          v33 = "nw_http1_get_http1_protocol";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_67:
        if (!v9)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      if (!v14)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_66;
  }

  v2 = *(a2 + 40);
  if (!v2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v9, &type, &v30))
    {
      goto LABEL_67;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v30 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v33 = "nw_http1_get_http1_protocol";
        v12 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_66;
      }

      v15 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!v15)
      {
        if (!v16)
        {
          goto LABEL_67;
        }

        *buf = 136446210;
        v33 = "nw_http1_get_http1_protocol";
        v12 = "%{public}s called with null handle, no backtrace";
        goto LABEL_66;
      }

      if (!v16)
      {
        goto LABEL_32;
      }

      *buf = 136446466;
      v33 = "nw_http1_get_http1_protocol";
      v34 = 2082;
      v35 = v15;
      v17 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_67;
    }

    *buf = 136446210;
    v33 = "nw_http1_get_http1_protocol";
    v12 = "%{public}s called with null handle";
LABEL_66:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_67;
  }

  v3 = *(v2 + 6);
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_69;
    }

    v4 = v2[2];
    if (v4)
    {
      v2 = (v4 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v9, &type, &v30))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection";
      goto LABEL_66;
    }

    if (v30 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_66;
    }

    v15 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v19 = os_log_type_enabled(v10, type);
    if (!v15)
    {
      if (!v19)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_66;
    }

    if (v19)
    {
      *buf = 136446466;
      v33 = "nw_http1_get_http1_protocol";
      v34 = 2082;
      v35 = v15;
      v17 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_31;
    }

LABEL_32:
    free(v15);
    if (!v9)
    {
      goto LABEL_69;
    }

LABEL_68:
    free(v9);
    goto LABEL_69;
  }

  v5 = v2[1];
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_http1_get_http1_protocol";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (!__nwlog_fault(v9, &type, &v30))
    {
      goto LABEL_67;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream";
      goto LABEL_66;
    }

    if (v30 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_66;
    }

    v15 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!v15)
    {
      if (!v18)
      {
        goto LABEL_67;
      }

      *buf = 136446210;
      v33 = "nw_http1_get_http1_protocol";
      v12 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_66;
    }

    if (!v18)
    {
      goto LABEL_32;
    }

    *buf = 136446466;
    v33 = "nw_http1_get_http1_protocol";
    v34 = 2082;
    v35 = v15;
    v17 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_31:
    _os_log_impl(&dword_181A37000, v10, v11, v17, buf, 0x16u);
    goto LABEL_32;
  }

  v2 = (v5 + 248);
LABEL_10:
  v6 = *v2;
  if (v6)
  {
    v7 = *(v6 + 208);
    if (v7)
    {
      do
      {
        v8 = *(v7 + 592);
        nw_queue_set_timer_values(*(v7 + 784), 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        v7 = v8;
      }

      while (v8);
    }

    return;
  }

LABEL_69:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v33 = "nw_http1_cancel_idle_connections";
  v20 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v20, &type, &v30))
  {
    goto LABEL_82;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v33 = "nw_http1_cancel_idle_connections";
    v23 = "%{public}s called with null http1";
LABEL_80:
    v28 = v21;
    v29 = v22;
LABEL_81:
    _os_log_impl(&dword_181A37000, v28, v29, v23, buf, 0xCu);
    goto LABEL_82;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    v22 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_82;
    }

    *buf = 136446210;
    v33 = "nw_http1_cancel_idle_connections";
    v23 = "%{public}s called with null http1, backtrace limit exceeded";
    goto LABEL_80;
  }

  v24 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(gLogObj, type);
  if (v24)
  {
    if (v27)
    {
      *buf = 136446466;
      v33 = "nw_http1_cancel_idle_connections";
      v34 = 2082;
      v35 = v24;
      _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v24);
    goto LABEL_82;
  }

  if (v27)
  {
    *buf = 136446210;
    v33 = "nw_http1_cancel_idle_connections";
    v23 = "%{public}s called with null http1, no backtrace";
    v28 = v25;
    v29 = v26;
    goto LABEL_81;
  }

LABEL_82:
  if (v20)
  {
    free(v20);
  }
}
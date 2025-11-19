void sub_1826D54DC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x338], 8);

  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);

  _Unwind_Resume(a1);
}

size_t __nw_proxy_config_copy_agent_data_block_invoke(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *(*(*(a1 + 32) + 8) + 24) += result + 6;
  return result;
}

size_t __nw_proxy_config_copy_agent_data_block_invoke_2(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *(*(*(a1 + 32) + 8) + 24) += result + 6;
  return result;
}

size_t __nw_proxy_config_copy_agent_data_block_invoke_3(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *(*(*(a1 + 32) + 8) + 24) += result + 6;
  return result;
}

uint64_t nw_proxy_config_serialize_one_stack(void *a1, uint64_t a2, unint64_t a3)
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v102 = v5;
  if (!v5)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    v116 = "nw_proxy_config_serialize_one_stack";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v106) = 0;
    if (__nwlog_fault(v53, type, &v106))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v54 = __nwlog_obj();
        v55 = type[0];
        if (os_log_type_enabled(v54, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_proxy_config_serialize_one_stack";
          _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null protocol_stack", buf, 0xCu);
        }
      }

      else if (v106 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v54 = __nwlog_obj();
        v57 = type[0];
        v58 = os_log_type_enabled(v54, type[0]);
        if (backtrace_string)
        {
          if (v58)
          {
            *buf = 136446466;
            v116 = "nw_proxy_config_serialize_one_stack";
            v117 = 2082;
            v118 = backtrace_string;
            _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null protocol_stack, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_151;
        }

        if (v58)
        {
          *buf = 136446210;
          v116 = "nw_proxy_config_serialize_one_stack";
          _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null protocol_stack, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v54 = __nwlog_obj();
        v76 = type[0];
        if (os_log_type_enabled(v54, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_proxy_config_serialize_one_stack";
          _os_log_impl(&dword_181A37000, v54, v76, "%{public}s called with null protocol_stack, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_151:
    if (v53)
    {
      free(v53);
    }

    v51 = 0;
    goto LABEL_71;
  }

  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = a2;
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = ___ZL35nw_proxy_config_serialize_one_stackPU31objcproto20OS_nw_protocol_stack8NSObjectPhPKh_block_invoke;
  v105[3] = &unk_1E6A32480;
  v105[4] = &v106;
  v105[5] = a3;
  v6 = v5;
  v7 = v105;
  _nw_protocol_stack_iterate_application_protocols(v6, v7);

  v8 = _nw_protocol_stack_copy_transport_protocol(v6);
  v9 = v8;
  if (!v8)
  {
LABEL_70:
    v51 = v107[3];

    _Block_object_dispose(&v106, 8);
LABEL_71:

    return v51;
  }

  __n = 0;
  v10 = v8;
  __src = _nw_protocol_options_copy_serialized_bytes(v10, &__n, 0);

  if (!__src || !__n)
  {
    v27 = _nw_protocol_options_copy_definition(v10);
    identifier = nw_protocol_definition_get_identifier(v27);
    *type = *identifier;
    v113 = *(identifier + 1);
    v114 = *(identifier + 4);
    v29 = v107[3];
    if (v29)
    {
      if (a3)
      {
        if (v29 < a3)
        {
          if (a3 - v29 > 0x2E)
          {
            *v29 = 5;
            *(v29 + 1) = 42;
            *(v29 + 5) = *type;
            *(v29 + 21) = v113;
            *(v29 + 37) = v114;
            *(v29 + 45) = 0;
            v34 = v29 + 47;
            goto LABEL_55;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v30 = gLogObj;
          *buf = 136447490;
          v116 = "nw_necp_append_tlv";
          v117 = 2048;
          v118 = v29;
          v119 = 2048;
          v120 = 47;
          v121 = 2048;
          *v122 = a3;
          *&v122[8] = 1024;
          *v123 = 5;
          *&v123[4] = 1024;
          *&v123[6] = 42;
          v31 = _os_log_send_and_compose_impl();

          v111 = OS_LOG_TYPE_ERROR;
          v110 = 0;
          if (__nwlog_fault(v31, &v111, &v110))
          {
            if (v111 == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v33 = v111;
              if (os_log_type_enabled(v32, v111))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v29;
                v119 = 2048;
                v120 = 47;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = 42;
                _os_log_impl(&dword_181A37000, v32, v33, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
              }
            }

            else if (v110 == 1)
            {
              v36 = __nw_create_backtrace_string();
              if (v36)
              {
                v37 = v36;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v38 = gLogObj;
                v39 = v111;
                if (os_log_type_enabled(v38, v111))
                {
                  *buf = 136447746;
                  v116 = "nw_necp_append_tlv";
                  v117 = 2048;
                  v118 = v29;
                  v119 = 2048;
                  v120 = 47;
                  v121 = 2048;
                  *v122 = a3;
                  *&v122[8] = 1024;
                  *v123 = 5;
                  *&v123[4] = 1024;
                  *&v123[6] = 42;
                  v124 = 2082;
                  v125 = v37;
                  _os_log_impl(&dword_181A37000, v38, v39, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
                }

                free(v37);
                if (!v31)
                {
                  goto LABEL_54;
                }

                goto LABEL_53;
              }

              v32 = __nwlog_obj();
              v46 = v111;
              if (os_log_type_enabled(v32, v111))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v29;
                v119 = 2048;
                v120 = 47;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = 42;
                _os_log_impl(&dword_181A37000, v32, v46, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v32 = gLogObj;
              v44 = v111;
              if (os_log_type_enabled(v32, v111))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v29;
                v119 = 2048;
                v120 = 47;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = 42;
                _os_log_impl(&dword_181A37000, v32, v44, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
              }
            }

            goto LABEL_51;
          }

LABEL_52:
          if (!v31)
          {
LABEL_54:
            v34 = 0;
LABEL_55:
            v107[3] = v34;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v47 = gLogObj;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v116 = "nw_proxy_config_serialize_one_stack";
              v117 = 2112;
              v118 = v27;
              _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_DEBUG, "%{public}s Serialized proxy transport protocol %@", buf, 0x16u);
            }

            if (!__src)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

LABEL_53:
          free(v31);
          goto LABEL_54;
        }

        v72 = __nwlog_obj();
        *buf = 136447234;
        v116 = "nw_necp_append_tlv";
        v117 = 2048;
        v118 = v29;
        v119 = 2048;
        v120 = a3;
        v121 = 1024;
        *v122 = 5;
        *&v122[4] = 1024;
        *&v122[6] = 42;
        v31 = _os_log_send_and_compose_impl();

        v111 = OS_LOG_TYPE_ERROR;
        v110 = 0;
        if (!__nwlog_fault(v31, &v111, &v110))
        {
          goto LABEL_52;
        }

        if (v111 == OS_LOG_TYPE_FAULT)
        {
          v32 = __nwlog_obj();
          v73 = v111;
          if (os_log_type_enabled(v32, v111))
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v29;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = 42;
            _os_log_impl(&dword_181A37000, v32, v73, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
          }
        }

        else if (v110 == 1)
        {
          v89 = __nw_create_backtrace_string();
          v32 = __nwlog_obj();
          v90 = v111;
          v91 = os_log_type_enabled(v32, v111);
          if (v89)
          {
            if (v91)
            {
              *buf = 136447490;
              v116 = "nw_necp_append_tlv";
              v117 = 2048;
              v118 = v29;
              v119 = 2048;
              v120 = a3;
              v121 = 1024;
              *v122 = 5;
              *&v122[4] = 1024;
              *&v122[6] = 42;
              *v123 = 2082;
              *&v123[2] = v89;
              _os_log_impl(&dword_181A37000, v32, v90, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
            }

            free(v89);
            goto LABEL_52;
          }

          if (v91)
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v29;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = 42;
            _os_log_impl(&dword_181A37000, v32, v90, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
          }
        }

        else
        {
          v32 = __nwlog_obj();
          v99 = v111;
          if (os_log_type_enabled(v32, v111))
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v29;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = 42;
            _os_log_impl(&dword_181A37000, v32, v99, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
          }
        }

LABEL_51:

        goto LABEL_52;
      }

      v68 = __nwlog_obj();
      *buf = 136446210;
      v116 = "nw_necp_append_tlv";
      v31 = _os_log_send_and_compose_impl();

      v111 = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (!__nwlog_fault(v31, &v111, &v110))
      {
        goto LABEL_52;
      }

      if (v111 == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v69 = v111;
        if (os_log_type_enabled(v62, v111))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v69, "%{public}s called with null beyond", buf, 0xCu);
        }

LABEL_180:

        goto LABEL_52;
      }

      if (v110 != 1)
      {
        v62 = __nwlog_obj();
        v97 = v111;
        if (os_log_type_enabled(v62, v111))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v97, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_180;
      }

      v77 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v84 = v111;
      v85 = os_log_type_enabled(v62, v111);
      if (!v77)
      {
        if (v85)
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v84, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
        }

        goto LABEL_180;
      }

      if (v85)
      {
        *buf = 136446466;
        v116 = "nw_necp_append_tlv";
        v117 = 2082;
        v118 = v77;
        _os_log_impl(&dword_181A37000, v62, v84, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v61 = __nwlog_obj();
      *buf = 136446210;
      v116 = "nw_necp_append_tlv";
      v31 = _os_log_send_and_compose_impl();

      v111 = OS_LOG_TYPE_ERROR;
      v110 = 0;
      if (!__nwlog_fault(v31, &v111, &v110))
      {
        goto LABEL_52;
      }

      if (v111 == OS_LOG_TYPE_FAULT)
      {
        v62 = __nwlog_obj();
        v63 = v111;
        if (os_log_type_enabled(v62, v111))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v63, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_180;
      }

      if (v110 != 1)
      {
        v62 = __nwlog_obj();
        v95 = v111;
        if (os_log_type_enabled(v62, v111))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v95, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_180;
      }

      v77 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v78 = v111;
      v79 = os_log_type_enabled(v62, v111);
      if (!v77)
      {
        if (v79)
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v62, v78, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_180;
      }

      if (v79)
      {
        *buf = 136446466;
        v116 = "nw_necp_append_tlv";
        v117 = 2082;
        v118 = v77;
        _os_log_impl(&dword_181A37000, v62, v78, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v77);
    goto LABEL_52;
  }

  v11 = __n + 42;
  if (__n == -42)
  {
    v59 = __nwlog_obj();
    os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v116 = "nw_proxy_config_serialize_one_stack";
    v60 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v60);
    if (result)
    {
      goto LABEL_192;
    }

    free(v60);
  }

  v12 = malloc_type_malloc(v11, 0x6158F125uLL);
  if (v12)
  {
    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v116 = "nw_proxy_config_serialize_one_stack";
  v14 = _os_log_send_and_compose_impl();

  result = __nwlog_should_abort(v14);
  if (!result)
  {
    free(v14);
LABEL_9:
    v16 = _nw_protocol_options_copy_definition(v10);
    v17 = nw_protocol_definition_get_identifier(v16);
    v18 = *(v17 + 4);
    v19 = *(v17 + 1);
    *v12 = *v17;
    v12[1] = v19;
    *(v12 + 4) = v18;
    v20 = __n;
    *(v12 + 20) = __n;
    memcpy(v12 + 42, __src, v20);
    v21 = v107[3];
    v101 = v16;
    if (v21)
    {
      if (a3)
      {
        if (v21 < a3)
        {
          v22 = v11 + 5;
          if (a3 - v21 >= v22)
          {
            *v21 = 5;
            *(v21 + 1) = v11;
            if (v11)
            {
              memcpy((v21 + 5), v12, v11);
            }

            v35 = v21 + v22;
            goto LABEL_66;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          *buf = 136447490;
          v116 = "nw_necp_append_tlv";
          v117 = 2048;
          v118 = v21;
          v119 = 2048;
          v120 = v11 + 5;
          v121 = 2048;
          *v122 = a3;
          *&v122[8] = 1024;
          *v123 = 5;
          *&v123[4] = 1024;
          *&v123[6] = v11;
          v24 = _os_log_send_and_compose_impl();

          type[0] = OS_LOG_TYPE_ERROR;
          v111 = OS_LOG_TYPE_DEFAULT;
          if (__nwlog_fault(v24, type, &v111))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v25 = gLogObj;
              v26 = type[0];
              if (os_log_type_enabled(v25, type[0]))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v21;
                v119 = 2048;
                v120 = v11 + 5;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = v11;
                _os_log_impl(&dword_181A37000, v25, v26, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
              }
            }

            else if (v111 == OS_LOG_TYPE_INFO)
            {
              v40 = __nw_create_backtrace_string();
              if (v40)
              {
                v41 = v40;
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v42 = gLogObj;
                v43 = type[0];
                if (os_log_type_enabled(v42, type[0]))
                {
                  *buf = 136447746;
                  v116 = "nw_necp_append_tlv";
                  v117 = 2048;
                  v118 = v21;
                  v119 = 2048;
                  v120 = v11 + 5;
                  v121 = 2048;
                  *v122 = a3;
                  *&v122[8] = 1024;
                  *v123 = 5;
                  *&v123[4] = 1024;
                  *&v123[6] = v11;
                  v124 = 2082;
                  v125 = v41;
                  _os_log_impl(&dword_181A37000, v42, v43, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
                }

                free(v41);
                if (!v24)
                {
                  goto LABEL_65;
                }

LABEL_63:
                v49 = v24;
LABEL_64:
                free(v49);
                goto LABEL_65;
              }

              v25 = __nwlog_obj();
              v48 = type[0];
              if (os_log_type_enabled(v25, type[0]))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v21;
                v119 = 2048;
                v120 = v11 + 5;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = v11;
                _os_log_impl(&dword_181A37000, v25, v48, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v25 = gLogObj;
              v45 = type[0];
              if (os_log_type_enabled(v25, type[0]))
              {
                *buf = 136447490;
                v116 = "nw_necp_append_tlv";
                v117 = 2048;
                v118 = v21;
                v119 = 2048;
                v120 = v11 + 5;
                v121 = 2048;
                *v122 = a3;
                *&v122[8] = 1024;
                *v123 = 5;
                *&v123[4] = 1024;
                *&v123[6] = v11;
                _os_log_impl(&dword_181A37000, v25, v45, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
              }
            }

            goto LABEL_61;
          }

LABEL_62:
          if (!v24)
          {
LABEL_65:
            v35 = 0;
LABEL_66:
            v107[3] = v35;
            free(v12);
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v50 = gLogObj;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v116 = "nw_proxy_config_serialize_one_stack";
              v117 = 2112;
              v118 = v101;
              _os_log_impl(&dword_181A37000, v50, OS_LOG_TYPE_DEBUG, "%{public}s Serialized proxy transport protocol %@", buf, 0x16u);
            }

LABEL_69:
            free(__src);
            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v74 = __nwlog_obj();
        *buf = 136447234;
        v116 = "nw_necp_append_tlv";
        v117 = 2048;
        v118 = v21;
        v119 = 2048;
        v120 = a3;
        v121 = 1024;
        *v122 = 5;
        *&v122[4] = 1024;
        *&v122[6] = v11;
        v24 = _os_log_send_and_compose_impl();

        type[0] = OS_LOG_TYPE_ERROR;
        v111 = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v24, type, &v111))
        {
          goto LABEL_62;
        }

        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v25 = __nwlog_obj();
          v75 = type[0];
          if (os_log_type_enabled(v25, type[0]))
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v21;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = v11;
            _os_log_impl(&dword_181A37000, v25, v75, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
          }
        }

        else if (v111 == OS_LOG_TYPE_INFO)
        {
          v92 = __nw_create_backtrace_string();
          v25 = __nwlog_obj();
          v93 = type[0];
          v94 = os_log_type_enabled(v25, type[0]);
          if (v92)
          {
            if (v94)
            {
              *buf = 136447490;
              v116 = "nw_necp_append_tlv";
              v117 = 2048;
              v118 = v21;
              v119 = 2048;
              v120 = a3;
              v121 = 1024;
              *v122 = 5;
              *&v122[4] = 1024;
              *&v122[6] = v11;
              *v123 = 2082;
              *&v123[2] = v92;
              _os_log_impl(&dword_181A37000, v25, v93, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
            }

            free(v92);
            goto LABEL_62;
          }

          if (v94)
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v21;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = v11;
            _os_log_impl(&dword_181A37000, v25, v93, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
          }
        }

        else
        {
          v25 = __nwlog_obj();
          v100 = type[0];
          if (os_log_type_enabled(v25, type[0]))
          {
            *buf = 136447234;
            v116 = "nw_necp_append_tlv";
            v117 = 2048;
            v118 = v21;
            v119 = 2048;
            v120 = a3;
            v121 = 1024;
            *v122 = 5;
            *&v122[4] = 1024;
            *&v122[6] = v11;
            _os_log_impl(&dword_181A37000, v25, v100, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
          }
        }

LABEL_61:

        goto LABEL_62;
      }

      v70 = __nwlog_obj();
      *buf = 136446210;
      v116 = "nw_necp_append_tlv";
      v65 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v111 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v65, type, &v111))
      {
        goto LABEL_184;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v66 = __nwlog_obj();
        v71 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v66, v71, "%{public}s called with null beyond", buf, 0xCu);
        }

LABEL_165:

        goto LABEL_184;
      }

      if (v111 != OS_LOG_TYPE_INFO)
      {
        v66 = __nwlog_obj();
        v98 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v66, v98, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_165;
      }

      v86 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v87 = type[0];
      v88 = os_log_type_enabled(v81, type[0]);
      if (v86)
      {
        if (v88)
        {
          *buf = 136446466;
          v116 = "nw_necp_append_tlv";
          v117 = 2082;
          v118 = v86;
          _os_log_impl(&dword_181A37000, v81, v87, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v86);
        if (!v65)
        {
          goto LABEL_65;
        }

LABEL_185:
        v49 = v65;
        goto LABEL_64;
      }

      if (v88)
      {
        *buf = 136446210;
        v116 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v81, v87, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v64 = __nwlog_obj();
      *buf = 136446210;
      v116 = "nw_necp_append_tlv";
      v65 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v111 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v65, type, &v111))
      {
        goto LABEL_184;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v66 = __nwlog_obj();
        v67 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v66, v67, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_165;
      }

      if (v111 != OS_LOG_TYPE_INFO)
      {
        v66 = __nwlog_obj();
        v96 = type[0];
        if (os_log_type_enabled(v66, type[0]))
        {
          *buf = 136446210;
          v116 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v66, v96, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_165;
      }

      v80 = __nw_create_backtrace_string();
      v81 = __nwlog_obj();
      v82 = type[0];
      v83 = os_log_type_enabled(v81, type[0]);
      if (v80)
      {
        if (v83)
        {
          *buf = 136446466;
          v116 = "nw_necp_append_tlv";
          v117 = 2082;
          v118 = v80;
          _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
LABEL_184:
        if (!v65)
        {
          goto LABEL_65;
        }

        goto LABEL_185;
      }

      if (v83)
      {
        *buf = 136446210;
        v116 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v81, v82, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
      }
    }

    goto LABEL_184;
  }

LABEL_192:
  __break(1u);
  return result;
}

void sub_1826D73C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

BOOL __nw_proxy_config_copy_agent_data_block_invoke_144(uint64_t a1, const char *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = strlen(a2);
  if (!v6 || (v7 = v6, !strcmp(*(a1 + 56), a2)))
  {
    v18 = 1;
    goto LABEL_41;
  }

  should_proxy_transport_at_level = nw_proxy_config_should_proxy_transport_at_level(*(a1 + 32), a2, 0);
  if (should_proxy_transport_at_level == 2)
  {
    v9 = 10;
  }

  else
  {
    v9 = 2;
  }

  if (should_proxy_transport_at_level == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a1 + 48) + 8) + 24);
  if (!v11)
  {
    v27 = v5;
    v28 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_necp_append_tlv";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v29, &type, &v58))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s called with null tlv_start", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v58 != 1)
    {
      v30 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v50, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_96;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v40 = type;
    v41 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v41)
    {
      *buf = 136446466;
      v61 = "nw_necp_append_tlv";
      v62 = 2082;
      *v63 = backtrace_string;
      _os_log_impl(&dword_181A37000, v30, v40, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_66;
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    v27 = v5;
    v32 = __nwlog_obj();
    *buf = 136446210;
    v61 = "nw_necp_append_tlv";
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v29, &type, &v58))
    {
      goto LABEL_98;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v30 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v33, "%{public}s called with null beyond", buf, 0xCu);
      }

LABEL_96:

      goto LABEL_97;
    }

    if (v58 != 1)
    {
      v30 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v51, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_96;
    }

    backtrace_string = __nw_create_backtrace_string();
    v30 = __nwlog_obj();
    v42 = type;
    v43 = os_log_type_enabled(v30, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v61 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
      }

      goto LABEL_96;
    }

    if (v43)
    {
      *buf = 136446466;
      v61 = "nw_necp_append_tlv";
      v62 = 2082;
      *v63 = backtrace_string;
      _os_log_impl(&dword_181A37000, v30, v42, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_66:

    free(backtrace_string);
LABEL_97:
    v5 = v27;
LABEL_98:
    if (v29)
    {
      v55 = v29;
LABEL_111:
      free(v55);
    }

LABEL_112:
    v19 = 0;
    goto LABEL_38;
  }

  v13 = (v7 + 1);
  if (v11 >= v12)
  {
    v34 = __nwlog_obj();
    *buf = 136447234;
    v35 = v10;
    v61 = "nw_necp_append_tlv";
    v62 = 2048;
    *v63 = v11;
    *&v63[8] = 2048;
    *v64 = v12;
    *&v64[8] = 1024;
    *v65 = v10;
    *&v65[4] = 1024;
    *&v65[6] = v13;
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v36, &type, &v58))
    {
      goto LABEL_109;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136447234;
        v61 = "nw_necp_append_tlv";
        v62 = 2048;
        *v63 = v11;
        *&v63[8] = 2048;
        *v64 = v12;
        *&v64[8] = 1024;
        *v65 = v10;
        *&v65[4] = 1024;
        *&v65[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
      }

      goto LABEL_108;
    }

    if (v58 != 1)
    {
      v37 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136447234;
        v61 = "nw_necp_append_tlv";
        v62 = 2048;
        *v63 = v11;
        *&v63[8] = 2048;
        *v64 = v12;
        *&v64[8] = 1024;
        *v65 = v10;
        *&v65[4] = 1024;
        *&v65[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v52, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
      }

      goto LABEL_108;
    }

    v44 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v45 = type;
    v46 = os_log_type_enabled(v37, type);
    if (!v44)
    {
      if (v46)
      {
        *buf = 136447234;
        v61 = "nw_necp_append_tlv";
        v62 = 2048;
        *v63 = v11;
        *&v63[8] = 2048;
        *v64 = v12;
        *&v64[8] = 1024;
        *v65 = v35;
        *&v65[4] = 1024;
        *&v65[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v45, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
      }

      goto LABEL_108;
    }

    if (v46)
    {
      *buf = 136447490;
      v61 = "nw_necp_append_tlv";
      v62 = 2048;
      *v63 = v11;
      *&v63[8] = 2048;
      *v64 = v12;
      *&v64[8] = 1024;
      *v65 = v35;
      *&v65[4] = 1024;
      *&v65[6] = v13;
      *v66 = 2082;
      *&v66[2] = v44;
      _os_log_impl(&dword_181A37000, v37, v45, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
    }

    goto LABEL_90;
  }

  if (v12 - v11 < v13 + 5)
  {
    v57 = v5;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    *buf = 136447490;
    v61 = "nw_necp_append_tlv";
    v62 = 2048;
    *v63 = v11;
    *&v63[8] = 2048;
    *v64 = v13 + 5;
    *&v64[8] = 2048;
    *v65 = v12;
    *&v65[8] = 1024;
    *v66 = v10;
    *&v66[4] = 1024;
    *&v66[6] = v13;
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (__nwlog_fault(v15, &type, &v58))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136447490;
          v61 = "nw_necp_append_tlv";
          v62 = 2048;
          *v63 = v11;
          *&v63[8] = 2048;
          *v64 = v13 + 5;
          *&v64[8] = 2048;
          *v65 = v12;
          *&v65[8] = 1024;
          *v66 = v10;
          *&v66[4] = 1024;
          *&v66[6] = v13;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
        }
      }

      else if (v58 == 1)
      {
        v20 = __nw_create_backtrace_string();
        if (v20)
        {
          v21 = v20;
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            *buf = 136447746;
            v61 = "nw_necp_append_tlv";
            v62 = 2048;
            *v63 = v11;
            *&v63[8] = 2048;
            *v64 = v13 + 5;
            *&v64[8] = 2048;
            *v65 = v12;
            *&v65[8] = 1024;
            *v66 = v10;
            *&v66[4] = 1024;
            *&v66[6] = v13;
            v67 = 2082;
            v68 = v21;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
          }

          free(v21);
          if (!v15)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        v16 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136447490;
          v61 = "nw_necp_append_tlv";
          v62 = 2048;
          *v63 = v11;
          *&v63[8] = 2048;
          *v64 = v13 + 5;
          *&v64[8] = 2048;
          *v65 = v12;
          *&v65[8] = 1024;
          *v66 = v10;
          *&v66[4] = 1024;
          *&v66[6] = v13;
          _os_log_impl(&dword_181A37000, v16, v25, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(v16, type))
        {
          *buf = 136447490;
          v61 = "nw_necp_append_tlv";
          v62 = 2048;
          *v63 = v11;
          *&v63[8] = 2048;
          *v64 = v13 + 5;
          *&v64[8] = 2048;
          *v65 = v12;
          *&v65[8] = 1024;
          *v66 = v10;
          *&v66[4] = 1024;
          *&v66[6] = v13;
          _os_log_impl(&dword_181A37000, v16, v24, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
        }
      }
    }

    if (!v15)
    {
LABEL_37:
      v19 = 0;
      v5 = v57;
      goto LABEL_38;
    }

LABEL_36:
    free(v15);
    goto LABEL_37;
  }

  *v11 = v10;
  *(v11 + 1) = v13;
  if (v13)
  {
    if (a2)
    {
      memcpy((v11 + 5), a2, v13);
      goto LABEL_22;
    }

    v47 = __nwlog_obj();
    v48 = v10;
    *buf = 136446722;
    v61 = "nw_necp_append_tlv";
    v62 = 1024;
    *v63 = v10;
    *&v63[4] = 1024;
    *&v63[6] = v13;
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v58 = 0;
    if (!__nwlog_fault(v36, &type, &v58))
    {
LABEL_109:
      if (v36)
      {
        v55 = v36;
        goto LABEL_111;
      }

      goto LABEL_112;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v49 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446722;
        v61 = "nw_necp_append_tlv";
        v62 = 1024;
        *v63 = v10;
        *&v63[4] = 1024;
        *&v63[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v49, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
      }

LABEL_108:

      goto LABEL_109;
    }

    if (v58 != 1)
    {
      v37 = __nwlog_obj();
      v56 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446722;
        v61 = "nw_necp_append_tlv";
        v62 = 1024;
        *v63 = v10;
        *&v63[4] = 1024;
        *&v63[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v56, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
      }

      goto LABEL_108;
    }

    v44 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v53 = type;
    v54 = os_log_type_enabled(v37, type);
    if (!v44)
    {
      if (v54)
      {
        *buf = 136446722;
        v61 = "nw_necp_append_tlv";
        v62 = 1024;
        *v63 = v48;
        *&v63[4] = 1024;
        *&v63[6] = v13;
        _os_log_impl(&dword_181A37000, v37, v53, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
      }

      goto LABEL_108;
    }

    if (v54)
    {
      *buf = 136446978;
      v61 = "nw_necp_append_tlv";
      v62 = 1024;
      *v63 = v48;
      *&v63[4] = 1024;
      *&v63[6] = v13;
      *v64 = 2082;
      *&v64[2] = v44;
      _os_log_impl(&dword_181A37000, v37, v53, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
    }

LABEL_90:

    free(v44);
    goto LABEL_109;
  }

LABEL_22:
  v19 = v11 + v13 + 5;
LABEL_38:
  *(*(*(a1 + 48) + 8) + 24) = v19;
  if (*(a1 + 40) != v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = nw_proxy_config_serialize_one_stack(v5, *(*(*(a1 + 48) + 8) + 24), *(a1 + 64));
  }

  v18 = *(*(*(a1 + 48) + 8) + 24) != 0;
LABEL_41:

  return v18;
}

BOOL __nw_proxy_config_copy_agent_data_block_invoke_2_145(uint64_t a1, int a2, xpc_object_t xstring)
{
  v55 = *MEMORY[0x1E69E9840];
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = strlen(string_ptr);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_necp_append_tlv";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v21, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v44 != 1)
      {
        v22 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v38, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_87;
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
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v30)
      {
        *buf = 136446466;
        v47 = "nw_necp_append_tlv";
        v48 = 2082;
        *v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_57:

      free(backtrace_string);
    }

LABEL_88:
    if (!v21)
    {
      goto LABEL_31;
    }

    v19 = v21;
    goto LABEL_30;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_necp_append_tlv";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v21, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null beyond", buf, 0xCu);
        }

LABEL_87:

        goto LABEL_88;
      }

      if (v44 != 1)
      {
        v22 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v39, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_87;
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
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v32)
      {
        *buf = 136446466;
        v47 = "nw_necp_append_tlv";
        v48 = 2082;
        *v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_57;
    }

    goto LABEL_88;
  }

  v8 = (v5 + 1);
  if (v6 >= v7)
  {
    v26 = __nwlog_obj();
    *buf = 136447234;
    v47 = "nw_necp_append_tlv";
    v48 = 2048;
    *v49 = v6;
    *&v49[8] = 2048;
    *v50 = v7;
    *&v50[8] = 1024;
    *v51 = 8;
    *&v51[4] = 1024;
    *&v51[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 8;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    if (v44 != 1)
    {
      v11 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 8;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v40, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    v33 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v11, type);
    if (!v33)
    {
      if (v35)
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 8;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v34, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    if (v35)
    {
      *buf = 136447490;
      v47 = "nw_necp_append_tlv";
      v48 = 2048;
      *v49 = v6;
      *&v49[8] = 2048;
      *v50 = v7;
      *&v50[8] = 1024;
      *v51 = 8;
      *&v51[4] = 1024;
      *&v51[6] = v8;
      *v52 = 2082;
      *&v52[2] = v33;
      _os_log_impl(&dword_181A37000, v11, v34, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
    }

    goto LABEL_81;
  }

  if (v7 - v6 < v8 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136447490;
    v47 = "nw_necp_append_tlv";
    v48 = 2048;
    *v49 = v6;
    *&v49[8] = 2048;
    *v50 = v8 + 5;
    *&v50[8] = 2048;
    *v51 = v7;
    *&v51[8] = 1024;
    *v52 = 8;
    *&v52[4] = 1024;
    *&v52[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 8;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
      }
    }

    else if (v44 == 1)
    {
      v15 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136447746;
          v47 = "nw_necp_append_tlv";
          v48 = 2048;
          *v49 = v6;
          *&v49[8] = 2048;
          *v50 = v8 + 5;
          *&v50[8] = 2048;
          *v51 = v7;
          *&v51[8] = 1024;
          *v52 = 8;
          *&v52[4] = 1024;
          *&v52[6] = v8;
          v53 = 2082;
          v54 = v15;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v15);
        if (!v10)
        {
          goto LABEL_31;
        }

LABEL_29:
        v19 = v10;
LABEL_30:
        free(v19);
        goto LABEL_31;
      }

      if (v17)
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 8;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 8;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
      }
    }

    goto LABEL_27;
  }

  *v6 = 8;
  *(v6 + 1) = v8;
  if (v5 != -1)
  {
    if (string_ptr)
    {
      memcpy((v6 + 5), string_ptr, v8);
      goto LABEL_15;
    }

    v36 = __nwlog_obj();
    *buf = 136446722;
    v47 = "nw_necp_append_tlv";
    v48 = 1024;
    *v49 = 8;
    *&v49[4] = 1024;
    *&v49[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
LABEL_28:
      if (!v10)
      {
LABEL_31:
        v14 = 0;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 8;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v37, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v44 != 1)
    {
      v11 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 8;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v43, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
      }

      goto LABEL_27;
    }

    v33 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v41 = type;
    v42 = os_log_type_enabled(v11, type);
    if (!v33)
    {
      if (v42)
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 8;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v41, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
      }

      goto LABEL_27;
    }

    if (v42)
    {
      *buf = 136446978;
      v47 = "nw_necp_append_tlv";
      v48 = 1024;
      *v49 = 8;
      *&v49[4] = 1024;
      *&v49[6] = v8;
      *v50 = 2082;
      *&v50[2] = v33;
      _os_log_impl(&dword_181A37000, v11, v41, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
    }

LABEL_81:

    free(v33);
    goto LABEL_28;
  }

LABEL_15:
  v14 = v6 + v8 + 5;
LABEL_32:
  *(*(*(a1 + 32) + 8) + 24) = v14;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

BOOL __nw_proxy_config_copy_agent_data_block_invoke_3_146(uint64_t a1, int a2, xpc_object_t xstring)
{
  v55 = *MEMORY[0x1E69E9840];
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = strlen(string_ptr);
  if (!v5)
  {
    return 1;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (!v6)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_necp_append_tlv";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v21, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v44 != 1)
      {
        v22 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v38, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_87;
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
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v30)
      {
        *buf = 136446466;
        v47 = "nw_necp_append_tlv";
        v48 = 2082;
        *v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_57:

      free(backtrace_string);
    }

LABEL_88:
    if (!v21)
    {
      goto LABEL_31;
    }

    v19 = v21;
    goto LABEL_30;
  }

  v7 = *(a1 + 40);
  if (!v7)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v47 = "nw_necp_append_tlv";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (__nwlog_fault(v21, &type, &v44))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v25, "%{public}s called with null beyond", buf, 0xCu);
        }

LABEL_87:

        goto LABEL_88;
      }

      if (v44 != 1)
      {
        v22 = __nwlog_obj();
        v39 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v39, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_87;
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
          v47 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
        }

        goto LABEL_87;
      }

      if (v32)
      {
        *buf = 136446466;
        v47 = "nw_necp_append_tlv";
        v48 = 2082;
        *v49 = backtrace_string;
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_57;
    }

    goto LABEL_88;
  }

  v8 = (v5 + 1);
  if (v6 >= v7)
  {
    v26 = __nwlog_obj();
    *buf = 136447234;
    v47 = "nw_necp_append_tlv";
    v48 = 2048;
    *v49 = v6;
    *&v49[8] = 2048;
    *v50 = v7;
    *&v50[8] = 1024;
    *v51 = 9;
    *&v51[4] = 1024;
    *&v51[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v27 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 9;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v27, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    if (v44 != 1)
    {
      v11 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 9;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v40, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    v33 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v34 = type;
    v35 = os_log_type_enabled(v11, type);
    if (!v33)
    {
      if (v35)
      {
        *buf = 136447234;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v7;
        *&v50[8] = 1024;
        *v51 = 9;
        *&v51[4] = 1024;
        *&v51[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v34, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
      }

      goto LABEL_27;
    }

    if (v35)
    {
      *buf = 136447490;
      v47 = "nw_necp_append_tlv";
      v48 = 2048;
      *v49 = v6;
      *&v49[8] = 2048;
      *v50 = v7;
      *&v50[8] = 1024;
      *v51 = 9;
      *&v51[4] = 1024;
      *&v51[6] = v8;
      *v52 = 2082;
      *&v52[2] = v33;
      _os_log_impl(&dword_181A37000, v11, v34, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
    }

    goto LABEL_81;
  }

  if (v7 - v6 < v8 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    *buf = 136447490;
    v47 = "nw_necp_append_tlv";
    v48 = 2048;
    *v49 = v6;
    *&v49[8] = 2048;
    *v50 = v8 + 5;
    *&v50[8] = 2048;
    *v51 = v7;
    *&v51[8] = 1024;
    *v52 = 9;
    *&v52[4] = 1024;
    *&v52[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
      goto LABEL_28;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 9;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
      }
    }

    else if (v44 == 1)
    {
      v15 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v16 = type;
      v17 = os_log_type_enabled(v11, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136447746;
          v47 = "nw_necp_append_tlv";
          v48 = 2048;
          *v49 = v6;
          *&v49[8] = 2048;
          *v50 = v8 + 5;
          *&v50[8] = 2048;
          *v51 = v7;
          *&v51[8] = 1024;
          *v52 = 9;
          *&v52[4] = 1024;
          *&v52[6] = v8;
          v53 = 2082;
          v54 = v15;
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v15);
        if (!v10)
        {
          goto LABEL_31;
        }

LABEL_29:
        v19 = v10;
LABEL_30:
        free(v19);
        goto LABEL_31;
      }

      if (v17)
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 9;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v16, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v18 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136447490;
        v47 = "nw_necp_append_tlv";
        v48 = 2048;
        *v49 = v6;
        *&v49[8] = 2048;
        *v50 = v8 + 5;
        *&v50[8] = 2048;
        *v51 = v7;
        *&v51[8] = 1024;
        *v52 = 9;
        *&v52[4] = 1024;
        *&v52[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v18, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
      }
    }

    goto LABEL_27;
  }

  *v6 = 9;
  *(v6 + 1) = v8;
  if (v5 != -1)
  {
    if (string_ptr)
    {
      memcpy((v6 + 5), string_ptr, v8);
      goto LABEL_15;
    }

    v36 = __nwlog_obj();
    *buf = 136446722;
    v47 = "nw_necp_append_tlv";
    v48 = 1024;
    *v49 = 9;
    *&v49[4] = 1024;
    *&v49[6] = v8;
    v10 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v44 = 0;
    if (!__nwlog_fault(v10, &type, &v44))
    {
LABEL_28:
      if (!v10)
      {
LABEL_31:
        v14 = 0;
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 9;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v37, "%{public}s type=%u length=%u but value is NULL", buf, 0x18u);
      }

LABEL_27:

      goto LABEL_28;
    }

    if (v44 != 1)
    {
      v11 = __nwlog_obj();
      v43 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 9;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v43, "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded", buf, 0x18u);
      }

      goto LABEL_27;
    }

    v33 = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v41 = type;
    v42 = os_log_type_enabled(v11, type);
    if (!v33)
    {
      if (v42)
      {
        *buf = 136446722;
        v47 = "nw_necp_append_tlv";
        v48 = 1024;
        *v49 = 9;
        *&v49[4] = 1024;
        *&v49[6] = v8;
        _os_log_impl(&dword_181A37000, v11, v41, "%{public}s type=%u length=%u but value is NULL, no backtrace", buf, 0x18u);
      }

      goto LABEL_27;
    }

    if (v42)
    {
      *buf = 136446978;
      v47 = "nw_necp_append_tlv";
      v48 = 1024;
      *v49 = 9;
      *&v49[4] = 1024;
      *&v49[6] = v8;
      *v50 = 2082;
      *&v50[2] = v33;
      _os_log_impl(&dword_181A37000, v11, v41, "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s", buf, 0x22u);
    }

LABEL_81:

    free(v33);
    goto LABEL_28;
  }

LABEL_15:
  v14 = v6 + v8 + 5;
LABEL_32:
  *(*(*(a1 + 32) + 8) + 24) = v14;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

BOOL __nw_proxy_config_copy_agent_data_block_invoke_147(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nw_path_evaluator_add_endpoint_to_necp_message(v4, 11, *(*(*(a1 + 32) + 8) + 24), *(a1 + 40), 0);
  v6 = v5;
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446210;
      v10 = "nw_proxy_config_copy_agent_data_block_invoke";
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Failed to serialize resolved endpoint", &v9, 0xCu);
    }
  }

  return v6 != 0;
}

void __nw_proxy_config_copy_agent_data_block_invoke_148(uint64_t a1, char *__s)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = strlen(__s);
  if (!v5)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start";
LABEL_75:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
        }

LABEL_76:

        goto LABEL_77;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v31 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v31)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null tlv_start, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

LABEL_77:
    if (!v22)
    {
      goto LABEL_29;
    }

    v20 = v22;
    goto LABEL_28;
  }

  if (!v4)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v33 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v33)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null beyond, dumping backtrace:%{public}s";
LABEL_51:
      _os_log_impl(&dword_181A37000, v23, v24, v32, buf, 0x16u);
LABEL_52:

      free(backtrace_string);
      goto LABEL_77;
    }

    goto LABEL_77;
  }

  v7 = (v6 + 1);
  if (v5 >= v4)
  {
    v27 = __nwlog_obj();
    *buf = 136447234;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v4;
    *&v47[8] = 1024;
    *v48 = 13;
    *&v48[4] = 1024;
    *&v48[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 13;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v41 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v28 = type;
      v34 = os_log_type_enabled(v10, type);
      if (v14)
      {
        if (!v34)
        {
          goto LABEL_18;
        }

        *buf = 136447490;
        v44 = "nw_necp_append_tlv";
        v45 = 2048;
        *v46 = v5;
        *&v46[8] = 2048;
        *v47 = v4;
        *&v47[8] = 1024;
        *v48 = 13;
        *&v48[4] = 1024;
        *&v48[6] = v7;
        *v49 = 2082;
        *&v49[2] = v14;
        v16 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s";
        v17 = v10;
        v18 = v28;
        v19 = 54;
LABEL_17:
        _os_log_impl(&dword_181A37000, v17, v18, v16, buf, v19);
LABEL_18:

        free(v14);
        goto LABEL_19;
      }

      if (!v34)
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 13;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 13;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    v38 = v10;
    v39 = v28;
    v40 = 44;
LABEL_87:
    _os_log_impl(&dword_181A37000, v38, v39, v29, buf, v40);
    goto LABEL_88;
  }

  if (v4 - v5 < v7 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136447490;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 13;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 13;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
      goto LABEL_25;
    }

    if (v41 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 13;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
      goto LABEL_25;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 13;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x36u);
LABEL_26:

      if (!v9)
      {
LABEL_29:
        v13 = 0;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    *buf = 136447746;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 13;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v50 = 2082;
    v51 = v14;
    v16 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s";
    v17 = v10;
    v18 = v11;
    v19 = 64;
    goto LABEL_17;
  }

  *v5 = 13;
  *(v5 + 1) = v7;
  if (v6 != -1)
  {
    if (__s)
    {
      memcpy((v5 + 5), __s, v7);
      goto LABEL_12;
    }

    v35 = __nwlog_obj();
    *buf = 136446722;
    v44 = "nw_necp_append_tlv";
    v45 = 1024;
    *v46 = 13;
    *&v46[4] = 1024;
    *&v46[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
LABEL_19:
      if (!v9)
      {
        goto LABEL_29;
      }

LABEL_27:
      v20 = v9;
LABEL_28:
      free(v20);
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 13;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL";
LABEL_86:
        v38 = v10;
        v39 = v36;
        v40 = 24;
        goto LABEL_87;
      }
    }

    else
    {
      if (v41 == 1)
      {
        v14 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v10, type);
        if (v14)
        {
          if (!v37)
          {
            goto LABEL_18;
          }

          *buf = 136446978;
          v44 = "nw_necp_append_tlv";
          v45 = 1024;
          *v46 = 13;
          *&v46[4] = 1024;
          *&v46[6] = v7;
          *v47 = 2082;
          *&v47[2] = v14;
          v16 = "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s";
          v17 = v10;
          v18 = v36;
          v19 = 34;
          goto LABEL_17;
        }

        if (!v37)
        {
          goto LABEL_88;
        }

        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 13;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, no backtrace";
        goto LABEL_86;
      }

      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 13;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded";
        goto LABEL_86;
      }
    }

LABEL_88:

    goto LABEL_19;
  }

LABEL_12:
  v13 = v5 + v7 + 5;
LABEL_30:
  *(*(*(a1 + 32) + 8) + 24) = v13;
}

void __nw_proxy_config_copy_agent_data_block_invoke_2_149(uint64_t a1, char *__s)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = strlen(__s);
  if (!v5)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start";
LABEL_75:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
        }

LABEL_76:

        goto LABEL_77;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v31 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v31)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null tlv_start, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

LABEL_77:
    if (!v22)
    {
      goto LABEL_29;
    }

    v20 = v22;
    goto LABEL_28;
  }

  if (!v4)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v33 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v33)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null beyond, dumping backtrace:%{public}s";
LABEL_51:
      _os_log_impl(&dword_181A37000, v23, v24, v32, buf, 0x16u);
LABEL_52:

      free(backtrace_string);
      goto LABEL_77;
    }

    goto LABEL_77;
  }

  v7 = (v6 + 1);
  if (v5 >= v4)
  {
    v27 = __nwlog_obj();
    *buf = 136447234;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v4;
    *&v47[8] = 1024;
    *v48 = 14;
    *&v48[4] = 1024;
    *&v48[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 14;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v41 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v28 = type;
      v34 = os_log_type_enabled(v10, type);
      if (v14)
      {
        if (!v34)
        {
          goto LABEL_18;
        }

        *buf = 136447490;
        v44 = "nw_necp_append_tlv";
        v45 = 2048;
        *v46 = v5;
        *&v46[8] = 2048;
        *v47 = v4;
        *&v47[8] = 1024;
        *v48 = 14;
        *&v48[4] = 1024;
        *&v48[6] = v7;
        *v49 = 2082;
        *&v49[2] = v14;
        v16 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s";
        v17 = v10;
        v18 = v28;
        v19 = 54;
LABEL_17:
        _os_log_impl(&dword_181A37000, v17, v18, v16, buf, v19);
LABEL_18:

        free(v14);
        goto LABEL_19;
      }

      if (!v34)
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 14;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 14;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    v38 = v10;
    v39 = v28;
    v40 = 44;
LABEL_87:
    _os_log_impl(&dword_181A37000, v38, v39, v29, buf, v40);
    goto LABEL_88;
  }

  if (v4 - v5 < v7 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136447490;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 14;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 14;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
      goto LABEL_25;
    }

    if (v41 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 14;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
      goto LABEL_25;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 14;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x36u);
LABEL_26:

      if (!v9)
      {
LABEL_29:
        v13 = 0;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    *buf = 136447746;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 14;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v50 = 2082;
    v51 = v14;
    v16 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s";
    v17 = v10;
    v18 = v11;
    v19 = 64;
    goto LABEL_17;
  }

  *v5 = 14;
  *(v5 + 1) = v7;
  if (v6 != -1)
  {
    if (__s)
    {
      memcpy((v5 + 5), __s, v7);
      goto LABEL_12;
    }

    v35 = __nwlog_obj();
    *buf = 136446722;
    v44 = "nw_necp_append_tlv";
    v45 = 1024;
    *v46 = 14;
    *&v46[4] = 1024;
    *&v46[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
LABEL_19:
      if (!v9)
      {
        goto LABEL_29;
      }

LABEL_27:
      v20 = v9;
LABEL_28:
      free(v20);
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 14;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL";
LABEL_86:
        v38 = v10;
        v39 = v36;
        v40 = 24;
        goto LABEL_87;
      }
    }

    else
    {
      if (v41 == 1)
      {
        v14 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v10, type);
        if (v14)
        {
          if (!v37)
          {
            goto LABEL_18;
          }

          *buf = 136446978;
          v44 = "nw_necp_append_tlv";
          v45 = 1024;
          *v46 = 14;
          *&v46[4] = 1024;
          *&v46[6] = v7;
          *v47 = 2082;
          *&v47[2] = v14;
          v16 = "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s";
          v17 = v10;
          v18 = v36;
          v19 = 34;
          goto LABEL_17;
        }

        if (!v37)
        {
          goto LABEL_88;
        }

        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 14;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, no backtrace";
        goto LABEL_86;
      }

      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 14;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded";
        goto LABEL_86;
      }
    }

LABEL_88:

    goto LABEL_19;
  }

LABEL_12:
  v13 = v5 + v7 + 5;
LABEL_30:
  *(*(*(a1 + 32) + 8) + 24) = v13;
}

void __nw_proxy_config_copy_agent_data_block_invoke_3_150(uint64_t a1, char *__s)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = strlen(__s);
  if (!v5)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start";
LABEL_75:
          _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
        }

LABEL_76:

        goto LABEL_77;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v31 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v31)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null tlv_start, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v31)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null tlv_start, dumping backtrace:%{public}s";
      goto LABEL_51;
    }

LABEL_77:
    if (!v22)
    {
      goto LABEL_29;
    }

    v20 = v22;
    goto LABEL_28;
  }

  if (!v4)
  {
    v26 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_necp_append_tlv";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v22, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (v41 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, backtrace limit exceeded";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v33 = os_log_type_enabled(v23, type);
      if (!backtrace_string)
      {
        if (v33)
        {
          *buf = 136446210;
          v44 = "nw_necp_append_tlv";
          v25 = "%{public}s called with null beyond, no backtrace";
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      if (!v33)
      {
        goto LABEL_52;
      }

      *buf = 136446466;
      v44 = "nw_necp_append_tlv";
      v45 = 2082;
      *v46 = backtrace_string;
      v32 = "%{public}s called with null beyond, dumping backtrace:%{public}s";
LABEL_51:
      _os_log_impl(&dword_181A37000, v23, v24, v32, buf, 0x16u);
LABEL_52:

      free(backtrace_string);
      goto LABEL_77;
    }

    goto LABEL_77;
  }

  v7 = (v6 + 1);
  if (v5 >= v4)
  {
    v27 = __nwlog_obj();
    *buf = 136447234;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v4;
    *&v47[8] = 1024;
    *v48 = 18;
    *&v48[4] = 1024;
    *&v48[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 18;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v41 == 1)
    {
      v14 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v28 = type;
      v34 = os_log_type_enabled(v10, type);
      if (v14)
      {
        if (!v34)
        {
          goto LABEL_18;
        }

        *buf = 136447490;
        v44 = "nw_necp_append_tlv";
        v45 = 2048;
        *v46 = v5;
        *&v46[8] = 2048;
        *v47 = v4;
        *&v47[8] = 1024;
        *v48 = 18;
        *&v48[4] = 1024;
        *&v48[6] = v7;
        *v49 = 2082;
        *&v49[2] = v14;
        v16 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s";
        v17 = v10;
        v18 = v28;
        v19 = 54;
LABEL_17:
        _os_log_impl(&dword_181A37000, v17, v18, v16, buf, v19);
LABEL_18:

        free(v14);
        goto LABEL_19;
      }

      if (!v34)
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 18;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v28 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_88;
      }

      *buf = 136447234;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v4;
      *&v47[8] = 1024;
      *v48 = 18;
      *&v48[4] = 1024;
      *&v48[6] = v7;
      v29 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    v38 = v10;
    v39 = v28;
    v40 = 44;
LABEL_87:
    _os_log_impl(&dword_181A37000, v38, v39, v29, buf, v40);
    goto LABEL_88;
  }

  if (v4 - v5 < v7 + 5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136447490;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 18;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 18;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
      goto LABEL_25;
    }

    if (v41 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 18;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
      goto LABEL_25;
    }

    v14 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!v14)
    {
      if (!v15)
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v44 = "nw_necp_append_tlv";
      v45 = 2048;
      *v46 = v5;
      *&v46[8] = 2048;
      *v47 = v7 + 5;
      *&v47[8] = 2048;
      *v48 = v4;
      *&v48[8] = 1024;
      *v49 = 18;
      *&v49[4] = 1024;
      *&v49[6] = v7;
      v12 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0x36u);
LABEL_26:

      if (!v9)
      {
LABEL_29:
        v13 = 0;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    *buf = 136447746;
    v44 = "nw_necp_append_tlv";
    v45 = 2048;
    *v46 = v5;
    *&v46[8] = 2048;
    *v47 = v7 + 5;
    *&v47[8] = 2048;
    *v48 = v4;
    *&v48[8] = 1024;
    *v49 = 18;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v50 = 2082;
    v51 = v14;
    v16 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s";
    v17 = v10;
    v18 = v11;
    v19 = 64;
    goto LABEL_17;
  }

  *v5 = 18;
  *(v5 + 1) = v7;
  if (v6 != -1)
  {
    if (__s)
    {
      memcpy((v5 + 5), __s, v7);
      goto LABEL_12;
    }

    v35 = __nwlog_obj();
    *buf = 136446722;
    v44 = "nw_necp_append_tlv";
    v45 = 1024;
    *v46 = 18;
    *&v46[4] = 1024;
    *&v46[6] = v7;
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v9, &type, &v41))
    {
LABEL_19:
      if (!v9)
      {
        goto LABEL_29;
      }

LABEL_27:
      v20 = v9;
LABEL_28:
      free(v20);
      goto LABEL_29;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 18;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL";
LABEL_86:
        v38 = v10;
        v39 = v36;
        v40 = 24;
        goto LABEL_87;
      }
    }

    else
    {
      if (v41 == 1)
      {
        v14 = __nw_create_backtrace_string();
        v10 = __nwlog_obj();
        v36 = type;
        v37 = os_log_type_enabled(v10, type);
        if (v14)
        {
          if (!v37)
          {
            goto LABEL_18;
          }

          *buf = 136446978;
          v44 = "nw_necp_append_tlv";
          v45 = 1024;
          *v46 = 18;
          *&v46[4] = 1024;
          *&v46[6] = v7;
          *v47 = 2082;
          *&v47[2] = v14;
          v16 = "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s";
          v17 = v10;
          v18 = v36;
          v19 = 34;
          goto LABEL_17;
        }

        if (!v37)
        {
          goto LABEL_88;
        }

        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 18;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, no backtrace";
        goto LABEL_86;
      }

      v10 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446722;
        v44 = "nw_necp_append_tlv";
        v45 = 1024;
        *v46 = 18;
        *&v46[4] = 1024;
        *&v46[6] = v7;
        v29 = "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded";
        goto LABEL_86;
      }
    }

LABEL_88:

    goto LABEL_19;
  }

LABEL_12:
  v13 = v5 + v7 + 5;
LABEL_30:
  *(*(*(a1 + 32) + 8) + 24) = v13;
}

void __nw_proxy_config_copy_agent_data_block_invoke_4_151(uint64_t a1, _OWORD *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (!v3)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_necp_append_tlv";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v6, &type, &v32))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null tlv_start";
      goto LABEL_73;
    }

    if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v18 = type;
      v23 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v23)
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        v35 = "nw_necp_append_tlv";
        v36 = 2082;
        *v37 = backtrace_string;
        v13 = "%{public}s called with null tlv_start, dumping backtrace:%{public}s";
        goto LABEL_48;
      }

      if (!v23)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null tlv_start, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null tlv_start, backtrace limit exceeded";
    }

LABEL_73:
    v29 = v7;
    v30 = v18;
    v31 = 12;
    goto LABEL_80;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_necp_append_tlv";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v6, &type, &v32))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null beyond";
      goto LABEL_73;
    }

    if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v18 = type;
      v24 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v24)
        {
          goto LABEL_16;
        }

        *buf = 136446466;
        v35 = "nw_necp_append_tlv";
        v36 = 2082;
        *v37 = backtrace_string;
        v13 = "%{public}s called with null beyond, dumping backtrace:%{public}s";
LABEL_48:
        v14 = v7;
        v15 = v18;
        v16 = 22;
LABEL_15:
        _os_log_impl(&dword_181A37000, v14, v15, v13, buf, v16);
LABEL_16:

        free(backtrace_string);
        goto LABEL_17;
      }

      if (!v24)
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null beyond, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v18 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v35 = "nw_necp_append_tlv";
      v19 = "%{public}s called with null beyond, backtrace limit exceeded";
    }

    goto LABEL_73;
  }

  if (v3 >= v4)
  {
    v21 = __nwlog_obj();
    *buf = 136447234;
    v35 = "nw_necp_append_tlv";
    v36 = 2048;
    *v37 = v3;
    *&v37[8] = 2048;
    *v38 = v4;
    *&v38[8] = 1024;
    *v39 = 17;
    *&v39[4] = 1024;
    *&v39[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v6, &type, &v32))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = v4;
      *&v38[8] = 1024;
      *v39 = 17;
      *&v39[4] = 1024;
      *&v39[6] = 16;
      v19 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v22 = type;
      v27 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (!v27)
        {
          goto LABEL_16;
        }

        *buf = 136447490;
        v35 = "nw_necp_append_tlv";
        v36 = 2048;
        *v37 = v3;
        *&v37[8] = 2048;
        *v38 = v4;
        *&v38[8] = 1024;
        *v39 = 17;
        *&v39[4] = 1024;
        *&v39[6] = 16;
        *v40 = 2082;
        *&v40[2] = backtrace_string;
        v13 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s";
        v14 = v7;
        v15 = v22;
        v16 = 54;
        goto LABEL_15;
      }

      if (!v27)
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = v4;
      *&v38[8] = 1024;
      *v39 = 17;
      *&v39[4] = 1024;
      *&v39[6] = 16;
      v19 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace";
    }

    else
    {
      v7 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_81;
      }

      *buf = 136447234;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = v4;
      *&v38[8] = 1024;
      *v39 = 17;
      *&v39[4] = 1024;
      *&v39[6] = 16;
      v19 = "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded";
    }

    v29 = v7;
    v30 = v22;
    v31 = 44;
LABEL_80:
    _os_log_impl(&dword_181A37000, v29, v30, v19, buf, v31);
    goto LABEL_81;
  }

  if (v4 - v3 <= 0x14)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    *buf = 136447490;
    v35 = "nw_necp_append_tlv";
    v36 = 2048;
    *v37 = v3;
    *&v37[8] = 2048;
    *v38 = 21;
    *&v38[8] = 2048;
    *v39 = v4;
    *&v39[8] = 1024;
    *v40 = 17;
    *&v40[4] = 1024;
    *&v40[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v6, &type, &v32))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = 21;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 17;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u";
      goto LABEL_25;
    }

    if (v32 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = 21;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 17;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded";
      goto LABEL_25;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
        goto LABEL_26;
      }

      *buf = 136447490;
      v35 = "nw_necp_append_tlv";
      v36 = 2048;
      *v37 = v3;
      *&v37[8] = 2048;
      *v38 = 21;
      *&v38[8] = 2048;
      *v39 = v4;
      *&v39[8] = 1024;
      *v40 = 17;
      *&v40[4] = 1024;
      *&v40[6] = 16;
      v9 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace";
LABEL_25:
      _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0x36u);
LABEL_26:

      if (!v6)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (!v12)
    {
      goto LABEL_16;
    }

    *buf = 136447746;
    v35 = "nw_necp_append_tlv";
    v36 = 2048;
    *v37 = v3;
    *&v37[8] = 2048;
    *v38 = 21;
    *&v38[8] = 2048;
    *v39 = v4;
    *&v39[8] = 1024;
    *v40 = 17;
    *&v40[4] = 1024;
    *&v40[6] = 16;
    v41 = 2082;
    v42 = backtrace_string;
    v13 = "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s";
    v14 = v7;
    v15 = v8;
    v16 = 64;
    goto LABEL_15;
  }

  *v3 = 17;
  *(v3 + 1) = 16;
  if (!a2)
  {
    v25 = __nwlog_obj();
    *buf = 136446722;
    v35 = "nw_necp_append_tlv";
    v36 = 1024;
    *v37 = 17;
    *&v37[4] = 1024;
    *&v37[6] = 16;
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v6, &type, &v32))
    {
      goto LABEL_17;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v35 = "nw_necp_append_tlv";
        v36 = 1024;
        *v37 = 17;
        *&v37[4] = 1024;
        *&v37[6] = 16;
        v19 = "%{public}s type=%u length=%u but value is NULL";
LABEL_79:
        v29 = v7;
        v30 = v26;
        v31 = 24;
        goto LABEL_80;
      }
    }

    else
    {
      if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v7 = __nwlog_obj();
        v26 = type;
        v28 = os_log_type_enabled(v7, type);
        if (backtrace_string)
        {
          if (!v28)
          {
            goto LABEL_16;
          }

          *buf = 136446978;
          v35 = "nw_necp_append_tlv";
          v36 = 1024;
          *v37 = 17;
          *&v37[4] = 1024;
          *&v37[6] = 16;
          *v38 = 2082;
          *&v38[2] = backtrace_string;
          v13 = "%{public}s type=%u length=%u but value is NULL, dumping backtrace:%{public}s";
          v14 = v7;
          v15 = v26;
          v16 = 34;
          goto LABEL_15;
        }

        if (!v28)
        {
          goto LABEL_81;
        }

        *buf = 136446722;
        v35 = "nw_necp_append_tlv";
        v36 = 1024;
        *v37 = 17;
        *&v37[4] = 1024;
        *&v37[6] = 16;
        v19 = "%{public}s type=%u length=%u but value is NULL, no backtrace";
        goto LABEL_79;
      }

      v7 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446722;
        v35 = "nw_necp_append_tlv";
        v36 = 1024;
        *v37 = 17;
        *&v37[4] = 1024;
        *&v37[6] = 16;
        v19 = "%{public}s type=%u length=%u but value is NULL, backtrace limit exceeded";
        goto LABEL_79;
      }
    }

LABEL_81:

LABEL_17:
    if (!v6)
    {
LABEL_19:
      v10 = 0;
      goto LABEL_20;
    }

LABEL_18:
    free(v6);
    goto LABEL_19;
  }

  *(v3 + 5) = *a2;
  v10 = v3 + 21;
LABEL_20:
  *(*(*(a1 + 32) + 8) + 24) = v10;
}

void ___ZL35nw_proxy_config_serialize_one_stackPU31objcproto20OS_nw_protocol_stack8NSObjectPhPKh_block_invoke(uint64_t a1, void *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = a2;
  __n = 0;
  v88 = v3;
  v4 = nw_protocol_options_copy_serialized_bytes(v3, &__n, 0);
  v5 = v4;
  v87 = v4;
  if (!v4 || !__n)
  {
    v23 = nw_protocol_options_copy_definition(v3);
    identifier = nw_protocol_definition_get_identifier(v23);
    *type = *identifier;
    v95 = *(identifier + 1);
    v96 = *(identifier + 4);
    v25 = *(*(*(a1 + 32) + 8) + 24);
    if (v25)
    {
      v26 = *(a1 + 40);
      if (v26)
      {
        if (v25 < v26)
        {
          if (v26 - v25 > 0x2E)
          {
            *v25 = 4;
            *(v25 + 1) = 42;
            *(v25 + 5) = *type;
            *(v25 + 21) = v95;
            *(v25 + 37) = v96;
            *(v25 + 45) = 0;
            v31 = v25 + 47;
            goto LABEL_53;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          *buf = 136447490;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v25;
          v101 = 2048;
          v102 = 47;
          v103 = 2048;
          *v104 = v26;
          *&v104[8] = 1024;
          *v105 = 4;
          *&v105[4] = 1024;
          *&v105[6] = 42;
          v28 = _os_log_send_and_compose_impl();

          v93 = OS_LOG_TYPE_ERROR;
          v92 = 0;
          if (__nwlog_fault(v28, &v93, &v92))
          {
            if (v93 == OS_LOG_TYPE_FAULT)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v29 = gLogObj;
              v30 = v93;
              if (os_log_type_enabled(v29, v93))
              {
                *buf = 136447490;
                v98 = "nw_necp_append_tlv";
                v99 = 2048;
                v100 = v25;
                v101 = 2048;
                v102 = 47;
                v103 = 2048;
                *v104 = v26;
                *&v104[8] = 1024;
                *v105 = 4;
                *&v105[4] = 1024;
                *&v105[6] = 42;
                _os_log_impl(&dword_181A37000, v29, v30, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
              }
            }

            else if (v92 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v29 = gLogObj;
              v34 = v93;
              v35 = os_log_type_enabled(v29, v93);
              if (backtrace_string)
              {
                if (v35)
                {
                  *buf = 136447746;
                  v98 = "nw_necp_append_tlv";
                  v99 = 2048;
                  v100 = v25;
                  v101 = 2048;
                  v102 = 47;
                  v103 = 2048;
                  *v104 = v26;
                  *&v104[8] = 1024;
                  *v105 = 4;
                  *&v105[4] = 1024;
                  *&v105[6] = 42;
                  v106 = 2082;
                  v107 = backtrace_string;
                  _os_log_impl(&dword_181A37000, v29, v34, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
                }

                free(backtrace_string);
                if (!v28)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }

              if (v35)
              {
                *buf = 136447490;
                v98 = "nw_necp_append_tlv";
                v99 = 2048;
                v100 = v25;
                v101 = 2048;
                v102 = 47;
                v103 = 2048;
                *v104 = v26;
                *&v104[8] = 1024;
                *v105 = 4;
                *&v105[4] = 1024;
                *&v105[6] = 42;
                _os_log_impl(&dword_181A37000, v29, v34, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
              }
            }

            else
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v29 = gLogObj;
              v39 = v93;
              if (os_log_type_enabled(v29, v93))
              {
                *buf = 136447490;
                v98 = "nw_necp_append_tlv";
                v99 = 2048;
                v100 = v25;
                v101 = 2048;
                v102 = 47;
                v103 = 2048;
                *v104 = v26;
                *&v104[8] = 1024;
                *v105 = 4;
                *&v105[4] = 1024;
                *&v105[6] = 42;
                _os_log_impl(&dword_181A37000, v29, v39, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
              }
            }

            goto LABEL_49;
          }

LABEL_50:
          if (!v28)
          {
LABEL_52:
            v31 = 0;
LABEL_53:
            *(*(*(a1 + 32) + 8) + 24) = v31;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v41 = gLogObj;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              v98 = "nw_proxy_config_serialize_one_stack_block_invoke";
              v99 = 2112;
              v100 = v23;
              _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s Serialized proxy protocol %@", buf, 0x16u);
            }

            if (!v87)
            {
              goto LABEL_68;
            }

            goto LABEL_67;
          }

LABEL_51:
          free(v28);
          goto LABEL_52;
        }

        v59 = __nwlog_obj();
        *buf = 136447234;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v25;
        v101 = 2048;
        v102 = v26;
        v103 = 1024;
        *v104 = 4;
        *&v104[4] = 1024;
        *&v104[6] = 42;
        v28 = _os_log_send_and_compose_impl();

        v93 = OS_LOG_TYPE_ERROR;
        v92 = 0;
        if (!__nwlog_fault(v28, &v93, &v92))
        {
          goto LABEL_50;
        }

        if (v93 == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v60 = v93;
          if (os_log_type_enabled(v29, v93))
          {
            *buf = 136447234;
            v98 = "nw_necp_append_tlv";
            v99 = 2048;
            v100 = v25;
            v101 = 2048;
            v102 = v26;
            v103 = 1024;
            *v104 = 4;
            *&v104[4] = 1024;
            *&v104[6] = 42;
            _os_log_impl(&dword_181A37000, v29, v60, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
          }
        }

        else if (v92 == 1)
        {
          v74 = __nw_create_backtrace_string();
          v29 = __nwlog_obj();
          v75 = v93;
          v76 = os_log_type_enabled(v29, v93);
          if (v74)
          {
            if (v76)
            {
              *buf = 136447490;
              v98 = "nw_necp_append_tlv";
              v99 = 2048;
              v100 = v25;
              v101 = 2048;
              v102 = v26;
              v103 = 1024;
              *v104 = 4;
              *&v104[4] = 1024;
              *&v104[6] = 42;
              *v105 = 2082;
              *&v105[2] = v74;
              _os_log_impl(&dword_181A37000, v29, v75, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
            }

            free(v74);
            goto LABEL_50;
          }

          if (v76)
          {
            *buf = 136447234;
            v98 = "nw_necp_append_tlv";
            v99 = 2048;
            v100 = v25;
            v101 = 2048;
            v102 = v26;
            v103 = 1024;
            *v104 = 4;
            *&v104[4] = 1024;
            *&v104[6] = 42;
            _os_log_impl(&dword_181A37000, v29, v75, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
          }
        }

        else
        {
          v29 = __nwlog_obj();
          v84 = v93;
          if (os_log_type_enabled(v29, v93))
          {
            *buf = 136447234;
            v98 = "nw_necp_append_tlv";
            v99 = 2048;
            v100 = v25;
            v101 = 2048;
            v102 = v26;
            v103 = 1024;
            *v104 = 4;
            *&v104[4] = 1024;
            *&v104[6] = 42;
            _os_log_impl(&dword_181A37000, v29, v84, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
          }
        }

LABEL_49:

        goto LABEL_50;
      }

      v55 = __nwlog_obj();
      *buf = 136446210;
      v98 = "nw_necp_append_tlv";
      v28 = _os_log_send_and_compose_impl();

      v93 = OS_LOG_TYPE_ERROR;
      v92 = 0;
      if (!__nwlog_fault(v28, &v93, &v92))
      {
        goto LABEL_50;
      }

      if (v93 == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v56 = v93;
        if (os_log_type_enabled(v29, v93))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v56, "%{public}s called with null beyond", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v92 != 1)
      {
        v29 = __nwlog_obj();
        v82 = v93;
        if (os_log_type_enabled(v29, v93))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v82, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      v63 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v69 = v93;
      v70 = os_log_type_enabled(v29, v93);
      if (!v63)
      {
        if (v70)
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v69, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v70)
      {
        *buf = 136446466;
        v98 = "nw_necp_append_tlv";
        v99 = 2082;
        v100 = v63;
        _os_log_impl(&dword_181A37000, v29, v69, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      *buf = 136446210;
      v98 = "nw_necp_append_tlv";
      v28 = _os_log_send_and_compose_impl();

      v93 = OS_LOG_TYPE_ERROR;
      v92 = 0;
      if (!__nwlog_fault(v28, &v93, &v92))
      {
        goto LABEL_50;
      }

      if (v93 == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v50 = v93;
        if (os_log_type_enabled(v29, v93))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v50, "%{public}s called with null tlv_start", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v92 != 1)
      {
        v29 = __nwlog_obj();
        v80 = v93;
        if (os_log_type_enabled(v29, v93))
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v80, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_49;
      }

      v63 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v64 = v93;
      v65 = os_log_type_enabled(v29, v93);
      if (!v63)
      {
        if (v65)
        {
          *buf = 136446210;
          v98 = "nw_necp_append_tlv";
          _os_log_impl(&dword_181A37000, v29, v64, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
        }

        goto LABEL_49;
      }

      if (v65)
      {
        *buf = 136446466;
        v98 = "nw_necp_append_tlv";
        v99 = 2082;
        v100 = v63;
        _os_log_impl(&dword_181A37000, v29, v64, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
      }
    }

    free(v63);
    goto LABEL_50;
  }

  v6 = __n + 42;
  if (__n == -42)
  {
    v46 = v4;
    v47 = __nwlog_obj();
    os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v98 = "nw_proxy_config_serialize_one_stack_block_invoke";
    v48 = _os_log_send_and_compose_impl();

    if (__nwlog_should_abort(v48))
    {
      goto LABEL_175;
    }

    free(v48);
    v5 = v46;
  }

  v7 = malloc_type_malloc(v6, 0xDB0741B9uLL);
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = v5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v98 = "nw_proxy_config_serialize_one_stack_block_invoke";
  v10 = _os_log_send_and_compose_impl();

  if (__nwlog_should_abort(v10))
  {
LABEL_175:
    __break(1u);
    return;
  }

  free(v10);
  v5 = v8;
LABEL_7:
  v11 = nw_protocol_options_copy_definition(v3);
  v12 = nw_protocol_definition_get_identifier(v11);
  v13 = *(v12 + 4);
  v14 = *(v12 + 1);
  *v7 = *v12;
  v7[1] = v14;
  *(v7 + 4) = v13;
  v15 = __n;
  *(v7 + 20) = __n;
  memcpy(v7 + 42, v5, v15);
  v16 = *(*(*(a1 + 32) + 8) + 24);
  v86 = v11;
  if (!v16)
  {
    v51 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_necp_append_tlv";
    v52 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v93 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, type, &v93))
    {
      goto LABEL_167;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = type[0];
      if (os_log_type_enabled(v53, type[0]))
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v54, "%{public}s called with null tlv_start", buf, 0xCu);
      }
    }

    else if (v93 == OS_LOG_TYPE_INFO)
    {
      v66 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v67 = type[0];
      v68 = os_log_type_enabled(v53, type[0]);
      if (v66)
      {
        if (v68)
        {
          *buf = 136446466;
          v98 = "nw_necp_append_tlv";
          v99 = 2082;
          v100 = v66;
          _os_log_impl(&dword_181A37000, v53, v67, "%{public}s called with null tlv_start, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v66);
LABEL_167:
        if (!v52)
        {
          goto LABEL_63;
        }

        goto LABEL_168;
      }

      if (v68)
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v67, "%{public}s called with null tlv_start, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v53 = __nwlog_obj();
      v81 = type[0];
      if (os_log_type_enabled(v53, type[0]))
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v81, "%{public}s called with null tlv_start, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_166:

    goto LABEL_167;
  }

  v17 = *(a1 + 40);
  if (!v17)
  {
    v57 = __nwlog_obj();
    *buf = 136446210;
    v98 = "nw_necp_append_tlv";
    v52 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v93 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, type, &v93))
    {
      goto LABEL_167;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v58 = type[0];
      if (os_log_type_enabled(v53, type[0]))
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v58, "%{public}s called with null beyond", buf, 0xCu);
      }
    }

    else if (v93 == OS_LOG_TYPE_INFO)
    {
      v71 = __nw_create_backtrace_string();
      v53 = __nwlog_obj();
      v72 = type[0];
      v73 = os_log_type_enabled(v53, type[0]);
      if (v71)
      {
        if (v73)
        {
          *buf = 136446466;
          v98 = "nw_necp_append_tlv";
          v99 = 2082;
          v100 = v71;
          _os_log_impl(&dword_181A37000, v53, v72, "%{public}s called with null beyond, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v71);
        if (!v52)
        {
          goto LABEL_63;
        }

LABEL_168:
        v42 = v52;
        goto LABEL_62;
      }

      if (v73)
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v72, "%{public}s called with null beyond, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v53 = __nwlog_obj();
      v83 = type[0];
      if (os_log_type_enabled(v53, type[0]))
      {
        *buf = 136446210;
        v98 = "nw_necp_append_tlv";
        _os_log_impl(&dword_181A37000, v53, v83, "%{public}s called with null beyond, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_166;
  }

  if (v16 >= v17)
  {
    v61 = __nwlog_obj();
    *buf = 136447234;
    v98 = "nw_necp_append_tlv";
    v99 = 2048;
    v100 = v16;
    v101 = 2048;
    v102 = v17;
    v103 = 1024;
    *v104 = 4;
    *&v104[4] = 1024;
    *&v104[6] = v6;
    v20 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v93 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v20, type, &v93))
    {
      goto LABEL_60;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v62 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136447234;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v17;
        v103 = 1024;
        *v104 = 4;
        *&v104[4] = 1024;
        *&v104[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v62, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u", buf, 0x2Cu);
      }
    }

    else if (v93 == OS_LOG_TYPE_INFO)
    {
      v77 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v78 = type[0];
      v79 = os_log_type_enabled(v21, type[0]);
      if (v77)
      {
        if (v79)
        {
          *buf = 136447490;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v16;
          v101 = 2048;
          v102 = v17;
          v103 = 1024;
          *v104 = 4;
          *&v104[4] = 1024;
          *&v104[6] = v6;
          *v105 = 2082;
          *&v105[2] = v77;
          _os_log_impl(&dword_181A37000, v21, v78, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x36u);
        }

        free(v77);
        goto LABEL_60;
      }

      if (v79)
      {
        *buf = 136447234;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v17;
        v103 = 1024;
        *v104 = 4;
        *&v104[4] = 1024;
        *&v104[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v78, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, no backtrace", buf, 0x2Cu);
      }
    }

    else
    {
      v21 = __nwlog_obj();
      v85 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136447234;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v17;
        v103 = 1024;
        *v104 = 4;
        *&v104[4] = 1024;
        *&v104[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v85, "%{public}s Invalid tlv_start %p >= beyond %p type=%u length=%u, backtrace limit exceeded", buf, 0x2Cu);
      }
    }

LABEL_59:

    goto LABEL_60;
  }

  v18 = v6 + 5;
  if (v17 - v16 >= v18)
  {
    *v16 = 4;
    *(v16 + 1) = v6;
    if (v6)
    {
      memcpy(v16 + 5, v7, v6);
    }

    v32 = &v16[v18];
    goto LABEL_64;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136447490;
  v98 = "nw_necp_append_tlv";
  v99 = 2048;
  v100 = v16;
  v101 = 2048;
  v102 = v6 + 5;
  v103 = 2048;
  *v104 = v17;
  *&v104[8] = 1024;
  *v105 = 4;
  *&v105[4] = 1024;
  *&v105[6] = v6;
  v20 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v93 = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v20, type, &v93))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v22 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136447490;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v6 + 5;
        v103 = 2048;
        *v104 = v17;
        *&v104[8] = 1024;
        *v105 = 4;
        *&v105[4] = 1024;
        *&v105[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v22, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u", buf, 0x36u);
      }
    }

    else if (v93 == OS_LOG_TYPE_INFO)
    {
      v36 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v37 = type[0];
      v38 = os_log_type_enabled(v21, type[0]);
      if (v36)
      {
        if (v38)
        {
          *buf = 136447746;
          v98 = "nw_necp_append_tlv";
          v99 = 2048;
          v100 = v16;
          v101 = 2048;
          v102 = v6 + 5;
          v103 = 2048;
          *v104 = v17;
          *&v104[8] = 1024;
          *v105 = 4;
          *&v105[4] = 1024;
          *&v105[6] = v6;
          v106 = 2082;
          v107 = v36;
          _os_log_impl(&dword_181A37000, v21, v37, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, dumping backtrace:%{public}s", buf, 0x40u);
        }

        free(v36);
        if (!v20)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      if (v38)
      {
        *buf = 136447490;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v6 + 5;
        v103 = 2048;
        *v104 = v17;
        *&v104[8] = 1024;
        *v105 = 4;
        *&v105[4] = 1024;
        *&v105[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v37, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, no backtrace", buf, 0x36u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      v40 = type[0];
      if (os_log_type_enabled(v21, type[0]))
      {
        *buf = 136447490;
        v98 = "nw_necp_append_tlv";
        v99 = 2048;
        v100 = v16;
        v101 = 2048;
        v102 = v6 + 5;
        v103 = 2048;
        *v104 = v17;
        *&v104[8] = 1024;
        *v105 = 4;
        *&v105[4] = 1024;
        *&v105[6] = v6;
        _os_log_impl(&dword_181A37000, v21, v40, "%{public}s buffer too short tlv_start=%p full_tlv_len=%zu beyond=%p type=%u length=%u, backtrace limit exceeded", buf, 0x36u);
      }
    }

    goto LABEL_59;
  }

LABEL_60:
  if (v20)
  {
LABEL_61:
    v42 = v20;
LABEL_62:
    free(v42);
  }

LABEL_63:
  v32 = 0;
  v11 = v86;
LABEL_64:
  *(*(*(a1 + 32) + 8) + 24) = v32;
  free(v7);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v43 = gLogObj;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    v98 = "nw_proxy_config_serialize_one_stack_block_invoke";
    v99 = 2112;
    v100 = v11;
    _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s Serialized proxy protocol %@", buf, 0x16u);
  }

LABEL_67:
  free(v87);
LABEL_68:
  v44 = nw_protocol_options_copy_proxy_endpoint(v88);
  if (v44)
  {
    if (nw_protocol_options_proxy_endpoint_should_override_stack(v88))
    {
      v45 = 7;
    }

    else
    {
      v45 = 6;
    }

    *(*(*(a1 + 32) + 8) + 24) = nw_path_evaluator_add_endpoint_to_necp_message(v44, v45, *(*(*(a1 + 32) + 8) + 24), *(a1 + 40), 0);
  }

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = ___ZL35nw_proxy_config_serialize_one_stackPU31objcproto20OS_nw_protocol_stack8NSObjectPhPKh_block_invoke_289;
  v89[3] = &unk_1E6A3B848;
  v90 = *(a1 + 32);
  nw_protocol_options_enumerate_proxy_next_hops(v88, v89);
}

void ___ZL35nw_proxy_config_serialize_one_stackPU31objcproto20OS_nw_protocol_stack8NSObjectPhPKh_block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = nw_path_evaluator_add_endpoint_to_necp_message(v3, 12, *(*(*(a1 + 32) + 8) + 24), *(a1 + 40), 0);
}

void nw_proxy_config_set_identifier(void *a1, _OWORD *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    *(v3 + 56) = *a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_identifier";
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
        v15 = "nw_proxy_config_set_identifier";
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
          v15 = "nw_proxy_config_set_identifier";
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
        v15 = "nw_proxy_config_set_identifier";
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
        v15 = "nw_proxy_config_set_identifier";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

void nw_proxy_config_set_is_companion_proxy(void *a1, int a2)
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

    v3[172] = v3[172] & 0xFD | v4;
    goto LABEL_6;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_proxy_config_set_is_companion_proxy";
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
        v16 = "nw_proxy_config_set_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null config", buf, 0xCu);
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
          v16 = "nw_proxy_config_set_is_companion_proxy";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_proxy_config_set_is_companion_proxy";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
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

uint64_t nw_proxy_config_publish(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v25 = "nw_proxy_config_publish";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (__nwlog_fault(v14, &type, &v22))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_publish";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v18 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v25 = "nw_proxy_config_publish";
            v26 = 2082;
            v27 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (v19)
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_publish";
          _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v25 = "nw_proxy_config_publish";
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_24:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_26;
  }

  v3 = v1[12];
  if (!v3)
  {
    if (nw_context_copy_implicit_context::onceToken[0] != -1)
    {
      dispatch_once(nw_context_copy_implicit_context::onceToken, &__block_literal_global_18);
    }

    v6 = nw_context_copy_implicit_context::implicit_context;
    v7 = nw_context_copy_workloop(v6);
    v8 = nw_agent_create("Network", "Proxy", "Proxy", v7);
    v9 = *(v2 + 96);
    *(v2 + 96) = v8;

    v10 = *(v2 + 96);
    if (v10)
    {
      nw_agent_set_uuid(v10, (v2 + 56));
      nw_agent_set_error_handler(*(v2 + 96), &__block_literal_global_42663);
      nw_agent_set_assert_handlers(*(v2 + 96), &__block_literal_global_159, &__block_literal_global_162);
      v11 = *(v2 + 96);
      v12 = nw_proxy_config_copy_agent_data(v2);
      v5 = 1;
      nw_agent_change_state(v11, 1, 0, v12);

      goto LABEL_27;
    }

LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  v4 = nw_proxy_config_copy_agent_data(v1);
  v5 = 1;
  nw_agent_change_state(v3, 1, 0, v4);

LABEL_27:
  return v5;
}

void __nw_proxy_config_publish_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "nw_proxy_config_publish_block_invoke";
    v7 = 1024;
    v8 = a3;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Proxy config received error %d", &v5, 0x12u);
  }
}

void nw_proxy_config_unpublish(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_agent_change_state(*(v1 + 12), 0, 0, 0);
    v3 = v2[12];
    v2[12] = 0;

    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_unpublish";
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
        v15 = "nw_proxy_config_unpublish";
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
          v15 = "nw_proxy_config_unpublish";
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
        v15 = "nw_proxy_config_unpublish";
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
        v15 = "nw_proxy_config_unpublish";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

LABEL_3:
}

uint64_t nw_proxy_config_get_epoch(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[84];
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_epoch";
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
        v15 = "nw_proxy_config_get_epoch";
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
          v15 = "nw_proxy_config_get_epoch";
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
        v15 = "nw_proxy_config_get_epoch";
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
        v15 = "nw_proxy_config_get_epoch";
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

void nw_proxy_config_set_epoch(void *a1, __int16 a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[84] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_set_epoch";
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
        v15 = "nw_proxy_config_set_epoch";
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
          v15 = "nw_proxy_config_set_epoch";
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
        v15 = "nw_proxy_config_set_epoch";
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
        v15 = "nw_proxy_config_set_epoch";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  v3 = 0;
LABEL_3:
}

nw_relay_hop_t nw_relay_hop_create(nw_endpoint_t http3_relay_endpoint, nw_endpoint_t http2_relay_endpoint, nw_protocol_options_t relay_tls_options)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = http3_relay_endpoint;
  v6 = http2_relay_endpoint;
  v7 = relay_tls_options;
  if (v5 | v6)
  {
    if (v5)
    {
      masque = nw_proxy_hop_create_masque(v5);
      nw_proxy_hop_set_masque_version(masque, 2);
      if (!v6)
      {
        goto LABEL_10;
      }

      masque = masque;
      v9 = v6;
      if (masque)
      {
        objc_storeStrong(&masque->fallback_endpoint, http2_relay_endpoint);
LABEL_6:

LABEL_9:
LABEL_10:
        v12 = masque;
        v13 = v7;
        if (v12)
        {
          objc_storeStrong(&v12[6].isa, relay_tls_options);
LABEL_12:

          goto LABEL_13;
        }

        v19 = __nwlog_obj();
        *buf = 136446210;
        v50 = "nw_proxy_hop_set_tls_options";
        v20 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v47 = 0;
        if (__nwlog_fault(v20, &type, &v47))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v21 = __nwlog_obj();
            v22 = type;
            if (os_log_type_enabled(v21, type))
            {
              *buf = 136446210;
              v50 = "nw_proxy_hop_set_tls_options";
              _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null hop", buf, 0xCu);
            }
          }

          else if (v47 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            v21 = __nwlog_obj();
            v27 = type;
            v28 = os_log_type_enabled(v21, type);
            if (backtrace_string)
            {
              if (v28)
              {
                *buf = 136446466;
                v50 = "nw_proxy_hop_set_tls_options";
                v51 = 2082;
                v52 = backtrace_string;
                _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null hop, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(backtrace_string);
              goto LABEL_75;
            }

            if (v28)
            {
              *buf = 136446210;
              v50 = "nw_proxy_hop_set_tls_options";
              _os_log_impl(&dword_181A37000, v21, v27, "%{public}s called with null hop, no backtrace", buf, 0xCu);
            }
          }

          else
          {
            v21 = __nwlog_obj();
            v38 = type;
            if (os_log_type_enabled(v21, type))
            {
              *buf = 136446210;
              v50 = "nw_proxy_hop_set_tls_options";
              _os_log_impl(&dword_181A37000, v21, v38, "%{public}s called with null hop, backtrace limit exceeded", buf, 0xCu);
            }
          }
        }

LABEL_75:
        if (v20)
        {
          free(v20);
        }

        goto LABEL_12;
      }

      v29 = __nwlog_obj();
      *buf = 136446210;
      v50 = "nw_proxy_hop_set_fallback_endpoint";
      v30 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v47 = 0;
      if (__nwlog_fault(v30, &type, &v47))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v31 = __nwlog_obj();
          v32 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v50 = "nw_proxy_hop_set_fallback_endpoint";
            _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null hop", buf, 0xCu);
          }
        }

        else if (v47 == 1)
        {
          v39 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v40 = type;
          v41 = os_log_type_enabled(v31, type);
          if (v39)
          {
            if (v41)
            {
              *buf = 136446466;
              v50 = "nw_proxy_hop_set_fallback_endpoint";
              v51 = 2082;
              v52 = v39;
              _os_log_impl(&dword_181A37000, v31, v40, "%{public}s called with null hop, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v39);
            goto LABEL_80;
          }

          if (v41)
          {
            *buf = 136446210;
            v50 = "nw_proxy_hop_set_fallback_endpoint";
            _os_log_impl(&dword_181A37000, v31, v40, "%{public}s called with null hop, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          v31 = __nwlog_obj();
          v45 = type;
          if (os_log_type_enabled(v31, type))
          {
            *buf = 136446210;
            v50 = "nw_proxy_hop_set_fallback_endpoint";
            _os_log_impl(&dword_181A37000, v31, v45, "%{public}s called with null hop, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

LABEL_80:
      if (v30)
      {
        free(v30);
      }

      goto LABEL_6;
    }

    v10 = nw_proxy_hop_create_masque(v6);
    nw_proxy_hop_set_masque_version(v10, 2);
    v11 = v10;
    masque = v11;
    if (v11)
    {
      *(v11 + 84) |= 0x20u;
      goto LABEL_9;
    }

    v33 = __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_proxy_hop_set_fallback_only";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v34, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v50 = "nw_proxy_hop_set_fallback_only";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null hop", buf, 0xCu);
        }
      }

      else if (v47 == 1)
      {
        v42 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v43 = type;
        v44 = os_log_type_enabled(v35, type);
        if (v42)
        {
          if (v44)
          {
            *buf = 136446466;
            v50 = "nw_proxy_hop_set_fallback_only";
            v51 = 2082;
            v52 = v42;
            _os_log_impl(&dword_181A37000, v35, v43, "%{public}s called with null hop, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v42);
          goto LABEL_85;
        }

        if (v44)
        {
          *buf = 136446210;
          v50 = "nw_proxy_hop_set_fallback_only";
          _os_log_impl(&dword_181A37000, v35, v43, "%{public}s called with null hop, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v35 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v50 = "nw_proxy_hop_set_fallback_only";
          _os_log_impl(&dword_181A37000, v35, v46, "%{public}s called with null hop, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_85:
    if (v34)
    {
      free(v34);
    }

    goto LABEL_9;
  }

  v15 = __nwlog_obj();
  *buf = 136446210;
  v50 = "nw_relay_hop_create";
  v16 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v47 = 0;
  if (__nwlog_fault(v16, &type, &v47))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v50 = "nw_relay_hop_create";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null (http3_relay_endpoint || http2_relay_endpoint)", buf, 0xCu);
      }
    }

    else if (v47 == 1)
    {
      v23 = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v24 = type;
      v25 = os_log_type_enabled(v17, type);
      if (v23)
      {
        if (v25)
        {
          *buf = 136446466;
          v50 = "nw_relay_hop_create";
          v51 = 2082;
          v52 = v23;
          _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null (http3_relay_endpoint || http2_relay_endpoint), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v23);
        goto LABEL_66;
      }

      if (v25)
      {
        *buf = 136446210;
        v50 = "nw_relay_hop_create";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s called with null (http3_relay_endpoint || http2_relay_endpoint), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v50 = "nw_relay_hop_create";
        _os_log_impl(&dword_181A37000, v17, v37, "%{public}s called with null (http3_relay_endpoint || http2_relay_endpoint), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_66:
  if (v16)
  {
    free(v16);
  }

  v12 = 0;
LABEL_13:

  return v12;
}

void nw_relay_hop_add_additional_http_header_field(nw_relay_hop_t relay_hop, const char *field_name, const char *field_value)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = relay_hop;
  v6 = v5;
  if (v5)
  {
    nw_proxy_hop_add_extra_header(v5, field_name, field_value);
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_relay_hop_add_additional_http_header_field";
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
        v18 = "nw_relay_hop_add_additional_http_header_field";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null proxy_hop", buf, 0xCu);
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
          v18 = "nw_relay_hop_add_additional_http_header_field";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null proxy_hop, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_relay_hop_add_additional_http_header_field";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null proxy_hop, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_relay_hop_add_additional_http_header_field";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null proxy_hop, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

nw_proxy_config_t nw_proxy_config_create_relay(nw_relay_hop_t first_hop, nw_relay_hop_t second_hop)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = first_hop;
  v4 = second_hop;
  if (v3)
  {
    v5 = v3;
    v6 = BYTE4(v5[10].isa);

    if ((v6 & 0x20) == 0)
    {
      v7 = _nw_array_create();
      v8 = v7;
      if (v7)
      {
        _nw_array_append(v7, v5);
      }

      if (!v4)
      {
LABEL_9:
        v11 = v8;
        v12 = networkd_settings_get_BOOL(nw_setting_disable_swift_tls_privacy_proxy);
        privacy_proxy_internal = nw_proxy_config_create_privacy_proxy_internal(v11, !v12);

        nw_proxy_config_set_is_privacy_proxy(privacy_proxy_internal, 0, 0);
        *(privacy_proxy_internal + 170) |= 0xCu;
        *(privacy_proxy_internal + 171) |= 0x80u;
        v14 = v5;
        v15 = v14[4];

        if (v15)
        {
          if (v4)
          {
            v16 = v4;
            v17 = v16[4];

            if (!v17)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }

          fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy(v11);
          nw_proxy_config_set_is_privacy_proxy(fallback_privacy_proxy, 0, 0);
          *(fallback_privacy_proxy + 170) |= 0xCu;
          *(fallback_privacy_proxy + 171) |= 0x80u;
          privacy_proxy_internal = privacy_proxy_internal;
          v25 = fallback_privacy_proxy;
          objc_storeStrong(&privacy_proxy_internal->fallback_config, fallback_privacy_proxy);
        }

LABEL_26:

        goto LABEL_27;
      }

      v9 = v4;
      v10 = BYTE4(v9[10].isa);

      if ((v10 & 0x20) == 0)
      {
        if (v8)
        {
          _nw_array_append(v8, v9);
        }

        goto LABEL_9;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v23 = gLogObj;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v38 = "nw_proxy_config_create_relay";
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Second hop proxy does not support HTTP/3", buf, 0xCu);
      }

LABEL_23:

      privacy_proxy_internal = 0;
      goto LABEL_26;
    }

    v18 = _nw_array_create();
    v8 = v18;
    if (v18)
    {
      _nw_array_append(v18, v5);
    }

    if (v4)
    {
      v19 = v4;
      v20 = BYTE4(v19[10].isa);

      if ((v20 & 0x20) == 0)
      {
        v21 = v19;
        v22 = v21[4];

        if (!v22)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v38 = "nw_proxy_config_create_relay";
            _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_ERROR, "%{public}s Second hop proxy does not support HTTP/2 fallback", buf, 0xCu);
          }

          goto LABEL_23;
        }
      }

      if (v8)
      {
        _nw_array_append(v8, v19);
      }
    }

    privacy_proxy_internal = nw_proxy_config_create_fallback_privacy_proxy(v8);
    nw_proxy_config_set_is_privacy_proxy(privacy_proxy_internal, 0, 0);
    *(privacy_proxy_internal + 170) |= 0xCu;
    *(privacy_proxy_internal + 171) |= 0x80u;
    goto LABEL_26;
  }

  v27 = __nwlog_obj();
  *buf = 136446210;
  v38 = "nw_proxy_config_create_relay";
  v28 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v35 = 0;
  if (__nwlog_fault(v28, &type, &v35))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v38 = "nw_proxy_config_create_relay";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null first_hop", buf, 0xCu);
      }
    }

    else if (v35 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v32 = type;
      v33 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v33)
        {
          *buf = 136446466;
          v38 = "nw_proxy_config_create_relay";
          v39 = 2082;
          v40 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null first_hop, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_47;
      }

      if (v33)
      {
        *buf = 136446210;
        v38 = "nw_proxy_config_create_relay";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null first_hop, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v38 = "nw_proxy_config_create_relay";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null first_hop, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v28)
  {
    free(v28);
  }

  privacy_proxy_internal = 0;
LABEL_27:

  return &privacy_proxy_internal->super;
}

nw_proxy_config_t nw_proxy_config_create_oblivious_http(nw_relay_hop_t relay, const char *relay_resource_path, const uint8_t *gateway_key_config, size_t gateway_key_config_length)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = relay;
  if (!v7)
  {
    v23 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_proxy_config_create_oblivious_http";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v24, &type, &v55))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null relay", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v55 != 1)
    {
      v25 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v50, "%{public}s called with null relay, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v38 = type;
    v39 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null relay, no backtrace", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v39)
    {
      *buf = 136446466;
      v58 = "nw_proxy_config_create_oblivious_http";
      v59 = 2082;
      v60 = backtrace_string;
      _os_log_impl(&dword_181A37000, v25, v38, "%{public}s called with null relay, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_56;
  }

  if (!relay_resource_path)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_proxy_config_create_oblivious_http";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v24, &type, &v55))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v28 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v28, "%{public}s called with null relay_resource_path", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v55 != 1)
    {
      v25 = __nwlog_obj();
      v51 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v51, "%{public}s called with null relay_resource_path, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v40 = type;
    v41 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v41)
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v40, "%{public}s called with null relay_resource_path, no backtrace", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v41)
    {
      *buf = 136446466;
      v58 = "nw_proxy_config_create_oblivious_http";
      v59 = 2082;
      v60 = backtrace_string;
      _os_log_impl(&dword_181A37000, v25, v40, "%{public}s called with null relay_resource_path, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_56;
  }

  if (!gateway_key_config)
  {
    v29 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_proxy_config_create_oblivious_http";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v24, &type, &v55))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v30, "%{public}s called with null gateway_key_config", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v55 != 1)
    {
      v25 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v52, "%{public}s called with null gateway_key_config, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_94;
    }

    backtrace_string = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v42 = type;
    v43 = os_log_type_enabled(v25, type);
    if (!backtrace_string)
    {
      if (v43)
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v42, "%{public}s called with null gateway_key_config, no backtrace", buf, 0xCu);
      }

      goto LABEL_94;
    }

    if (v43)
    {
      *buf = 136446466;
      v58 = "nw_proxy_config_create_oblivious_http";
      v59 = 2082;
      v60 = backtrace_string;
      _os_log_impl(&dword_181A37000, v25, v42, "%{public}s called with null gateway_key_config, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_56:

    free(backtrace_string);
    if (!v24)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  if (!gateway_key_config_length)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_proxy_config_create_oblivious_http";
    v24 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v24, &type, &v55))
    {
      goto LABEL_95;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v32, "%{public}s called with null gateway_key_config_length", buf, 0xCu);
      }
    }

    else if (v55 == 1)
    {
      v44 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v45 = type;
      v46 = os_log_type_enabled(v25, type);
      if (v44)
      {
        if (v46)
        {
          *buf = 136446466;
          v58 = "nw_proxy_config_create_oblivious_http";
          v59 = 2082;
          v60 = v44;
          _os_log_impl(&dword_181A37000, v25, v45, "%{public}s called with null gateway_key_config_length, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v44);
LABEL_95:
        if (!v24)
        {
LABEL_97:
          fallback_privacy_proxy = 0;
          goto LABEL_16;
        }

LABEL_96:
        free(v24);
        goto LABEL_97;
      }

      if (v46)
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v45, "%{public}s called with null gateway_key_config_length, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v25 = __nwlog_obj();
      v53 = type;
      if (os_log_type_enabled(v25, type))
      {
        *buf = 136446210;
        v58 = "nw_proxy_config_create_oblivious_http";
        _os_log_impl(&dword_181A37000, v25, v53, "%{public}s called with null gateway_key_config_length, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_94:

    goto LABEL_95;
  }

  oblivious_http = nw_proxy_hop_create_oblivious_http(gateway_key_config, gateway_key_config_length, relay_resource_path);
  if (!oblivious_http)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nw_proxy_config_create_oblivious_http";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v34, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v35 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v58 = "nw_proxy_config_create_oblivious_http";
          _os_log_impl(&dword_181A37000, v35, v36, "%{public}s called with null oblivious_hop", buf, 0xCu);
        }
      }

      else if (v55 == 1)
      {
        v47 = __nw_create_backtrace_string();
        v35 = __nwlog_obj();
        v48 = type;
        v49 = os_log_type_enabled(v35, type);
        if (v47)
        {
          if (v49)
          {
            *buf = 136446466;
            v58 = "nw_proxy_config_create_oblivious_http";
            v59 = 2082;
            v60 = v47;
            _os_log_impl(&dword_181A37000, v35, v48, "%{public}s called with null oblivious_hop, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v47);
          goto LABEL_101;
        }

        if (v49)
        {
          *buf = 136446210;
          v58 = "nw_proxy_config_create_oblivious_http";
          _os_log_impl(&dword_181A37000, v35, v48, "%{public}s called with null oblivious_hop, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v35 = __nwlog_obj();
        v54 = type;
        if (os_log_type_enabled(v35, type))
        {
          *buf = 136446210;
          v58 = "nw_proxy_config_create_oblivious_http";
          _os_log_impl(&dword_181A37000, v35, v54, "%{public}s called with null oblivious_hop, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_101:
    if (v34)
    {
      free(v34);
    }

    fallback_privacy_proxy = 0;
    goto LABEL_15;
  }

  v9 = v7;
  v10 = BYTE4(v9[10].isa);

  if ((v10 & 0x20) != 0)
  {
    v21 = _nw_array_create();
    v13 = v21;
    if (v21)
    {
      _nw_array_append(v21, v9);
      _nw_array_append(v13, oblivious_http);
    }

    fallback_privacy_proxy = nw_proxy_config_create_fallback_privacy_proxy(v13);
    nw_proxy_config_set_is_privacy_proxy(fallback_privacy_proxy, 0, 0);
    *(fallback_privacy_proxy + 170) |= 0xCu;
    *(fallback_privacy_proxy + 171) |= 0x80u;
    *(fallback_privacy_proxy + 172) |= 1u;
  }

  else
  {
    v11 = _nw_array_create();
    v12 = v11;
    if (v11)
    {
      _nw_array_append(v11, v9);
      _nw_array_append(v12, oblivious_http);
    }

    v13 = v12;
    v14 = networkd_settings_get_BOOL(nw_setting_disable_swift_tls_privacy_proxy);
    fallback_privacy_proxy = nw_proxy_config_create_privacy_proxy_internal(v13, !v14);

    nw_proxy_config_set_is_privacy_proxy(fallback_privacy_proxy, 0, 0);
    *(fallback_privacy_proxy + 170) |= 0xCu;
    *(fallback_privacy_proxy + 171) |= 0x80u;
    *(fallback_privacy_proxy + 172) |= 1u;
    v16 = v9;
    v17 = v16[4];

    if (v17)
    {
      v18 = nw_proxy_config_create_fallback_privacy_proxy(v13);
      nw_proxy_config_set_is_privacy_proxy(v18, 0, 0);
      *(v18 + 170) |= 0xCu;
      *(v18 + 171) |= 0x80u;
      *(v18 + 172) |= 1u;
      v19 = fallback_privacy_proxy;
      v20 = v18;
      objc_storeStrong(v19 + 11, v18);
    }
  }

LABEL_15:
LABEL_16:

  return &fallback_privacy_proxy->super;
}

nw_proxy_config_t nw_proxy_config_create_socksv5(nw_endpoint_t proxy_endpoint)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = proxy_endpoint;
  if (v1)
  {
    if (nw_protocol_socksv5_copy_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_socksv5_copy_definition::onceToken, &__block_literal_global_89224);
    }

    if (nw_protocol_socksv5_copy_definition::definition)
    {
      v2 = os_retain(nw_protocol_socksv5_copy_definition::definition);
    }

    else
    {
      v2 = 0;
    }

    options = nw_framer_create_options(v2);
    v4 = nw_proxy_config_create(v1, options);

    if (v4)
    {
      v4->type = 3002;
      *(v4 + 170) |= 8u;
      v5 = v4;
LABEL_9:

      goto LABEL_10;
    }

    v11 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_proxy_config_create_socksv5";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (__nwlog_fault(v12, &type, &v23))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v26 = "nw_proxy_config_create_socksv5";
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v23 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v19 = type;
        v20 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v26 = "nw_proxy_config_create_socksv5";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_46;
        }

        if (v20)
        {
          *buf = 136446210;
          v26 = "nw_proxy_config_create_socksv5";
          _os_log_impl(&dword_181A37000, v13, v19, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v13 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v13, type))
        {
          *buf = 136446210;
          v26 = "nw_proxy_config_create_socksv5";
          _os_log_impl(&dword_181A37000, v13, v22, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_46:
    if (v12)
    {
      free(v12);
    }

    goto LABEL_9;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_proxy_config_create_socksv5";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v8, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_create_socksv5";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null proxy_endpoint", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      v15 = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v16 = type;
      v17 = os_log_type_enabled(v9, type);
      if (v15)
      {
        if (v17)
        {
          *buf = 136446466;
          v26 = "nw_proxy_config_create_socksv5";
          v27 = 2082;
          v28 = v15;
          _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null proxy_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v15);
        goto LABEL_40;
      }

      if (v17)
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_create_socksv5";
        _os_log_impl(&dword_181A37000, v9, v16, "%{public}s called with null proxy_endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v26 = "nw_proxy_config_create_socksv5";
        _os_log_impl(&dword_181A37000, v9, v21, "%{public}s called with null proxy_endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_40:
  if (v8)
  {
    free(v8);
  }

  v4 = 0;
LABEL_10:

  return &v4->super;
}

nw_proxy_config_t nw_proxy_config_create_http_connect(nw_endpoint_t proxy_endpoint, nw_protocol_options_t proxy_tls_options)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = proxy_endpoint;
  v4 = proxy_tls_options;
  v6 = v4;
  if (v3)
  {
    empty = _nw_protocol_stack_create_empty(v4, v5);
    if (nw_proxy_copy_http_connect_definition::onceToken != -1)
    {
      dispatch_once(&nw_proxy_copy_http_connect_definition::onceToken, &__block_literal_global_102);
    }

    v8 = nw_proxy_copy_http_connect_definition::proxy_definition;
    options = nw_proxy_create_options(v8);

    nw_protocol_options_set_proxy_endpoint(options, v3, 0);
    nw_protocol_stack_append_application_protocol(empty, options);
    if (!v6)
    {
      goto LABEL_10;
    }

    if (nw_protocol_options_is_tls(v6))
    {
      goto LABEL_9;
    }

    v10 = v6;
    if (nw_protocol_copy_serializable_tls_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_serializable_tls_definition::onceToken, &__block_literal_global_75577);
    }

    v11 = nw_protocol_options_matches_definition(v10, nw_protocol_copy_serializable_tls_definition::tls_definition);

    if (v11)
    {
LABEL_9:
      nw_protocol_stack_append_application_protocol(empty, v6);
      v12 = 4002;
    }

    else
    {
LABEL_10:
      v12 = 3004;
    }

    v13 = nw_proxy_config_create_with_stack(v3, empty);
    v14 = v13;
    if (v13)
    {
      v13->type = v12;
      *(v13 + 170) |= 8u;
      if (nw_path_is_endpoint_localhost(v3))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x80;
      }

      *(v14 + 171) = v15 & 0x80 | *(v14 + 171) & 0x7F;
      v16 = v14;
LABEL_16:

      goto LABEL_17;
    }

    v22 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_proxy_config_create_http_connect";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v34 = 0;
    if (__nwlog_fault(v23, &type, &v34))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v37 = "nw_proxy_config_create_http_connect";
          _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v34 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v30 = type;
        v31 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v31)
          {
            *buf = 136446466;
            v37 = "nw_proxy_config_create_http_connect";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_53;
        }

        if (v31)
        {
          *buf = 136446210;
          v37 = "nw_proxy_config_create_http_connect";
          _os_log_impl(&dword_181A37000, v24, v30, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v37 = "nw_proxy_config_create_http_connect";
          _os_log_impl(&dword_181A37000, v24, v33, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_53:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_16;
  }

  v18 = __nwlog_obj();
  *buf = 136446210;
  v37 = "nw_proxy_config_create_http_connect";
  v19 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v34 = 0;
  if (__nwlog_fault(v19, &type, &v34))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_proxy_config_create_http_connect";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null proxy_endpoint", buf, 0xCu);
      }
    }

    else if (v34 == 1)
    {
      v26 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v27 = type;
      v28 = os_log_type_enabled(v20, type);
      if (v26)
      {
        if (v28)
        {
          *buf = 136446466;
          v37 = "nw_proxy_config_create_http_connect";
          v38 = 2082;
          v39 = v26;
          _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null proxy_endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v26);
        goto LABEL_47;
      }

      if (v28)
      {
        *buf = 136446210;
        v37 = "nw_proxy_config_create_http_connect";
        _os_log_impl(&dword_181A37000, v20, v27, "%{public}s called with null proxy_endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v37 = "nw_proxy_config_create_http_connect";
        _os_log_impl(&dword_181A37000, v20, v32, "%{public}s called with null proxy_endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_47:
  if (v19)
  {
    free(v19);
  }

  v14 = 0;
LABEL_17:

  return &v14->super;
}

void nw_proxy_config_set_failover_allowed(nw_proxy_config_t proxy_config, BOOL failover_allowed)
{
  v2 = failover_allowed;
  v21 = *MEMORY[0x1E69E9840];
  v3 = proxy_config;
  v4 = v3;
  if (v3)
  {
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 8;
    }

    BYTE2(v3[21].isa) = BYTE2(v3[21].isa) & 0xF7 | v5;
    isa = v3[11].isa;
    if (isa)
    {
      nw_proxy_config_set_failover_allowed(isa, v2);
    }

    goto LABEL_7;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v18 = "nw_proxy_config_set_failover_allowed";
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
        v18 = "nw_proxy_config_set_failover_allowed";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null proxy_config", buf, 0xCu);
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
          v18 = "nw_proxy_config_set_failover_allowed";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_24;
      }

      if (v13)
      {
        *buf = 136446210;
        v18 = "nw_proxy_config_set_failover_allowed";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null proxy_config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v18 = "nw_proxy_config_set_failover_allowed";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null proxy_config, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_24:
  if (v8)
  {
    free(v8);
  }

LABEL_7:
}

BOOL nw_proxy_config_get_failover_allowed(nw_proxy_config_t proxy_config)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = proxy_config;
  if (v1)
  {
    v2 = (BYTE2(v1[21].isa) & 8) == 0;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_proxy_config_get_failover_allowed";
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
        v15 = "nw_proxy_config_get_failover_allowed";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null proxy_config", buf, 0xCu);
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
          v15 = "nw_proxy_config_get_failover_allowed";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_failover_allowed";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null proxy_config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_proxy_config_get_failover_allowed";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null proxy_config, backtrace limit exceeded", buf, 0xCu);
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

BOOL nw_protocol_http1_accept(uint64_t a1, uint64_t a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v20, &type, &v47))
    {
      goto LABEL_114;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null protocol";
    }

    else
    {
      if (v47 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v29 = os_log_type_enabled(v21, type);
        if (!backtrace_string)
        {
          if (!v29)
          {
            goto LABEL_114;
          }

          *buf = 136446210;
          v50 = "nw_http1_get_http1_protocol";
          v23 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_113;
        }

        if (v29)
        {
          *buf = 136446466;
          v50 = "nw_http1_get_http1_protocol";
          v51 = 2082;
          v52 = backtrace_string;
          _os_log_impl(&dword_181A37000, v21, v22, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_114;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_113;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v20, &type, &v47))
    {
      goto LABEL_114;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v47 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_113;
      }

      v30 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v31 = os_log_type_enabled(v21, type);
      if (!v30)
      {
        if (!v31)
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle, no backtrace";
        goto LABEL_113;
      }

      if (!v31)
      {
        goto LABEL_59;
      }

      *buf = 136446466;
      v50 = "nw_http1_get_http1_protocol";
      v51 = 2082;
      v52 = v30;
      v32 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_58;
    }

    v21 = __nwlog_obj();
    v22 = type;
    if (!os_log_type_enabled(v21, type))
    {
      goto LABEL_114;
    }

    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v23 = "%{public}s called with null handle";
LABEL_113:
    _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
    goto LABEL_114;
  }

  v5 = *(v3 + 6);
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_116;
    }

    v6 = v3[2];
    if (v6)
    {
      v3 = (v6 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (__nwlog_fault(v20, &type, &v47))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection";
        goto LABEL_113;
      }

      if (v47 != 1)
      {
        v21 = __nwlog_obj();
        v22 = type;
        if (!os_log_type_enabled(v21, type))
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_113;
      }

      v30 = __nw_create_backtrace_string();
      v21 = __nwlog_obj();
      v22 = type;
      v40 = os_log_type_enabled(v21, type);
      if (!v30)
      {
        if (!v40)
        {
          goto LABEL_114;
        }

        *buf = 136446210;
        v50 = "nw_http1_get_http1_protocol";
        v23 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_113;
      }

      if (v40)
      {
        *buf = 136446466;
        v50 = "nw_http1_get_http1_protocol";
        v51 = 2082;
        v52 = v30;
        v32 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_58;
      }

LABEL_59:
      free(v30);
      if (!v20)
      {
LABEL_116:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v50 = "nw_protocol_http1_accept";
        v24 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v47 = 0;
        if (!__nwlog_fault(v24, &type, &v47))
        {
          goto LABEL_129;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_129;
          }

          *buf = 136446210;
          v50 = "nw_protocol_http1_accept";
          v27 = "%{public}s called with null http1";
        }

        else
        {
          if (v47 == 1)
          {
            v41 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v42 = gLogObj;
            v43 = type;
            v44 = os_log_type_enabled(gLogObj, type);
            if (v41)
            {
              if (v44)
              {
                *buf = 136446466;
                v50 = "nw_protocol_http1_accept";
                v51 = 2082;
                v52 = v41;
                _os_log_impl(&dword_181A37000, v42, v43, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v41);
              goto LABEL_129;
            }

            if (!v44)
            {
LABEL_129:
              if (v24)
              {
                free(v24);
              }

              return 0;
            }

            *buf = 136446210;
            v50 = "nw_protocol_http1_accept";
            v27 = "%{public}s called with null http1, no backtrace";
            v45 = v42;
            v46 = v43;
LABEL_128:
            _os_log_impl(&dword_181A37000, v45, v46, v27, buf, 0xCu);
            goto LABEL_129;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v25 = gLogObj;
          v26 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_129;
          }

          *buf = 136446210;
          v50 = "nw_protocol_http1_accept";
          v27 = "%{public}s called with null http1, backtrace limit exceeded";
        }

        goto LABEL_127;
      }

LABEL_115:
      free(v20);
      goto LABEL_116;
    }

LABEL_114:
    if (!v20)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  v7 = v3[1];
  if (!v7)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_http1_get_http1_protocol";
    v20 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v20, &type, &v47))
    {
      goto LABEL_114;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream";
      goto LABEL_113;
    }

    if (v47 != 1)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (!os_log_type_enabled(v21, type))
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_113;
    }

    v30 = __nw_create_backtrace_string();
    v21 = __nwlog_obj();
    v22 = type;
    v39 = os_log_type_enabled(v21, type);
    if (!v30)
    {
      if (!v39)
      {
        goto LABEL_114;
      }

      *buf = 136446210;
      v50 = "nw_http1_get_http1_protocol";
      v23 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_113;
    }

    if (!v39)
    {
      goto LABEL_59;
    }

    *buf = 136446466;
    v50 = "nw_http1_get_http1_protocol";
    v51 = 2082;
    v52 = v30;
    v32 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_58:
    _os_log_impl(&dword_181A37000, v21, v22, v32, buf, 0x16u);
    goto LABEL_59;
  }

  v3 = (v7 + 248);
LABEL_10:
  v8 = *v3;
  if (!*v3)
  {
    goto LABEL_116;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_http1_accept";
    v24 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v24, &type, &v47))
    {
      goto LABEL_129;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v47 != 1)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (!os_log_type_enabled(v25, type))
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http1_accept";
        v27 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_127;
      }

      v33 = __nw_create_backtrace_string();
      v25 = __nwlog_obj();
      v26 = type;
      v34 = os_log_type_enabled(v25, type);
      if (!v33)
      {
        if (!v34)
        {
          goto LABEL_129;
        }

        *buf = 136446210;
        v50 = "nw_protocol_http1_accept";
        v27 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_127;
      }

      if (v34)
      {
        *buf = 136446466;
        v50 = "nw_protocol_http1_accept";
        v51 = 2082;
        v52 = v33;
        v35 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
LABEL_69:
        _os_log_impl(&dword_181A37000, v25, v26, v35, buf, 0x16u);
      }

LABEL_70:
      free(v33);
      goto LABEL_129;
    }

    v25 = __nwlog_obj();
    v26 = type;
    if (!os_log_type_enabled(v25, type))
    {
      goto LABEL_129;
    }

    *buf = 136446210;
    v50 = "nw_protocol_http1_accept";
    v27 = "%{public}s called with null endpoint";
LABEL_127:
    v45 = v25;
    v46 = v26;
    goto LABEL_128;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v50 = "nw_protocol_http1_accept";
    v24 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v47 = 0;
    if (!__nwlog_fault(v24, &type, &v47))
    {
      goto LABEL_129;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http1_accept";
      v27 = "%{public}s called with null parameters";
      goto LABEL_127;
    }

    if (v47 != 1)
    {
      v25 = __nwlog_obj();
      v26 = type;
      if (!os_log_type_enabled(v25, type))
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http1_accept";
      v27 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_127;
    }

    v33 = __nw_create_backtrace_string();
    v25 = __nwlog_obj();
    v26 = type;
    v36 = os_log_type_enabled(v25, type);
    if (!v33)
    {
      if (!v36)
      {
        goto LABEL_129;
      }

      *buf = 136446210;
      v50 = "nw_protocol_http1_accept";
      v27 = "%{public}s called with null parameters, no backtrace";
      goto LABEL_127;
    }

    if (v36)
    {
      *buf = 136446466;
      v50 = "nw_protocol_http1_accept";
      v51 = 2082;
      v52 = v33;
      v35 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  if ((*(v8 + 376) & 0x10) != 0)
  {
    if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v14 = __nwlog_obj();
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v15 = *(v8 + 372);
      *buf = 136446978;
      v50 = "nw_protocol_http1_accept";
      v51 = 2082;
      v52 = (v8 + 74);
      v53 = 2080;
      v54 = " ";
      v55 = 1024;
      v56 = v15;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> refusing accept because do not reuse is set", buf, 0x26u);
    }

    return 0;
  }

  if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v10 = nw_protocol_copy_http_messaging_definition_definition;
  v11 = nw_parameters_copy_protocol_options_for_definition(a3, v10);
  if (v10)
  {
    os_release(v10);
  }

  if (v11)
  {
    v12 = *(v8 + 376);
    if (((nw_http_messaging_options_is_websocket(v11) ^ ((v12 & 8) == 0)) & 1) == 0)
    {
      if ((*(v8 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
        if (!result)
        {
LABEL_32:
          v19 = result;
          os_release(v11);
          return v19;
        }

        v17 = *(v8 + 372);
        v18 = (*(v8 + 376) >> 3) & 1;
        *buf = 136447234;
        v50 = "nw_protocol_http1_accept";
        v51 = 2082;
        v52 = (v8 + 74);
        v53 = 2080;
        v54 = " ";
        v55 = 1024;
        v56 = v17;
        v57 = 1024;
        LODWORD(v58) = v18;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> rejecting due to websocket mismatch (http1->websocket=%{BOOL}d)", buf, 0x2Cu);
      }

      result = 0;
      goto LABEL_32;
    }
  }

  if ((*(v8 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v37 = __nwlog_obj();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(v8 + 372);
      *buf = 136447490;
      v50 = "nw_protocol_http1_accept";
      v51 = 2082;
      v52 = (v8 + 74);
      v53 = 2080;
      v54 = " ";
      v55 = 1024;
      v56 = v38;
      v57 = 2114;
      v58 = a2;
      v59 = 2114;
      v60 = a3;
      _os_log_impl(&dword_181A37000, v37, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> accepting connection to %{public}@ with %{public}@", buf, 0x3Au);
    }
  }

  result = 1;
  if (v11)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t nw_protocol_http1_create(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_create";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_create";
      v35 = "%{public}s called with null identifier";
LABEL_76:
      _os_log_impl(&dword_181A37000, v33, v34, v35, buf, 0xCu);
      goto LABEL_77;
    }

    if (v42 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null identifier, backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v37 = os_log_type_enabled(v33, type);
    if (!backtrace_string)
    {
      if (v37)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null identifier, no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v37)
    {
      goto LABEL_63;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_create";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v38 = "%{public}s called with null identifier, dumping backtrace:%{public}s";
LABEL_62:
    _os_log_impl(&dword_181A37000, v33, v34, v38, buf, 0x16u);
    goto LABEL_63;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_create";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (!os_log_type_enabled(v33, type))
      {
        goto LABEL_77;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_create";
      v35 = "%{public}s called with null endpoint";
      goto LABEL_76;
    }

    if (v42 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v39 = os_log_type_enabled(v33, type);
    if (!backtrace_string)
    {
      if (v39)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (!v39)
    {
      goto LABEL_63;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http1_create";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v38 = "%{public}s called with null endpoint, dumping backtrace:%{public}s";
    goto LABEL_62;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_create";
    v32 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v32, &type, &v42))
    {
      goto LABEL_77;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null parameters";
        goto LABEL_76;
      }

LABEL_77:
      if (v32)
      {
        free(v32);
      }

      return 0;
    }

    if (v42 != 1)
    {
      v33 = __nwlog_obj();
      v34 = type;
      if (os_log_type_enabled(v33, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    backtrace_string = __nw_create_backtrace_string();
    v33 = __nwlog_obj();
    v34 = type;
    v40 = os_log_type_enabled(v33, type);
    if (!backtrace_string)
    {
      if (v40)
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_create";
        v35 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_76;
      }

      goto LABEL_77;
    }

    if (v40)
    {
      *buf = 136446466;
      *&buf[4] = "nw_protocol_http1_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v38 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
      goto LABEL_62;
    }

LABEL_63:
    free(backtrace_string);
    goto LABEL_77;
  }

  v7 = malloc_type_calloc(1uLL, 0x180uLL, 0xEA82A939uLL);
  v8 = v7;
  if (v7)
  {
    v7[22] = 0u;
    v7[23] = 0u;
    v7[20] = 0u;
    v7[21] = 0u;
    v7[18] = 0u;
    v7[19] = 0u;
    v7[16] = 0u;
    v7[17] = 0u;
    v7[14] = 0u;
    v7[15] = 0u;
    v7[12] = 0u;
    v7[13] = 0u;
    v7[10] = 0u;
    v7[11] = 0u;
    v7[8] = 0u;
    v7[9] = 0u;
    v7[6] = 0u;
    v7[7] = 0u;
    v7[4] = 0u;
    v7[5] = 0u;
    v7[2] = 0u;
    v7[3] = 0u;
    *v7 = 0u;
    v7[1] = 0u;
LABEL_9:
    *(v8 + 2) = a1;
    if (nw_protocol_http1_get_callbacks(void)::onceToken[0] != -1)
    {
      dispatch_once(nw_protocol_http1_get_callbacks(void)::onceToken, &__block_literal_global_20_42799);
    }

    *(v8 + 3) = &nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks;
    *(v8 + 46) = 1;
    *(v8 + 20) = v8;
    *(v8 + 5) = v8 + 10;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v45 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __nw_protocol_http1_create_block_invoke;
    aBlock[3] = &unk_1E6A32580;
    aBlock[4] = buf;
    *(v8 + 25) = _Block_copy(aBlock);
    _Block_object_dispose(buf, 8);
    v12 = os_retain(a3);
    v13 = *(v8 + 288);
    if ((v13 & 1) != 0 && *(v8 + 35))
    {
      v14 = v12;
      os_release(*(v8 + 35));
      v12 = v14;
      v13 = *(v8 + 288);
    }

    *(v8 + 35) = v12;
    *(v8 + 288) = v13 | 1;
    v15 = os_retain(a3);
    v16 = *(v8 + 304);
    if ((v16 & 1) != 0 && *(v8 + 37))
    {
      v17 = v15;
      os_release(*(v8 + 37));
      v15 = v17;
      v16 = *(v8 + 304);
    }

    *(v8 + 37) = v15;
    *(v8 + 304) = v16 | 1;
    v18 = _nw_parameters_copy_effective_proxy_config(a4);
    if (v18)
    {
      v19 = a3;
      v20 = _nw_endpoint_copy_proxy_original_endpoint(v19);

      if (v20)
      {
        v21 = *(v8 + 304);
        if (v21)
        {
          v22 = *(v8 + 37);
          if (v22)
          {
            os_release(v22);
            v21 = *(v8 + 304);
          }
        }

        *(v8 + 37) = v20;
        *(v8 + 304) = v21 | 1;
      }

      v23 = v18;
      if (v23[38] == 1)
      {
        v24 = 4 * (v23[39] == 2001);
      }

      else
      {
        v24 = 0;
      }

      *(v8 + 376) = *(v8 + 376) & 0xFB | v24;
    }

    metadata = nw_http_connection_create_metadata(0, 0, 0);
    v26 = *(v8 + 320);
    if ((v26 & 1) != 0 && *(v8 + 39))
    {
      v27 = metadata;
      os_release(*(v8 + 39));
      metadata = v27;
      v26 = *(v8 + 320);
    }

    *(v8 + 39) = metadata;
    *(v8 + 320) = v26 | 1;
    *(v8 + 376) = *(v8 + 376) & 0xFE | _nw_parameters_get_server_mode(a4);
    if ((*(v8 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v28 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(v8 + 93);
        v30 = "server";
        v31 = (*(v8 + 376) & 1) == 0;
        *buf = 136447234;
        *&buf[4] = "nw_protocol_http1_create";
        if (v31)
        {
          v30 = "client";
        }

        *&buf[12] = 2082;
        *&buf[14] = v8 + 74;
        *&buf[22] = 2080;
        v45 = " ";
        v46 = 1024;
        v47 = v29;
        v48 = 2082;
        v49 = v30;
        _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> http1 is in %{public}s mode", buf, 0x30u);
      }
    }

    *(v8 + 26) = 0;
    *(v8 + 88) = 0;
    *(v8 + 27) = v8 + 13;
    *(v8 + 29) = 0;
    *(v8 + 30) = v8 + 232;
    *(v8 + 31) = 0;
    *(v8 + 32) = v8 + 248;
    *(v8 + 42) = 0;
    *(v8 + 43) = 0;
    *(v8 + 364) = 6;
    *(v8 + 24) = 29000;
    if (v18)
    {
      os_release(v18);
    }

    return v8;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http1_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v45 = 384;
  v9 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    MEMORY[0x170] = 0u;
    MEMORY[0x160] = 0u;
    MEMORY[0x150] = 0u;
    MEMORY[0x140] = 0u;
    MEMORY[0x130] = 0u;
    MEMORY[0x120] = 0u;
    MEMORY[0x110] = 0u;
    MEMORY[0x100] = 0u;
    MEMORY[0xF0] = 0u;
    MEMORY[0xE0] = 0u;
    MEMORY[0xD0] = 0u;
    MEMORY[0xC0] = 0u;
    MEMORY[0xB0] = 0u;
    MEMORY[0xA0] = 0u;
    MEMORY[0x90] = 0u;
    MEMORY[0x80] = 0u;
    MEMORY[0x70] = 0u;
    MEMORY[0x60] = 0u;
    MEMORY[0x50] = 0u;
    MEMORY[0x40] = 0u;
    MEMORY[0x30] = 0u;
    MEMORY[0x20] = 0u;
    MEMORY[0x10] = 0u;
    MEMORY[0] = 0u;
    MEMORY[0x108] = 0;
    MEMORY[0x118] = 0;
    MEMORY[0x128] = 0;
    MEMORY[0x138] = 0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_create";
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (!result)
    {
      free(v11);
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t __nw_protocol_http1_create_block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return *(*(*(a1 + 32) + 8) + 24);
}

void ___ZL31nw_protocol_http1_get_callbacksv_block_invoke()
{
  qword_1EA83F650 = nw_protocol_default_input_flush;
  qword_1EA83F5B0 = nw_protocol_default_link_state;
  qword_1EA83F5C8 = nw_protocol_default_get_local;
  qword_1EA83F5C0 = nw_protocol_default_get_path;
  qword_1EA83F610 = nw_protocol_default_get_output_local;
  qword_1EA83F618 = nw_protocol_default_get_output_interface;
  qword_1EA83F5F8 = nw_protocol_default_supports_external_data;
  qword_1EA83F620 = nw_protocol_default_waiting_for_output;
  qword_1EA83F5D8 = nw_protocol_default_register_notification;
  qword_1EA83F5E0 = nw_protocol_default_unregister_notification;
  qword_1EA83F560 = nw_protocol_http1_connect;
  qword_1EA83F570 = nw_protocol_http1_connected;
  qword_1EA83F568 = nw_protocol_http1_disconnect;
  qword_1EA83F578 = nw_protocol_http1_disconnected;
  nw_protocol_http1_get_callbacks(void)::http1_protocol_callbacks = nw_protocol_http1_add_input_handler;
  qword_1EA83F550 = nw_protocol_http1_remove_input_handler;
  qword_1EA83F558 = nw_protocol_http1_replace_input_handler;
  qword_1EA83F648 = nw_protocol_http1_reset;
  qword_1EA83F588 = nw_protocol_http1_input_available;
  qword_1EA83F590 = nw_protocol_http1_output_available;
  qword_1EA83F600 = nw_protocol_http1_input_finished;
  qword_1EA83F608 = nw_protocol_http1_output_finished;
  qword_1EA83F598 = nw_protocol_http1_get_input_frames;
  qword_1EA83F5A0 = nw_protocol_http1_get_output_frames;
  qword_1EA83F5A8 = nw_protocol_http1_finalize_output_frames;
  qword_1EA83F630 = nw_protocol_http1_add_listen_handler;
  qword_1EA83F638 = nw_protocol_http1_remove_listen_handler;
  qword_1EA83F5B8 = nw_protocol_http1_get_parameters;
  qword_1EA83F5D0 = nw_protocol_http1_get_remote_endpoint;
  qword_1EA83F640 = nw_protocol_http1_stream_get_message_properties;
  qword_1EA83F580 = nw_protocol_http1_error;
  qword_1EA83F5E8 = nw_protocol_http1_notify;
  qword_1EA83F628 = nw_protocol_http1_copy_info;
  qword_1EA83F5F0 = nw_protocol_http1_updated_path;
}

uint64_t nw_protocol_http1_updated_path(nw_protocol *a1, nw_protocol *a2, nw_path *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http1_get_http1_protocol";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v21, &type, &v50))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v53 = "nw_http1_get_http1_protocol";
      v24 = "%{public}s called with null protocol";
    }

    else
    {
      if (v50 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v26 = os_log_type_enabled(v22, type);
        if (!backtrace_string)
        {
          if (!v26)
          {
            goto LABEL_94;
          }

          *buf = 136446210;
          v53 = "nw_http1_get_http1_protocol";
          v24 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_93;
        }

        if (v26)
        {
          *buf = 136446466;
          v53 = "nw_http1_get_http1_protocol";
          v54 = 2082;
          v55 = backtrace_string;
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_94;
      }

      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v53 = "nw_http1_get_http1_protocol";
      v24 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_93;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http1_get_http1_protocol";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v21, &type, &v50))
    {
      goto LABEL_94;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v50 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_http1_protocol";
        v24 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_93;
      }

      v27 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v28 = os_log_type_enabled(v22, type);
      if (!v27)
      {
        if (!v28)
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_http1_protocol";
        v24 = "%{public}s called with null handle, no backtrace";
        goto LABEL_93;
      }

      if (!v28)
      {
        goto LABEL_48;
      }

      *buf = 136446466;
      v53 = "nw_http1_get_http1_protocol";
      v54 = 2082;
      v55 = v27;
      v29 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_47;
    }

    v22 = __nwlog_obj();
    v23 = type;
    if (!os_log_type_enabled(v22, type))
    {
      goto LABEL_94;
    }

    *buf = 136446210;
    v53 = "nw_http1_get_http1_protocol";
    v24 = "%{public}s called with null handle";
LABEL_93:
    _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
    goto LABEL_94;
  }

  v5 = *(handle + 6);
  v6 = a1->handle;
  if (v5 == 1)
  {
    goto LABEL_10;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      goto LABEL_96;
    }

    v7 = *(handle + 2);
    if (v7)
    {
      v6 = (v7 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http1_get_http1_protocol";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v21, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_http1_protocol";
        v24 = "%{public}s called with null handle->http1_connection";
        goto LABEL_93;
      }

      if (v50 != 1)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_http1_protocol";
        v24 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_93;
      }

      v27 = __nw_create_backtrace_string();
      v22 = __nwlog_obj();
      v23 = type;
      v35 = os_log_type_enabled(v22, type);
      if (!v27)
      {
        if (!v35)
        {
          goto LABEL_94;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_http1_protocol";
        v24 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_93;
      }

      if (v35)
      {
        *buf = 136446466;
        v53 = "nw_http1_get_http1_protocol";
        v54 = 2082;
        v55 = v27;
        v29 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_47;
      }

LABEL_48:
      free(v27);
      if (!v21)
      {
LABEL_96:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v53 = "nw_protocol_http1_updated_path";
        v38 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v50 = 0;
        if (!__nwlog_fault(v38, &type, &v50))
        {
          goto LABEL_127;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          v40 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          v53 = "nw_protocol_http1_updated_path";
          v41 = "%{public}s called with null http1";
        }

        else
        {
          if (v50 == 1)
          {
            v42 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v43 = gLogObj;
            v44 = type;
            v45 = os_log_type_enabled(gLogObj, type);
            if (v42)
            {
              if (v45)
              {
                *buf = 136446466;
                v53 = "nw_protocol_http1_updated_path";
                v54 = 2082;
                v55 = v42;
                v46 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_121:
                _os_log_impl(&dword_181A37000, v43, v44, v46, buf, 0x16u);
              }

LABEL_122:
              free(v42);
              goto LABEL_127;
            }

            if (!v45)
            {
              goto LABEL_127;
            }

            *buf = 136446210;
            v53 = "nw_protocol_http1_updated_path";
            v41 = "%{public}s called with null http1, no backtrace";
LABEL_132:
            v48 = v43;
            v49 = v44;
            goto LABEL_126;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v39 = gLogObj;
          v40 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_127;
          }

          *buf = 136446210;
          v53 = "nw_protocol_http1_updated_path";
          v41 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_125:
        v48 = v39;
        v49 = v40;
LABEL_126:
        _os_log_impl(&dword_181A37000, v48, v49, v41, buf, 0xCu);
        goto LABEL_127;
      }

LABEL_95:
      free(v21);
      goto LABEL_96;
    }

LABEL_94:
    if (!v21)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v8 = *(handle + 1);
  if (!v8)
  {
    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http1_get_http1_protocol";
    v21 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (!__nwlog_fault(v21, &type, &v50))
    {
      goto LABEL_94;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v53 = "nw_http1_get_http1_protocol";
      v24 = "%{public}s called with null handle->http1_stream";
      goto LABEL_93;
    }

    if (v50 != 1)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (!os_log_type_enabled(v22, type))
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v53 = "nw_http1_get_http1_protocol";
      v24 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_93;
    }

    v27 = __nw_create_backtrace_string();
    v22 = __nwlog_obj();
    v23 = type;
    v34 = os_log_type_enabled(v22, type);
    if (!v27)
    {
      if (!v34)
      {
        goto LABEL_94;
      }

      *buf = 136446210;
      v53 = "nw_http1_get_http1_protocol";
      v24 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_93;
    }

    if (!v34)
    {
      goto LABEL_48;
    }

    *buf = 136446466;
    v53 = "nw_http1_get_http1_protocol";
    v54 = 2082;
    v55 = v27;
    v29 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_47:
    _os_log_impl(&dword_181A37000, v22, v23, v29, buf, 0x16u);
    goto LABEL_48;
  }

  v6 = (v8 + 248);
LABEL_10:
  if (!*v6)
  {
    goto LABEL_96;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
LABEL_113:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v53 = "nw_protocol_http1_updated_path";
      v38 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v50 = 0;
      if (!__nwlog_fault(v38, &type, &v50))
      {
        goto LABEL_127;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v39 = gLogObj;
        v40 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_127;
        }

        *buf = 136446210;
        v53 = "nw_protocol_http1_updated_path";
        v41 = "%{public}s called with null http1_stream";
        goto LABEL_125;
      }

      if (v50 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v39 = gLogObj;
        v40 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_127;
        }

        *buf = 136446210;
        v53 = "nw_protocol_http1_updated_path";
        v41 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_125;
      }

      v42 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v43 = gLogObj;
      v44 = type;
      v47 = os_log_type_enabled(gLogObj, type);
      if (v42)
      {
        if (v47)
        {
          *buf = 136446466;
          v53 = "nw_protocol_http1_updated_path";
          v54 = 2082;
          v55 = v42;
          v46 = "%{public}s called with null http1_stream, dumping backtrace:%{public}s";
          goto LABEL_121;
        }

        goto LABEL_122;
      }

      if (!v47)
      {
LABEL_127:
        if (v38)
        {
          free(v38);
        }

        return 0;
      }

      *buf = 136446210;
      v53 = "nw_protocol_http1_updated_path";
      v41 = "%{public}s called with null http1_stream, no backtrace";
      goto LABEL_132;
    }

    v9 = *(handle + 2);
    if (v9)
    {
      v10 = (v9 + 488);
      goto LABEL_16;
    }

    __nwlog_obj();
    *buf = 136446210;
    v53 = "nw_http1_get_stream_for_protocol";
    v30 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v50 = 0;
    if (__nwlog_fault(v30, &type, &v50))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_111;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_stream_for_protocol";
        v33 = "%{public}s called with null handle->http1_connection";
        goto LABEL_110;
      }

      if (v50 != 1)
      {
        v31 = __nwlog_obj();
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_111;
        }

        *buf = 136446210;
        v53 = "nw_http1_get_stream_for_protocol";
        v33 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_110;
      }

      v36 = __nw_create_backtrace_string();
      v31 = __nwlog_obj();
      v32 = type;
      v37 = os_log_type_enabled(v31, type);
      if (v36)
      {
        if (v37)
        {
          *buf = 136446466;
          v53 = "nw_http1_get_stream_for_protocol";
          v54 = 2082;
          v55 = v36;
          _os_log_impl(&dword_181A37000, v31, v32, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        goto LABEL_111;
      }

      if (v37)
      {
        *buf = 136446210;
        v53 = "nw_http1_get_stream_for_protocol";
        v33 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_110:
        _os_log_impl(&dword_181A37000, v31, v32, v33, buf, 0xCu);
      }
    }

LABEL_111:
    if (v30)
    {
      free(v30);
    }

    goto LABEL_113;
  }

  v10 = (handle + 8);
LABEL_16:
  v11 = *v10;
  if (!*v10)
  {
    goto LABEL_113;
  }

  v12 = *(v11 + 256);
  if (v12)
  {
    v13 = *(v12 + 864);
    v14 = *(v12 + 32);
    if (*(v11 + 158))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
    v13 = 5;
    if (*(v11 + 158))
    {
      goto LABEL_25;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v15 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
  {
    v16 = *(v11 + 256);
    v17 = *(*(v11 + 248) + 372);
    if (v16)
    {
      LODWORD(v16) = *(v16 + 860);
    }

    v18 = *(v11 + 424);
    *buf = 136448514;
    v53 = "nw_protocol_http1_updated_path";
    v54 = 2082;
    v55 = (v11 + 74);
    v56 = 2080;
    v57 = " ";
    v58 = 1024;
    v59 = v17;
    v60 = 1024;
    v61 = v16;
    v62 = 1024;
    v63 = v18;
    v64 = 2048;
    v65 = v11;
    v66 = 2048;
    v67 = v12;
    v68 = 1024;
    v69 = v13;
    v70 = 2048;
    v71 = v14;
    _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u:c%u:s%u> called for stream, protocol: %p, connection protocol: %p, connection state: %u, output_handler: %p", buf, 0x56u);
  }

LABEL_25:
  if (v12)
  {
    v19 = v14 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    return nw_protocol_updated_path(v14, v12, a3);
  }

  return 0;
}
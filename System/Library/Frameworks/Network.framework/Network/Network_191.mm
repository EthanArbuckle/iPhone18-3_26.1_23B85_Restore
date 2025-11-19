uint64_t ___ZL40nw_http1_stream_process_outbound_messageP15nw_http1_streamb_block_invoke(uint64_t result, char *a2)
{
  if (a2)
  {
    v2 = result;
    result = strcasecmp(a2, "websocket");
    if (!result)
    {
      *(*(*(v2 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke(uint64_t a1, uint64_t a2)
{
  nw_frame_finalize(a2);
  ++*(*(*(a1 + 32) + 8) + 24);
  return 1;
}

void ___ZN2nw4http22content_length_manager20set_outbound_messageEP20nw_protocol_metadata_block_invoke(uint64_t a1, char *__s)
{
  if (__s)
  {
    v3 = *(a1 + 32);
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, __s, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    *v3 = std::stoull(&__dst, 0, 10);
    *(v3 + 8) = 1;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

__n128 __Block_byref_object_copy__106(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL ___ZL41nw_http1_connection_fulfill_frame_requestP19nw_http1_connectionP16nw_frame_array_sS2_bbjjjPj_block_invoke(uint64_t a1, _DWORD *a2)
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = nw_frame_unclaimed_length(a2);
  if ((*(*(*(a1 + 32) + 8) + 24) + 1) > *(a1 + 72))
  {
    return 0;
  }

  v6 = v4;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  v9 = v8 + v4;
  if (__CFADD__(v8, v4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446978;
    v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v114 = 2082;
    v115 = "bytes_count_with_this_frame";
    v116 = 2048;
    v117 = v6;
    v118 = 2048;
    *v119 = v9;
    v10 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v111 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v10, type, &v111))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count_with_this_frame";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_18:
          _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0x2Au);
        }
      }

      else if (v111 == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        v15 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136447234;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "bytes_count_with_this_frame";
            v116 = 2048;
            v117 = v6;
            v118 = 2048;
            *v119 = v9;
            *&v119[8] = 2082;
            v120 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (v15)
        {
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count_with_this_frame";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_18;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count_with_this_frame";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v9;
          v13 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    if (v10)
    {
      free(v10);
    }

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 24);
    LODWORD(v9) = -1;
  }

  v16 = *(a1 + 76);
  if (v9 <= v16)
  {
    *(v7 + 24) = v8 + v6;
    if (!__CFADD__(v8, v6))
    {
LABEL_72:
      v62 = (*(a1 + 56) + 8);
      v63 = 4;
      if (*(a1 + 80))
      {
        v63 = 8;
      }

      v64 = 6;
      if (*(a1 + 80))
      {
        v64 = 10;
      }

      v65 = &a2[v63];
      v66 = *v65;
      v67 = *&a2[v64];
      v68 = (*v65 + v64 * 4);
      if (*v65)
      {
        v62 = v68;
      }

      *v62 = v67;
      *v67 = v66;
      *v65 = 0;
      v65[1] = 0;
      if ((*(*(a1 + 64) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v99 = __nwlog_obj();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
        {
          v100 = *(a1 + 64);
          v101 = (v100 + 74);
          v102 = *(v100 + 488);
          v103 = *(*(v100 + 480) + 372);
          v104 = *(v100 + 860);
          if (v102)
          {
            LODWORD(v102) = *(v102 + 424);
          }

          *buf = 136447746;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = v101;
          v116 = 2080;
          v117 = " ";
          v118 = 1024;
          *v119 = v103;
          *&v119[4] = 1024;
          *&v119[6] = v104;
          LOWORD(v120) = 1024;
          *(&v120 + 2) = v102;
          HIWORD(v120) = 1024;
          *v121 = v6;
          _os_log_impl(&dword_181A37000, v99, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Moving entire frame (%u bytes)", buf, 0x38u);
        }
      }

      v26 = a2;
LABEL_81:
      v69 = *(*(a1 + 32) + 8);
      v70 = *(v69 + 24) + 1;
      *(v69 + 24) = v70;
      if (v70 == v70 << 31 >> 31)
      {
LABEL_99:
        v82 = *(*(a1 + 48) + 8);
        v83 = 4;
        if (*(a1 + 80))
        {
          v83 = 8;
        }

        v84 = 6;
        if (*(a1 + 80))
        {
          v84 = 10;
        }

        v85 = &v26[v83];
        *v85 = 0;
        v86 = *(v82 + 48);
        *&v26[v84] = v86;
        *v86 = v26;
        *(v82 + 48) = v85;
        return 1;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v71 = *(*(*(a1 + 32) + 8) + 24);
      *buf = 136446978;
      v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
      v114 = 2082;
      v115 = "frame_count";
      v116 = 2048;
      v117 = 1;
      v118 = 2048;
      *v119 = v71;
      v72 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v111 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v72, type, &v111))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          v74 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v75 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "frame_count";
            v116 = 2048;
            v117 = 1;
            v118 = 2048;
            *v119 = v75;
            v76 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_95:
            _os_log_impl(&dword_181A37000, v73, v74, v76, buf, 0x2Au);
          }
        }

        else if (v111 == OS_LOG_TYPE_INFO)
        {
          v77 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          v74 = type[0];
          v78 = os_log_type_enabled(gLogObj, type[0]);
          if (v77)
          {
            if (v78)
            {
              v79 = *(*(*(a1 + 32) + 8) + 24);
              *buf = 136447234;
              v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
              v114 = 2082;
              v115 = "frame_count";
              v116 = 2048;
              v117 = 1;
              v118 = 2048;
              *v119 = v79;
              *&v119[8] = 2082;
              v120 = v77;
              _os_log_impl(&dword_181A37000, v73, v74, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v77);
            goto LABEL_96;
          }

          if (v78)
          {
            v81 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "frame_count";
            v116 = 2048;
            v117 = 1;
            v118 = 2048;
            *v119 = v81;
            v76 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_95;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v73 = gLogObj;
          v74 = type[0];
          if (os_log_type_enabled(gLogObj, type[0]))
          {
            v80 = *(*(*(a1 + 32) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "frame_count";
            v116 = 2048;
            v117 = 1;
            v118 = 2048;
            *v119 = v80;
            v76 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_95;
          }
        }
      }

LABEL_96:
      if (v72)
      {
        free(v72);
      }

      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_99;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v35 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 136446978;
    v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v114 = 2082;
    v115 = "bytes_count";
    v116 = 2048;
    v117 = v6;
    v118 = 2048;
    *v119 = v35;
    v36 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v111 = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v36, type, &v111))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v38 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v39 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v39;
          v40 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_68:
          _os_log_impl(&dword_181A37000, v37, v38, v40, buf, 0x2Au);
        }
      }

      else if (v111 == OS_LOG_TYPE_INFO)
      {
        v47 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v38 = type[0];
        v48 = os_log_type_enabled(gLogObj, type[0]);
        if (v47)
        {
          if (v48)
          {
            v49 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136447234;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "bytes_count";
            v116 = 2048;
            v117 = v6;
            v118 = 2048;
            *v119 = v49;
            *&v119[8] = 2082;
            v120 = v47;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v47);
          goto LABEL_69;
        }

        if (v48)
        {
          v61 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v61;
          v40 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_68;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v37 = gLogObj;
        v38 = type[0];
        if (os_log_type_enabled(gLogObj, type[0]))
        {
          v50 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 136446978;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = "bytes_count";
          v116 = 2048;
          v117 = v6;
          v118 = 2048;
          *v119 = v50;
          v40 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_68;
        }
      }
    }

LABEL_69:
    if (v36)
    {
      free(v36);
    }

    *(*(*(a1 + 40) + 8) + 24) = -1;
    goto LABEL_72;
  }

  v17 = v16 - v8;
  if (v16 <= v8)
  {
    return 0;
  }

  if (*(a1 + 81))
  {
    v18 = (*(a1 + 56) + 8);
    v19 = 4;
    if (*(a1 + 80))
    {
      v19 = 8;
    }

    v20 = 6;
    if (*(a1 + 80))
    {
      v20 = 10;
    }

    v21 = &a2[v19];
    v22 = *v21;
    v23 = *&a2[v20];
    v24 = (*v21 + v20 * 4);
    if (*v21)
    {
      v18 = v24;
    }

    *v18 = v23;
    *v23 = v22;
    *v21 = 0;
    v21[1] = 0;
    *type = a2;
    v25 = nw_frame_split(type, v17);
    if (v25)
    {
      v26 = v25;
      nw_frame_array_prepend(*(a1 + 56), *(a1 + 80), *type);
      v27 = *(*(a1 + 40) + 8);
      v28 = *(v27 + 24);
      *(v27 + 24) = v28 + v17;
      if (!__CFADD__(v28, v17))
      {
LABEL_130:
        if ((*(*(a1 + 64) + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v94 = __nwlog_obj();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
          {
            v95 = *(a1 + 64);
            v96 = (v95 + 74);
            v97 = *(v95 + 488);
            if (v97)
            {
              v98 = *(v97 + 424);
            }

            else
            {
              v98 = 0;
            }

            v105 = *(*(v95 + 480) + 372);
            v106 = *(v95 + 860);
            v107 = nw_frame_unclaimed_length(*type);
            v108 = v26[13];
            if (v108)
            {
              v108 -= v26[14] + v26[15];
            }

            *buf = 136448514;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = v96;
            v116 = 2080;
            v117 = " ";
            v118 = 1024;
            *v119 = v105;
            *&v119[4] = 1024;
            *&v119[6] = v106;
            LOWORD(v120) = 1024;
            *(&v120 + 2) = v98;
            HIWORD(v120) = 1024;
            *v121 = v17;
            *&v121[4] = 1024;
            *&v121[6] = v6;
            *v122 = 1024;
            *&v122[2] = v107;
            v123 = 1024;
            v124 = v108;
            _os_log_impl(&dword_181A37000, v94, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Moving split frame (%u bytes of %u, %u bytes remaining, delivering %u bytes)", buf, 0x4Au);
          }
        }

        goto LABEL_81;
      }

      __nwlog_obj();
      v29 = *(*(*(a1 + 40) + 8) + 24);
      *buf = 136446978;
      v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
      v114 = 2082;
      v115 = "bytes_count";
      v116 = 2048;
      v117 = v17;
      v118 = 2048;
      *v119 = v29;
      v30 = _os_log_send_and_compose_impl();
      v111 = OS_LOG_TYPE_ERROR;
      v109 = 0;
      if (__nwlog_fault(v30, &v111, &v109))
      {
        if (v111 == OS_LOG_TYPE_FAULT)
        {
          v31 = __nwlog_obj();
          v32 = v111;
          if (os_log_type_enabled(v31, v111))
          {
            v33 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "bytes_count";
            v116 = 2048;
            v117 = v17;
            v118 = 2048;
            *v119 = v33;
            v34 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_126:
            _os_log_impl(&dword_181A37000, v31, v32, v34, buf, 0x2Au);
          }
        }

        else if (v109 == 1)
        {
          v89 = __nw_create_backtrace_string();
          v31 = __nwlog_obj();
          v32 = v111;
          v90 = os_log_type_enabled(v31, v111);
          if (v89)
          {
            if (v90)
            {
              v91 = *(*(*(a1 + 40) + 8) + 24);
              *buf = 136447234;
              v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
              v114 = 2082;
              v115 = "bytes_count";
              v116 = 2048;
              v117 = v17;
              v118 = 2048;
              *v119 = v91;
              *&v119[8] = 2082;
              v120 = v89;
              _os_log_impl(&dword_181A37000, v31, v32, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v89);
            goto LABEL_127;
          }

          if (v90)
          {
            v93 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "bytes_count";
            v116 = 2048;
            v117 = v17;
            v118 = 2048;
            *v119 = v93;
            v34 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_126;
          }
        }

        else
        {
          v31 = __nwlog_obj();
          v32 = v111;
          if (os_log_type_enabled(v31, v111))
          {
            v92 = *(*(*(a1 + 40) + 8) + 24);
            *buf = 136446978;
            v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
            v114 = 2082;
            v115 = "bytes_count";
            v116 = 2048;
            v117 = v17;
            v118 = 2048;
            *v119 = v92;
            v34 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_126;
          }
        }
      }

LABEL_127:
      if (v30)
      {
        free(v30);
      }

      *(*(*(a1 + 40) + 8) + 24) = -1;
      goto LABEL_130;
    }

    if ((*(*(a1 + 64) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v51 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 64);
        v53 = (v52 + 74);
        v54 = *(v52 + 488);
        v55 = *(*(v52 + 480) + 372);
        v56 = *(v52 + 860);
        if (v54)
        {
          LODWORD(v54) = *(v54 + 424);
        }

        *buf = 136448002;
        v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v114 = 2082;
        v115 = v53;
        v116 = 2080;
        v117 = " ";
        v118 = 1024;
        *v119 = v55;
        *&v119[4] = 1024;
        *&v119[6] = v56;
        LOWORD(v120) = 1024;
        *(&v120 + 2) = v54;
        HIWORD(v120) = 2048;
        *v121 = a2;
        *&v121[8] = 1024;
        *v122 = v17;
        _os_log_impl(&dword_181A37000, v51, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to split frame %p at offset %u", buf, 0x42u);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v57 = _os_log_send_and_compose_impl();
    v111 = OS_LOG_TYPE_ERROR;
    v109 = 0;
    if (__nwlog_fault(v57, &v111, &v109))
    {
      if (v111 == OS_LOG_TYPE_FAULT)
      {
        v58 = __nwlog_obj();
        v59 = v111;
        if (!os_log_type_enabled(v58, v111))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v60 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_121;
      }

      if (v109 != 1)
      {
        v58 = __nwlog_obj();
        v59 = v111;
        if (!os_log_type_enabled(v58, v111))
        {
          goto LABEL_122;
        }

        *buf = 136446210;
        v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v60 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_121;
      }

      v87 = __nw_create_backtrace_string();
      v58 = __nwlog_obj();
      v59 = v111;
      v88 = os_log_type_enabled(v58, v111);
      if (v87)
      {
        if (v88)
        {
          *buf = 136446466;
          v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
          v114 = 2082;
          v115 = v87;
          _os_log_impl(&dword_181A37000, v58, v59, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v87);
        goto LABEL_122;
      }

      if (v88)
      {
        *buf = 136446210;
        v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
        v60 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_121:
        _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
      }
    }

LABEL_122:
    if (v57)
    {
      free(v57);
    }

    return 0;
  }

  if ((*(*(a1 + 64) + 158) & 1) != 0 || gLogDatapath != 1)
  {
    return 0;
  }

  v41 = __nwlog_obj();
  result = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v42 = *(a1 + 64);
    v43 = (v42 + 74);
    v44 = *(v42 + 488);
    v45 = *(*(v42 + 480) + 372);
    v46 = *(v42 + 860);
    if (v44)
    {
      LODWORD(v44) = *(v44 + 424);
    }

    *buf = 136447490;
    v113 = "nw_http1_connection_fulfill_frame_request_block_invoke";
    v114 = 2082;
    v115 = v43;
    v116 = 2080;
    v117 = " ";
    v118 = 1024;
    *v119 = v45;
    *&v119[4] = 1024;
    *&v119[6] = v46;
    LOWORD(v120) = 1024;
    *(&v120 + 2) = v44;
    _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> skipping partial frame, split frames not allowed", buf, 0x32u);
    return 0;
  }

  return result;
}

uint64_t ___ZL41nw_http1_connection_fulfill_frame_requestP19nw_http1_connectionP16nw_frame_array_sS2_bbjjjPj_block_invoke_112(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (*(*(a1 + 32) + 8) + 48);
    v3 = 16;
    if (*(a1 + 48))
    {
      v4 = 32;
    }

    else
    {
      v4 = 16;
    }

    if (*(a1 + 48))
    {
      v5 = 40;
    }

    else
    {
      v5 = 24;
    }

    v6 = (a2 + v4);
    v7 = *v6;
    v8 = *(a2 + v5);
    v9 = (*v6 + v5);
    if (*v6)
    {
      v2 = v9;
    }

    *v2 = v8;
    *v8 = v7;
    *v6 = 0;
    v6[1] = 0;
    v10 = *(a1 + 40);
    if (*(a1 + 48))
    {
      v3 = 32;
      v11 = 40;
    }

    else
    {
      v11 = 24;
    }

    v12 = (a2 + v3);
    *v12 = 0;
    v13 = *(v10 + 8);
    *(a2 + v11) = v13;
    *v13 = a2;
    *(v10 + 8) = v12;
  }

  return 1;
}

void ___ZL40nw_http1_connection_process_input_framesP19nw_http1_connectionPjS1_P16nw_frame_array_sS3_b_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v160 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v6 = *(a1 + 72);
    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v107 = __nwlog_obj();
      v108 = os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG);
      v6 = *(a1 + 72);
      if (v108)
      {
        v109 = (v6 + 74);
        v110 = *(v6 + 488);
        v111 = *(*(v6 + 480) + 372);
        v112 = *(v6 + 860);
        if (v110)
        {
          LODWORD(v110) = *(v110 + 424);
        }

        *buf = 136448002;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = v109;
        v154 = 2080;
        *v155 = " ";
        *&v155[8] = 1024;
        *&v155[10] = v111;
        *&v155[14] = 1024;
        *&v155[16] = v112;
        LOWORD(v156) = 1024;
        *(&v156 + 2) = v110;
        HIWORD(v156) = 2048;
        *v157 = a2;
        *&v157[8] = 1024;
        *&v157[10] = a3;
        _os_log_impl(&dword_181A37000, v107, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> body bytes found (%p, %u bytes):", buf, 0x42u);
        v6 = *(a1 + 72);
      }
    }

    if (*(*(*(a1 + 32) + 8) + 24) == a3)
    {
      if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v113 = __nwlog_obj();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
        {
          v114 = *(a1 + 72);
          v115 = (v114 + 74);
          v116 = *(v114 + 488);
          v117 = *(*(v114 + 480) + 372);
          v118 = *(v114 + 860);
          if (v116)
          {
            LODWORD(v116) = *(v116 + 424);
          }

          v119 = *(a1 + 80);
          *buf = 136447746;
          v151 = "nw_http1_connection_process_input_frames_block_invoke";
          v152 = 2082;
          v153 = v115;
          v154 = 2080;
          *v155 = " ";
          *&v155[8] = 1024;
          *&v155[10] = v117;
          *&v155[14] = 1024;
          *&v155[16] = v118;
          LOWORD(v156) = 1024;
          *(&v156 + 2) = v116;
          HIWORD(v156) = 2048;
          *v157 = v119;
          _os_log_impl(&dword_181A37000, v113, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> entire frame is body, moving to destination array %p", buf, 0x3Cu);
        }
      }

      v7 = *(a1 + 80);
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v9 = 32;
      if (!*(a1 + 88))
      {
        v9 = 16;
      }

      v10 = 24;
      if (*(a1 + 88))
      {
        v10 = 40;
      }

      v11 = (v8 + v9);
      *v11 = 0;
      v12 = *(v7 + 8);
      *(v8 + v10) = v12;
      *v12 = v8;
      *(v7 + 8) = v11;
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 24) + 1;
      *(v13 + 24) = v14;
      if (v14 == v14 << 31 >> 31)
      {
LABEL_75:
        v56 = *(*(a1 + 56) + 8);
        v57 = *(v56 + 24);
        v58 = *(*(*(a1 + 32) + 8) + 24);
        *(v56 + 24) = v57 + v58;
        if (!__CFADD__(v57, v58))
        {
LABEL_96:
          *(*(*(a1 + 40) + 8) + 24) = 0;
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v59 = *(*(*(a1 + 32) + 8) + 24);
        v60 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 136446978;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = "bytes_processed";
        v154 = 2048;
        *v155 = v59;
        *&v155[8] = 2048;
        *&v155[10] = v60;
        v61 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v148 = 0;
        if (__nwlog_fault(v61, &type, &v148))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v64 = *(*(*(a1 + 32) + 8) + 24);
              v65 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "bytes_processed";
              v154 = 2048;
              *v155 = v64;
              *&v155[8] = 2048;
              *&v155[10] = v65;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_92:
              _os_log_impl(&dword_181A37000, v62, v63, v66, buf, 0x2Au);
            }
          }

          else if (v148 == 1)
          {
            backtrace_string = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            v68 = os_log_type_enabled(gLogObj, type);
            if (backtrace_string)
            {
              if (v68)
              {
                v69 = *(*(*(a1 + 32) + 8) + 24);
                v70 = *(*(*(a1 + 56) + 8) + 24);
                *buf = 136447234;
                v151 = "nw_http1_connection_process_input_frames_block_invoke";
                v152 = 2082;
                v153 = "bytes_processed";
                v154 = 2048;
                *v155 = v69;
                *&v155[8] = 2048;
                *&v155[10] = v70;
                *&v155[18] = 2082;
                v156 = backtrace_string;
                _os_log_impl(&dword_181A37000, v62, v63, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(backtrace_string);
              goto LABEL_93;
            }

            if (v68)
            {
              v73 = *(*(*(a1 + 32) + 8) + 24);
              v74 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "bytes_processed";
              v154 = 2048;
              *v155 = v73;
              *&v155[8] = 2048;
              *&v155[10] = v74;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
              goto LABEL_92;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v62 = gLogObj;
            v63 = type;
            if (os_log_type_enabled(gLogObj, type))
            {
              v71 = *(*(*(a1 + 32) + 8) + 24);
              v72 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136446978;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "bytes_processed";
              v154 = 2048;
              *v155 = v71;
              *&v155[8] = 2048;
              *&v155[10] = v72;
              v66 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
              goto LABEL_92;
            }
          }
        }

LABEL_93:
        if (v61)
        {
          free(v61);
        }

        *(*(*(a1 + 56) + 8) + 24) = -1;
        goto LABEL_96;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446978;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2082;
      v153 = "frames_processed";
      v154 = 2048;
      *v155 = 1;
      *&v155[8] = 2048;
      *&v155[10] = v15;
      v16 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v148 = 0;
      if (__nwlog_fault(v16, &type, &v148))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v19 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v19;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_71:
            _os_log_impl(&dword_181A37000, v17, v18, v20, buf, 0x2Au);
          }
        }

        else if (v148 == 1)
        {
          v49 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          v50 = os_log_type_enabled(gLogObj, type);
          if (v49)
          {
            if (v50)
            {
              v51 = *(*(*(a1 + 48) + 8) + 24);
              *buf = 136447234;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "frames_processed";
              v154 = 2048;
              *v155 = 1;
              *&v155[8] = 2048;
              *&v155[10] = v51;
              *&v155[18] = 2082;
              v156 = v49;
              _os_log_impl(&dword_181A37000, v17, v18, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v49);
            goto LABEL_72;
          }

          if (v50)
          {
            v55 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v55;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_71;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v17 = gLogObj;
          v18 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v52 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v52;
            v20 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_71;
          }
        }
      }

LABEL_72:
      if (v16)
      {
        free(v16);
      }

      *(*(*(a1 + 48) + 8) + 24) = -1;
      goto LABEL_75;
    }

    if ((*(v6 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v120 = __nwlog_obj();
      v121 = os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG);
      v6 = *(a1 + 72);
      if (v121)
      {
        v122 = (v6 + 74);
        v123 = *(v6 + 488);
        v124 = *(*(v6 + 480) + 372);
        v125 = *(v6 + 860);
        if (v123)
        {
          LODWORD(v123) = *(v123 + 424);
        }

        v126 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 136447746;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = v122;
        v154 = 2080;
        *v155 = " ";
        *&v155[8] = 1024;
        *&v155[10] = v124;
        *&v155[14] = 1024;
        *&v155[16] = v125;
        LOWORD(v156) = 1024;
        *(&v156 + 2) = v123;
        HIWORD(v156) = 2048;
        *v157 = v126;
        _os_log_impl(&dword_181A37000, v120, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> partial frame is body, trimming frame %p", buf, 0x3Cu);
        v6 = *(a1 + 72);
      }
    }

    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 24);
    *(v25 + 24) = 0;
    v27 = *(*(*(a1 + 64) + 8) + 24);
    v28 = a2 - v27;
    if ((*(v6 + 158) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_25;
    }

    v127 = a2 - v27;
    v128 = __nwlog_obj();
    v129 = os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG);
    v130 = *(a1 + 72);
    if (v129)
    {
      v131 = (v130 + 74);
      v132 = *(v130 + 488);
      v133 = *(*(v130 + 480) + 372);
      v134 = *(v130 + 860);
      if (v132)
      {
        LODWORD(v132) = *(v132 + 424);
      }

      v135 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 136448258;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2082;
      v153 = v131;
      v154 = 2080;
      *v155 = " ";
      *&v155[8] = 1024;
      *&v155[10] = v133;
      *&v155[14] = 1024;
      *&v155[16] = v134;
      LOWORD(v156) = 1024;
      *(&v156 + 2) = v132;
      HIWORD(v156) = 1024;
      *v157 = v127;
      *&v157[4] = 2048;
      *&v157[6] = v135;
      v158 = 2048;
      v159 = a2;
      _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> claiming %u bytes from beginning of frame (%p -> %p)", buf, 0x4Cu);
      v130 = *(a1 + 72);
    }

    v28 = v127;
    if (v130)
    {
LABEL_25:
      v29 = v26;
      goto LABEL_26;
    }

    __nwlog_obj();
    *buf = 136446210;
    v151 = "nw_http1_get_output_protocol";
    v136 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (__nwlog_fault(v136, &type, &v148))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v137 = __nwlog_obj();
        v138 = type;
        if (os_log_type_enabled(v137, type))
        {
          *buf = 136446210;
          v151 = "nw_http1_get_output_protocol";
          v139 = "%{public}s called with null connection";
LABEL_179:
          _os_log_impl(&dword_181A37000, v137, v138, v139, buf, 0xCu);
        }
      }

      else if (v148 == 1)
      {
        v146 = __nw_create_backtrace_string();
        v137 = __nwlog_obj();
        v138 = type;
        v147 = os_log_type_enabled(v137, type);
        if (v146)
        {
          if (v147)
          {
            *buf = 136446466;
            v151 = "nw_http1_get_output_protocol";
            v152 = 2082;
            v153 = v146;
            _os_log_impl(&dword_181A37000, v137, v138, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v146);
          goto LABEL_180;
        }

        if (v147)
        {
          *buf = 136446210;
          v151 = "nw_http1_get_output_protocol";
          v139 = "%{public}s called with null connection, no backtrace";
          goto LABEL_179;
        }
      }

      else
      {
        v137 = __nwlog_obj();
        v138 = type;
        if (os_log_type_enabled(v137, type))
        {
          *buf = 136446210;
          v151 = "nw_http1_get_output_protocol";
          v139 = "%{public}s called with null connection, backtrace limit exceeded";
          goto LABEL_179;
        }
      }
    }

LABEL_180:
    if (v136)
    {
      free(v136);
    }

    v29 = v26;
    v28 = v127;
LABEL_26:
    nw_frame_claim(v29, a2, v28, 0);
    if (nw_frame_unclaimed_length(v26) == a3)
    {
      if ((*(*(a1 + 72) + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v30 = __nwlog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(a1 + 72);
          v32 = (v31 + 74);
          v33 = *(v31 + 488);
          v34 = *(*(v31 + 480) + 372);
          v35 = *(v31 + 860);
          if (v33)
          {
            LODWORD(v33) = *(v33 + 424);
          }

          *buf = 136447490;
          v151 = "nw_http1_connection_process_input_frames_block_invoke";
          v152 = 2082;
          v153 = v32;
          v154 = 2080;
          *v155 = " ";
          *&v155[8] = 1024;
          *&v155[10] = v34;
          *&v155[14] = 1024;
          *&v155[16] = v35;
          LOWORD(v156) = 1024;
          *(&v156 + 2) = v33;
          _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> body extends to end of frame, continuing", buf, 0x32u);
        }
      }

LABEL_103:
      v75 = *(a1 + 80);
      v76 = 8;
      if (!*(a1 + 88))
      {
        v76 = 4;
      }

      v77 = 6;
      if (*(a1 + 88))
      {
        v77 = 10;
      }

      v78 = &v26[v76];
      *v78 = 0;
      v79 = *(v75 + 8);
      *&v26[v77] = v79;
      *v79 = v26;
      *(v75 + 8) = v78;
      v80 = *(*(a1 + 48) + 8);
      v81 = *(v80 + 24) + 1;
      *(v80 + 24) = v81;
      if (v81 == v81 << 31 >> 31)
      {
LABEL_125:
        v93 = *(*(a1 + 56) + 8);
        v94 = *(v93 + 24);
        *(v93 + 24) = v94 + a3;
        if (!__CFADD__(v94, a3))
        {
          return;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = a3;
        v96 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 136446978;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = "bytes_processed";
        v154 = 2048;
        *v155 = a3;
        *&v155[8] = 2048;
        *&v155[10] = v96;
        v97 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v148 = 0;
        if (!__nwlog_fault(v97, &type, &v148))
        {
          goto LABEL_141;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v100 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "bytes_processed";
            v154 = 2048;
            *v155 = v95;
            *&v155[8] = 2048;
            *&v155[10] = v100;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_140:
            _os_log_impl(&dword_181A37000, v98, v99, v101, buf, 0x2Au);
          }
        }

        else if (v148 == 1)
        {
          v102 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          v103 = os_log_type_enabled(gLogObj, type);
          if (v102)
          {
            if (v103)
            {
              v104 = *(*(*(a1 + 56) + 8) + 24);
              *buf = 136447234;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "bytes_processed";
              v154 = 2048;
              *v155 = v95;
              *&v155[8] = 2048;
              *&v155[10] = v104;
              *&v155[18] = 2082;
              v156 = v102;
              _os_log_impl(&dword_181A37000, v98, v99, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v102);
            goto LABEL_141;
          }

          if (v103)
          {
            v106 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "bytes_processed";
            v154 = 2048;
            *v155 = v95;
            *&v155[8] = 2048;
            *&v155[10] = v106;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_140;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v98 = gLogObj;
          v99 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v105 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "bytes_processed";
            v154 = 2048;
            *v155 = v95;
            *&v155[8] = 2048;
            *&v155[10] = v105;
            v101 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_140;
          }
        }

LABEL_141:
        if (v97)
        {
          free(v97);
        }

        *(*(*(a1 + 56) + 8) + 24) = -1;
        return;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v82 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136446978;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2082;
      v153 = "frames_processed";
      v154 = 2048;
      *v155 = 1;
      *&v155[8] = 2048;
      *&v155[10] = v82;
      v83 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v148 = 0;
      if (__nwlog_fault(v83, &type, &v148))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v86 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v86;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_121:
            _os_log_impl(&dword_181A37000, v84, v85, v87, buf, 0x2Au);
          }
        }

        else if (v148 == 1)
        {
          v88 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          v89 = os_log_type_enabled(gLogObj, type);
          if (v88)
          {
            if (v89)
            {
              v90 = *(*(*(a1 + 48) + 8) + 24);
              *buf = 136447234;
              v151 = "nw_http1_connection_process_input_frames_block_invoke";
              v152 = 2082;
              v153 = "frames_processed";
              v154 = 2048;
              *v155 = 1;
              *&v155[8] = 2048;
              *&v155[10] = v90;
              *&v155[18] = 2082;
              v156 = v88;
              _os_log_impl(&dword_181A37000, v84, v85, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
            }

            free(v88);
            goto LABEL_122;
          }

          if (v89)
          {
            v92 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v92;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
            goto LABEL_121;
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v84 = gLogObj;
          v85 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            v91 = *(*(*(a1 + 48) + 8) + 24);
            *buf = 136446978;
            v151 = "nw_http1_connection_process_input_frames_block_invoke";
            v152 = 2082;
            v153 = "frames_processed";
            v154 = 2048;
            *v155 = 1;
            *&v155[8] = 2048;
            *&v155[10] = v91;
            v87 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
            goto LABEL_121;
          }
        }
      }

LABEL_122:
      if (v83)
      {
        free(v83);
      }

      *(*(*(a1 + 48) + 8) + 24) = -1;
      goto LABEL_125;
    }

    if ((*(*(a1 + 72) + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v140 = __nwlog_obj();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEBUG))
      {
        v141 = *(a1 + 72);
        v142 = (v141 + 74);
        v143 = *(v141 + 488);
        v144 = *(*(v141 + 480) + 372);
        v145 = *(v141 + 860);
        if (v143)
        {
          LODWORD(v143) = *(v143 + 424);
        }

        *buf = 136447746;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = v142;
        v154 = 2080;
        *v155 = " ";
        *&v155[8] = 1024;
        *&v155[10] = v144;
        *&v155[14] = 1024;
        *&v155[16] = v145;
        LOWORD(v156) = 1024;
        *(&v156 + 2) = v143;
        HIWORD(v156) = 2048;
        *v157 = v26;
        _os_log_impl(&dword_181A37000, v140, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> bytes left over after trimming, splitting frame %p", buf, 0x3Cu);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = v26;
    v26 = nw_frame_split((*(*(a1 + 40) + 8) + 24), a3);
    if (v26)
    {
LABEL_102:
      *(*(*(a1 + 64) + 8) + 24) = nw_frame_unclaimed_bytes(*(*(*(a1 + 40) + 8) + 24), (*(*(a1 + 32) + 8) + 24));
      goto LABEL_103;
    }

    if ((*(*(a1 + 72) + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v38 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 72);
        v40 = (v39 + 74);
        v41 = *(v39 + 488);
        v42 = *(*(v39 + 480) + 372);
        v43 = *(v39 + 860);
        if (v41)
        {
          LODWORD(v41) = *(v41 + 424);
        }

        v44 = *(*(*(a1 + 40) + 8) + 24);
        *buf = 136448002;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2082;
        v153 = v40;
        v154 = 2080;
        *v155 = " ";
        *&v155[8] = 1024;
        *&v155[10] = v42;
        *&v155[14] = 1024;
        *&v155[16] = v43;
        LOWORD(v156) = 1024;
        *(&v156 + 2) = v41;
        HIWORD(v156) = 2048;
        *v157 = v44;
        *&v157[8] = 1024;
        *&v157[10] = a3;
        _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to split frame %p at offset %u", buf, 0x42u);
      }
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    v151 = "nw_http1_connection_process_input_frames_block_invoke";
    v45 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v148 = 0;
    if (__nwlog_fault(v45, &type, &v148))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v46 = gLogObj;
        v47 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed";
        goto LABEL_99;
      }

      if (v148 != 1)
      {
        v46 = __nwlog_obj();
        v47 = type;
        if (!os_log_type_enabled(v46, type))
        {
          goto LABEL_100;
        }

        *buf = 136446210;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed, backtrace limit exceeded";
        goto LABEL_99;
      }

      v53 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = type;
      v54 = os_log_type_enabled(v46, type);
      if (v53)
      {
        if (v54)
        {
          *buf = 136446466;
          v151 = "nw_http1_connection_process_input_frames_block_invoke";
          v152 = 2082;
          v153 = v53;
          _os_log_impl(&dword_181A37000, v46, v47, "%{public}s nw_frame_split with partial frame failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v53);
        goto LABEL_100;
      }

      if (v54)
      {
        *buf = 136446210;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v48 = "%{public}s nw_frame_split with partial frame failed, no backtrace";
LABEL_99:
        _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
      }
    }

LABEL_100:
    if (v45)
    {
      free(v45);
    }

    goto LABEL_102;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446722;
  v151 = "nw_http1_connection_process_input_frames_block_invoke";
  v152 = 2048;
  v153 = a2;
  v154 = 1024;
  *v155 = a3;
  v21 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v148 = 0;
  if (__nwlog_fault(v21, &type, &v148))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      *buf = 136446722;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2048;
      v153 = a2;
      v154 = 1024;
      *v155 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u)";
      goto LABEL_59;
    }

    if (v148 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = type;
      if (!os_log_type_enabled(gLogObj, type))
      {
        goto LABEL_60;
      }

      *buf = 136446722;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2048;
      v153 = a2;
      v154 = 1024;
      *v155 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u), backtrace limit exceeded";
      goto LABEL_59;
    }

    v36 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    v23 = type;
    v37 = os_log_type_enabled(gLogObj, type);
    if (v36)
    {
      if (v37)
      {
        *buf = 136446978;
        v151 = "nw_http1_connection_process_input_frames_block_invoke";
        v152 = 2048;
        v153 = a2;
        v154 = 1024;
        *v155 = a3;
        *&v155[4] = 2082;
        *&v155[6] = v36;
        _os_log_impl(&dword_181A37000, v22, v23, "%{public}s unexpected values for body_start (%p) or body_length (%u), dumping backtrace:%{public}s", buf, 0x26u);
      }

      free(v36);
      goto LABEL_60;
    }

    if (v37)
    {
      *buf = 136446722;
      v151 = "nw_http1_connection_process_input_frames_block_invoke";
      v152 = 2048;
      v153 = a2;
      v154 = 1024;
      *v155 = a3;
      v24 = "%{public}s unexpected values for body_start (%p) or body_length (%u), no backtrace";
LABEL_59:
      _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0x1Cu);
    }
  }

LABEL_60:
  if (v21)
  {
    free(v21);
  }
}

uint64_t nw_http1_connection_execute_parser(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v82 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v57 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v57, &type, &v68))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes";
      goto LABEL_95;
    }

    if (v68 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v64 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (!v64)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes, no backtrace";
      goto LABEL_95;
    }

    if (!v64)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v63 = "%{public}s called with null bytes, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v57 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v57, &type, &v68))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes_parsed";
      goto LABEL_95;
    }

    if (v68 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes_parsed, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v65 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (!v65)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null bytes_parsed, no backtrace";
      goto LABEL_95;
    }

    if (!v65)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v63 = "%{public}s called with null bytes_parsed, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  if (!a5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v57 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v57, &type, &v68))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null body_block";
      goto LABEL_95;
    }

    if (v68 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (!os_log_type_enabled(v58, type))
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null body_block, backtrace limit exceeded";
      goto LABEL_95;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v66 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (!v66)
      {
        goto LABEL_96;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_execute_parser";
      v60 = "%{public}s called with null body_block, no backtrace";
      goto LABEL_95;
    }

    if (!v66)
    {
      goto LABEL_90;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v63 = "%{public}s called with null body_block, dumping backtrace:%{public}s";
    goto LABEL_89;
  }

  v6 = a3;
  if ((*(a1 + 872) & 0x200) != 0)
  {
    (*(a5 + 16))(a5, a2, a3);
    return 1;
  }

  *(a1 + 792) = a5;
  v9 = *(*(a1 + 488) + 428);
  v10 = a3;
  v11 = *(a1 + 224);
  if (!v11)
  {
    v12 = a5;
    v13 = &a2[a3];
    if (*(a1 + 208))
    {
      *(a1 + 208) = a2;
    }

    v14 = llhttp__internal__run(a1 + 200, a2, &a2[a3]);
    if (v14)
    {
      *(a1 + 256) = v14;
      v15 = *(a1 + 208);
      if (!v15 || (v11 = (*(a1 + 216))(a1 + 200, v15, &a2[v10])) == 0)
      {
        *(a1 + 792) = 0;
        goto LABEL_35;
      }

      *(a1 + 224) = v11;
      *(a1 + 240) = v13;
    }

    else
    {
      v11 = *(a1 + 224);
    }

    a5 = v12;
  }

  *(a1 + 792) = 0;
  if (v11 > 20)
  {
    if (v11 != 21)
    {
      if (v11 != 22)
      {
        goto LABEL_42;
      }

      v22 = a5;
      v23 = *(a1 + 240) - a2;
      if ((*(a1 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a1 + 488);
          v26 = *(*(a1 + 480) + 372);
          v27 = *(a1 + 860);
          if (v25)
          {
            LODWORD(v25) = *(v25 + 424);
          }

          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v71 = " ";
          LOWORD(v72) = 1024;
          *(&v72 + 2) = v26;
          HIWORD(v72) = 1024;
          v73 = v27;
          v74 = 1024;
          v75 = v25;
          v76 = 1024;
          LODWORD(v77) = v23;
          _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> upgraded after parsing %u bytes", buf, 0x38u);
        }
      }

      *(a1 + 872) |= 0x200u;
      v10 = v23;
      if (v6 > v23)
      {
        (*(v22 + 16))(v22, &a2[v23], v6 - v23);
      }

      *a4 = v6;
LABEL_68:
      if (v10)
      {
        nw_http_transaction_metadata_increment_inbound_header_size(*(*(a1 + 488) + 352), v10);
      }

      return 1;
    }

    v37 = a5;
    v38 = *(a1 + 240);
    v39 = v38 - a2;
    *a4 = v38 - a2;
    if ((*(a1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v40 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v41 = *(a1 + 488);
        v42 = *(*(a1 + 480) + 372);
        v43 = *(a1 + 860);
        if (v41)
        {
          LODWORD(v41) = *(v41 + 424);
        }

        v44 = *a4;
        *buf = 136447746;
        *&buf[4] = "nw_http1_connection_execute_parser";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 74;
        *&buf[22] = 2080;
        v71 = " ";
        LOWORD(v72) = 1024;
        *(&v72 + 2) = v42;
        HIWORD(v72) = 1024;
        v73 = v43;
        v74 = 1024;
        v75 = v41;
        v76 = 1024;
        LODWORD(v77) = v44;
        _os_log_impl(&dword_181A37000, v40, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> paused parser after processing %u bytes", buf, 0x38u);
      }

      v39 = *a4;
    }

    v10 = v39;
    v45 = *(a1 + 872);
    if ((v9 & 2) == 0)
    {
      if ((v45 & 4) != 0)
      {
        goto LABEL_68;
      }

      v46 = *(a1 + 488);
      if (v10)
      {
        nw_http_transaction_metadata_increment_inbound_header_size(*(v46 + 352), v10);
        v46 = *(a1 + 488);
      }

      v47 = *(v46 + 428);
      v48 = *(a1 + 158);
      if ((v47 & 2) != 0)
      {
        if ((*(a1 + 158) & 1) == 0)
        {
          v49 = __nwlog_obj();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v50 = *(a1 + 488);
            v51 = *(*(a1 + 480) + 372);
            v52 = *(a1 + 860);
            if (v50)
            {
              LODWORD(v50) = *(v50 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_execute_parser";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 74;
            *&buf[22] = 2080;
            v71 = " ";
            LOWORD(v72) = 1024;
            *(&v72 + 2) = v51;
            HIWORD(v72) = 1024;
            v73 = v52;
            v74 = 1024;
            v75 = v50;
            _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> resuming after processing headers", buf, 0x32u);
          }
        }

        if (*(a1 + 224) == 21)
        {
          *(a1 + 224) = 0;
        }

        *buf = 0;
        result = nw_http1_connection_execute_parser(a1, v38, v6 - *a4, buf, v37);
        *a4 += *buf;
        return result;
      }

LABEL_73:
      if ((v48 & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v53 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
        {
          v54 = *(a1 + 488);
          v55 = *(*(a1 + 480) + 372);
          v56 = *(a1 + 860);
          if (v54)
          {
            LODWORD(v54) = *(v54 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v71 = " ";
          LOWORD(v72) = 1024;
          *(&v72 + 2) = v55;
          HIWORD(v72) = 1024;
          v73 = v56;
          v74 = 1024;
          v75 = v54;
          _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> got informational response", buf, 0x32u);
        }
      }

      *(a1 + 872) |= 0x10u;
      return 1;
    }

    if ((v45 & 4) != 0)
    {
      goto LABEL_79;
    }

    if ((*(*(a1 + 488) + 428) & 2) == 0)
    {
      v48 = *(a1 + 158);
      goto LABEL_73;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_connection_execute_parser";
    v57 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v68 = 0;
    if (!__nwlog_fault(v57, &type, &v68))
    {
      goto LABEL_96;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v60 = "%{public}s paused in the middle of parsing the body";
LABEL_95:
        _os_log_impl(&dword_181A37000, v58, v59, v60, buf, 0xCu);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    if (v68 != 1)
    {
      v58 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v58, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v60 = "%{public}s paused in the middle of parsing the body, backtrace limit exceeded";
        goto LABEL_95;
      }

LABEL_96:
      if (v57)
      {
        free(v57);
      }

      return 0;
    }

    backtrace_string = __nw_create_backtrace_string();
    v58 = __nwlog_obj();
    v59 = type;
    v62 = os_log_type_enabled(v58, type);
    if (!backtrace_string)
    {
      if (v62)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_execute_parser";
        v60 = "%{public}s paused in the middle of parsing the body, no backtrace";
        goto LABEL_95;
      }

      goto LABEL_96;
    }

    if (!v62)
    {
LABEL_90:
      free(backtrace_string);
      goto LABEL_96;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_connection_execute_parser";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v63 = "%{public}s paused in the middle of parsing the body, dumping backtrace:%{public}s";
LABEL_89:
    _os_log_impl(&dword_181A37000, v58, v59, v63, buf, 0x16u);
    goto LABEL_90;
  }

  if (v11)
  {
    if (v11 == 5)
    {
      v17 = *(a1 + 240) - a2;
      *a4 = v17;
      v10 = v17;
      if ((*(a1 + 158) & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 488);
          v20 = *(*(a1 + 480) + 372);
          v21 = *(a1 + 860);
          if (v19)
          {
            LODWORD(v19) = *(v19 + 424);
          }

          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_execute_parser";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 74;
          *&buf[22] = 2080;
          v71 = " ";
          LOWORD(v72) = 1024;
          *(&v72 + 2) = v20;
          HIWORD(v72) = 1024;
          v73 = v21;
          v74 = 1024;
          v75 = v19;
          v76 = 2048;
          v77 = v10;
          _os_log_impl(&dword_181A37000, v18, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Extra bytes after closed connection, stopping after %zu bytes", buf, 0x3Cu);
        }
      }

      goto LABEL_79;
    }

LABEL_42:
    if ((*(a1 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v32 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 488);
        v34 = *(*(a1 + 480) + 372);
        v35 = *(a1 + 860);
        if (v33)
        {
          LODWORD(v33) = *(v33 + 424);
        }

        v36 = *(a1 + 232);
        *buf = 136448258;
        *&buf[4] = "nw_http1_connection_execute_parser";
        *&buf[12] = 2082;
        *&buf[14] = a1 + 74;
        *&buf[22] = 2080;
        v71 = " ";
        LOWORD(v72) = 1024;
        *(&v72 + 2) = v34;
        HIWORD(v72) = 1024;
        v73 = v35;
        v74 = 1024;
        v75 = v33;
        v76 = 2080;
        v77 = v36;
        v78 = 1040;
        v79 = v6;
        v80 = 2096;
        v81 = a2;
        _os_log_impl(&dword_181A37000, v32, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Failed to parse bytes (%s): \n%{network:data}.*P", buf, 0x4Cu);
      }
    }

    result = 0;
    *a4 = 0;
    return result;
  }

LABEL_35:
  if ((*(a1 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 488);
      v30 = *(*(a1 + 480) + 372);
      v31 = *(a1 + 860);
      if (v29)
      {
        LODWORD(v29) = *(v29 + 424);
      }

      *buf = 136447746;
      *&buf[4] = "nw_http1_connection_execute_parser";
      *&buf[12] = 2082;
      *&buf[14] = a1 + 74;
      *&buf[22] = 2080;
      v71 = " ";
      LOWORD(v72) = 1024;
      *(&v72 + 2) = v30;
      HIWORD(v72) = 1024;
      v73 = v31;
      v74 = 1024;
      v75 = v29;
      v76 = 1024;
      LODWORD(v77) = v6;
      _os_log_impl(&dword_181A37000, v28, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> parsed %u bytes", buf, 0x38u);
    }
  }

  *a4 = v6;
  if ((v9 & 2) == 0)
  {
    goto LABEL_68;
  }

LABEL_79:
  result = 1;
  if (v10)
  {
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 0x40000000;
    v67[2] = ___ZL34nw_http1_connection_execute_parserP19nw_http1_connectionPKhjPjU13block_pointerFvPKcjE_block_invoke;
    v67[3] = &__block_descriptor_tmp_121;
    v67[4] = a1;
    v67[5] = v10;
    v67[6] = a2;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = __nw_http_diag_log_for_level_block_invoke;
    v71 = &unk_1E6A303F0;
    v73 = 3;
    LOBYTE(v74) = 1;
    v72 = v67;
    os_unfair_lock_lock(&lock);
    (*&buf[16])(buf);
    os_unfair_lock_unlock(&lock);
    nw_http_transaction_metadata_increment_inbound_body_transfer_size(*(*(a1 + 488) + 352), v10);
    return 1;
  }

  return result;
}

uint64_t ___ZL34nw_protocol_http1_get_input_framesP11nw_protocolS0_jjjP16nw_frame_array_s_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*(a1 + 48))
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 186) = v3 & 0x80 | *(a2 + 186) & 0x7F;
  v4 = *(a1 + 32);
  if ((*(v4 + 428) & 0x400) != 0)
  {
    v2 = **(*(*(a1 + 40) + 8) + 8) == a2;
  }

  nw_frame_set_metadata(a2, *(v4 + 368), 1, v2);
  return 1;
}

void nw_http1_connection_inbound_frame_finalizer(nw_frame *a1, int a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame";
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v21 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v21)
        {
          *buf = 136446466;
          v30 = "nw_http1_connection_inbound_frame_finalizer";
          v31 = 2082;
          v32 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_75:
        if (!v9)
        {
          return;
        }

        goto LABEL_76;
      }

      if (!v21)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame, no backtrace";
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    goto LABEL_74;
  }

  if (!a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_75;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v27 != 1)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (!os_log_type_enabled(v10, type))
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v30 = "nw_http1_connection_inbound_frame_finalizer";
        v12 = "%{public}s called with null context, backtrace limit exceeded";
        goto LABEL_74;
      }

      v22 = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v23 = os_log_type_enabled(v10, type);
      if (!v22)
      {
        if (!v23)
        {
          goto LABEL_75;
        }

        *buf = 136446210;
        v30 = "nw_http1_connection_inbound_frame_finalizer";
        v12 = "%{public}s called with null context, no backtrace";
        goto LABEL_74;
      }

      if (!v23)
      {
        goto LABEL_56;
      }

      *buf = 136446466;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v31 = 2082;
      v32 = v22;
      v24 = "%{public}s called with null context, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

    v10 = __nwlog_obj();
    v11 = type;
    if (!os_log_type_enabled(v10, type))
    {
      goto LABEL_75;
    }

    *buf = 136446210;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v12 = "%{public}s called with null context";
LABEL_74:
    _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
    goto LABEL_75;
  }

  if ((*(a1 + 102) & 4) == 0)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null metadata";
      goto LABEL_74;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null metadata, backtrace limit exceeded";
      goto LABEL_74;
    }

    v22 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v25 = os_log_type_enabled(v10, type);
    if (!v22)
    {
      if (!v25)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null metadata, no backtrace";
      goto LABEL_74;
    }

    if (!v25)
    {
      goto LABEL_56;
    }

    *buf = 136446466;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v31 = 2082;
    v32 = v22;
    v24 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_55:
    _os_log_impl(&dword_181A37000, v10, v11, v24, buf, 0x16u);
    goto LABEL_56;
  }

  v4 = *(a1 + 26);
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v30 = "nw_http1_connection_inbound_frame_finalizer";
    v9 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v9, &type, &v27))
    {
      goto LABEL_75;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null http1_connection";
      goto LABEL_74;
    }

    if (v27 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (!os_log_type_enabled(v10, type))
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_74;
    }

    v22 = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v26 = os_log_type_enabled(v10, type);
    if (!v22)
    {
      if (!v26)
      {
        goto LABEL_75;
      }

      *buf = 136446210;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v12 = "%{public}s called with null http1_connection, no backtrace";
      goto LABEL_74;
    }

    if (v26)
    {
      *buf = 136446466;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v31 = 2082;
      v32 = v22;
      v24 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
      goto LABEL_55;
    }

LABEL_56:
    free(v22);
    if (!v9)
    {
      return;
    }

LABEL_76:
    free(v9);
    return;
  }

  if ((*(v4 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v13 = a2;
    v15 = __nwlog_obj();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    a2 = v13;
    if (v16)
    {
      v17 = *(v4 + 488);
      v18 = *(*(v4 + 480) + 372);
      v19 = *(v4 + 860);
      if (v17)
      {
        LODWORD(v17) = *(v17 + 424);
      }

      *buf = 136448258;
      v30 = "nw_http1_connection_inbound_frame_finalizer";
      v31 = 2082;
      v32 = (v4 + 74);
      v33 = 2080;
      v34 = " ";
      v35 = 1024;
      v36 = v18;
      v37 = 1024;
      v38 = v19;
      v39 = 1024;
      v40 = v17;
      v41 = 2048;
      v42 = a1;
      v43 = 1024;
      v44 = v13;
      v45 = 2048;
      v46 = a3;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> finalizing input frame %p (success %u, context %p)", buf, 0x4Cu);
      a2 = v13;
    }
  }

  v5 = (v4 + 672);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  if (v6)
  {
    v5 = (v6 + 24);
  }

  *v5 = v7;
  *v7 = v6;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  if (a2)
  {
    nw_frame_cache_return_frame(v4 + 696, a1);
  }

  else
  {
    if ((*(a1 + 102) & 0x100) == 0 || !g_channel_check_validity || g_channel_check_validity(a1, 0))
    {
      v8 = *(a1 + 14);
      if (v8)
      {
        free(v8);
      }
    }

    nw_frame_reset(a1, 0, 0, 0, 0);
    os_release(a1);
  }
}

void ___ZL34nw_http1_connection_execute_parserP19nw_http1_connectionPKhjPjU13block_pointerFvPKcjE_block_invoke(void *a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (__nwlog_http_diagnostics_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_http_diagnostics_log::onceToken, &__block_literal_global_40_47449);
    }

    v4 = ghttp_diagnosticsLogObj;
    if (os_log_type_enabled(ghttp_diagnosticsLogObj, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[5];
      v6 = a1[4] + 74;
      v7 = a1[6];
      v8 = 136446978;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 1040;
      v13 = v5;
      v14 = 2096;
      v15 = v7;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s%sH1 Inbound Body Data:\n%{network:data}.*P", &v8, 0x26u);
    }
  }
}

void nw_protocol_http1_output_finished(nw_protocol *a1, nw_protocol *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_get_http1_protocol";
    v71 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v71, v108, type))
    {
      goto LABEL_205;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null protocol";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      backtrace_string = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = v108[0];
      v78 = os_log_type_enabled(v72, v108[0]);
      if (backtrace_string)
      {
        if (v78)
        {
          *buf = 136446466;
          v111 = "nw_http1_get_http1_protocol";
          v112 = 2082;
          *v113 = backtrace_string;
          _os_log_impl(&dword_181A37000, v72, v73, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_205:
        if (!v71)
        {
          goto LABEL_207;
        }

LABEL_206:
        free(v71);
        goto LABEL_207;
      }

      if (!v78)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_204;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_get_http1_protocol";
    v71 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v71, v108, type))
    {
      goto LABEL_205;
    }

    if (v108[0] != OS_LOG_TYPE_FAULT)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v72 = __nwlog_obj();
        v73 = v108[0];
        if (!os_log_type_enabled(v72, v108[0]))
        {
          goto LABEL_205;
        }

        *buf = 136446210;
        v111 = "nw_http1_get_http1_protocol";
        v74 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_204;
      }

      v79 = __nw_create_backtrace_string();
      v72 = __nwlog_obj();
      v73 = v108[0];
      v80 = os_log_type_enabled(v72, v108[0]);
      if (!v79)
      {
        if (!v80)
        {
          goto LABEL_205;
        }

        *buf = 136446210;
        v111 = "nw_http1_get_http1_protocol";
        v74 = "%{public}s called with null handle, no backtrace";
        goto LABEL_204;
      }

      if (!v80)
      {
        goto LABEL_123;
      }

      *buf = 136446466;
      v111 = "nw_http1_get_http1_protocol";
      v112 = 2082;
      *v113 = v79;
      v81 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_122;
    }

    v72 = __nwlog_obj();
    v73 = v108[0];
    if (!os_log_type_enabled(v72, v108[0]))
    {
      goto LABEL_205;
    }

    *buf = 136446210;
    v111 = "nw_http1_get_http1_protocol";
    v74 = "%{public}s called with null handle";
LABEL_204:
    _os_log_impl(&dword_181A37000, v72, v73, v74, buf, 0xCu);
    goto LABEL_205;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_207:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v52 = _os_log_send_and_compose_impl();
      v108[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v52, v108, type))
      {
        goto LABEL_240;
      }

      if (v108[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        v76 = v108[0];
        if (!os_log_type_enabled(gLogObj, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_protocol_http1_output_finished";
        v55 = "%{public}s called with null http1";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        v76 = v108[0];
        if (!os_log_type_enabled(gLogObj, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_protocol_http1_output_finished";
        v55 = "%{public}s called with null http1, backtrace limit exceeded";
        goto LABEL_237;
      }

      v97 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v98 = gLogObj;
      v99 = v108[0];
      v100 = os_log_type_enabled(gLogObj, v108[0]);
      if (v97)
      {
        if (v100)
        {
          *buf = 136446466;
          v111 = "nw_protocol_http1_output_finished";
          v112 = 2082;
          *v113 = v97;
          _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v97);
        goto LABEL_240;
      }

      if (!v100)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null http1, no backtrace";
      goto LABEL_245;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_get_http1_protocol";
    v71 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v71, v108, type))
    {
      goto LABEL_205;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_connection";
      goto LABEL_204;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
      goto LABEL_204;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = v108[0];
    v90 = os_log_type_enabled(v72, v108[0]);
    if (!v79)
    {
      if (!v90)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_connection, no backtrace";
      goto LABEL_204;
    }

    if (v90)
    {
      *buf = 136446466;
      v111 = "nw_http1_get_http1_protocol";
      v112 = 2082;
      *v113 = v79;
      v81 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
      goto LABEL_122;
    }

LABEL_123:
    free(v79);
    if (!v71)
    {
      goto LABEL_207;
    }

    goto LABEL_206;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_get_http1_protocol";
    v71 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v71, v108, type))
    {
      goto LABEL_205;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_stream";
      goto LABEL_204;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v72 = __nwlog_obj();
      v73 = v108[0];
      if (!os_log_type_enabled(v72, v108[0]))
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_204;
    }

    v79 = __nw_create_backtrace_string();
    v72 = __nwlog_obj();
    v73 = v108[0];
    v89 = os_log_type_enabled(v72, v108[0]);
    if (!v79)
    {
      if (!v89)
      {
        goto LABEL_205;
      }

      *buf = 136446210;
      v111 = "nw_http1_get_http1_protocol";
      v74 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_204;
    }

    if (!v89)
    {
      goto LABEL_123;
    }

    *buf = 136446466;
    v111 = "nw_http1_get_http1_protocol";
    v112 = 2082;
    *v113 = v79;
    v81 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_122:
    _os_log_impl(&dword_181A37000, v72, v73, v81, buf, 0x16u);
    goto LABEL_123;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_207;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_protocol_http1_output_finished";
    v52 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, v108, type))
    {
      goto LABEL_240;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v108[0];
      if (!os_log_type_enabled(v75, v108[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null other_protocol";
      goto LABEL_237;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v108[0];
      if (!os_log_type_enabled(v75, v108[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_237;
    }

    v58 = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v108[0];
    v83 = os_log_type_enabled(v75, v108[0]);
    if (!v58)
    {
      if (!v83)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_237;
    }

    if (!v83)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v111 = "nw_protocol_http1_output_finished";
    v112 = 2082;
    *v113 = v58;
    v60 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
    goto LABEL_156;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
LABEL_225:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v52 = _os_log_send_and_compose_impl();
      v108[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v52, v108, type))
      {
        goto LABEL_240;
      }

      if (v108[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        v76 = v108[0];
        if (!os_log_type_enabled(gLogObj, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_protocol_http1_output_finished";
        v55 = "%{public}s called with null http1_stream";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v75 = gLogObj;
        v76 = v108[0];
        if (!os_log_type_enabled(gLogObj, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_protocol_http1_output_finished";
        v55 = "%{public}s called with null http1_stream, backtrace limit exceeded";
        goto LABEL_237;
      }

      v101 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v98 = gLogObj;
      v99 = v108[0];
      v102 = os_log_type_enabled(gLogObj, v108[0]);
      if (v101)
      {
        if (v102)
        {
          *buf = 136446466;
          v111 = "nw_protocol_http1_output_finished";
          v112 = 2082;
          *v113 = v101;
          _os_log_impl(&dword_181A37000, v98, v99, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v101);
        if (!v52)
        {
          return;
        }

LABEL_241:
        free(v52);
        return;
      }

      if (!v102)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null http1_stream, no backtrace";
LABEL_245:
      v68 = v98;
      v69 = v99;
      goto LABEL_238;
    }

    v7 = *(handle + 2);
    if (v7)
    {
      v8 = (v7 + 488);
      goto LABEL_17;
    }

    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_get_stream_for_protocol";
    v84 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v84, v108, type))
    {
      if (v108[0] == OS_LOG_TYPE_FAULT)
      {
        v85 = __nwlog_obj();
        v86 = v108[0];
        if (!os_log_type_enabled(v85, v108[0]))
        {
          goto LABEL_223;
        }

        *buf = 136446210;
        v111 = "nw_http1_get_stream_for_protocol";
        v87 = "%{public}s called with null handle->http1_connection";
        goto LABEL_222;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v85 = __nwlog_obj();
        v86 = v108[0];
        if (!os_log_type_enabled(v85, v108[0]))
        {
          goto LABEL_223;
        }

        *buf = 136446210;
        v111 = "nw_http1_get_stream_for_protocol";
        v87 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_222;
      }

      v91 = __nw_create_backtrace_string();
      v85 = __nwlog_obj();
      v86 = v108[0];
      v92 = os_log_type_enabled(v85, v108[0]);
      if (v91)
      {
        if (v92)
        {
          *buf = 136446466;
          v111 = "nw_http1_get_stream_for_protocol";
          v112 = 2082;
          *v113 = v91;
          _os_log_impl(&dword_181A37000, v85, v86, "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v91);
        goto LABEL_223;
      }

      if (v92)
      {
        *buf = 136446210;
        v111 = "nw_http1_get_stream_for_protocol";
        v87 = "%{public}s called with null handle->http1_connection, no backtrace";
LABEL_222:
        _os_log_impl(&dword_181A37000, v85, v86, v87, buf, 0xCu);
      }
    }

LABEL_223:
    if (v84)
    {
      free(v84);
    }

    goto LABEL_225;
  }

  v8 = (handle + 8);
LABEL_17:
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_225;
  }

  if (!*(v9 + 248))
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_protocol_http1_output_finished";
    v52 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, v108, type))
    {
      goto LABEL_240;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v108[0];
      if (!os_log_type_enabled(v75, v108[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null http1_stream->protocol_http1";
      goto LABEL_237;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v75 = __nwlog_obj();
      v76 = v108[0];
      if (!os_log_type_enabled(v75, v108[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null http1_stream->protocol_http1, backtrace limit exceeded";
      goto LABEL_237;
    }

    v58 = __nw_create_backtrace_string();
    v75 = __nwlog_obj();
    v76 = v108[0];
    v88 = os_log_type_enabled(v75, v108[0]);
    if (!v58)
    {
      if (!v88)
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_protocol_http1_output_finished";
      v55 = "%{public}s called with null http1_stream->protocol_http1, no backtrace";
      goto LABEL_237;
    }

    if (!v88)
    {
      goto LABEL_82;
    }

    *buf = 136446466;
    v111 = "nw_protocol_http1_output_finished";
    v112 = 2082;
    *v113 = v58;
    v60 = "%{public}s called with null http1_stream->protocol_http1, dumping backtrace:%{public}s";
    goto LABEL_156;
  }

  v10 = *(v9 + 256);
  if (!v10 || (*(v9 + 428) & 0x200) == 0)
  {
    if ((*(v9 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v9 + 256);
        v13 = *(*(v9 + 248) + 372);
        if (v12)
        {
          v14 = *(v12 + 860);
        }

        else
        {
          v14 = 0;
        }

        v20 = *(v9 + 424);
        v21 = (*(v9 + 428) >> 9) & 1;
        *buf = 136448002;
        v111 = "nw_protocol_http1_output_finished";
        v112 = 2082;
        *v113 = v9 + 74;
        *&v113[8] = 2080;
        *&v113[10] = " ";
        v114 = 1024;
        v115 = v13;
        v116 = 1024;
        v117 = v14;
        v118 = 1024;
        v119 = v20;
        v120 = 1024;
        *v121 = v21;
        *&v121[4] = 2048;
        *&v121[6] = v12;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping output_finished, chunked: %d, current_connection: %p";
        v23 = v11;
        v24 = 66;
LABEL_34:
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
        return;
      }
    }

    return;
  }

  if (*(v10 + 648))
  {
    if ((*(v10 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
      v10 = *(v9 + 256);
      if (v16)
      {
        v17 = *(v10 + 488);
        v18 = *(*(v10 + 480) + 372);
        v19 = *(v10 + 860);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 424);
        }

        *buf = 136447490;
        v111 = "nw_protocol_http1_output_finished";
        v112 = 2082;
        *v113 = v10 + 74;
        *&v113[8] = 2080;
        *&v113[10] = " ";
        v114 = 1024;
        v115 = v18;
        v116 = 1024;
        v117 = v19;
        v118 = 1024;
        v119 = v17;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> have pending output frames, deferring final chunk", buf, 0x32u);
        v10 = *(v9 + 256);
      }
    }

    *(v10 + 872) |= 0x8000u;
    return;
  }

  if ((*(v9 + 428) & 0x800) != 0)
  {
    if ((*(v9 + 158) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(v9 + 256);
        v31 = *(*(v9 + 248) + 372);
        if (v30)
        {
          LODWORD(v30) = *(v30 + 860);
        }

        v32 = *(v9 + 424);
        *buf = 136447490;
        v111 = "nw_protocol_http1_output_finished";
        v112 = 2082;
        *v113 = v9 + 74;
        *&v113[8] = 2080;
        *&v113[10] = " ";
        v114 = 1024;
        v115 = v31;
        v116 = 1024;
        v117 = v30;
        v118 = 1024;
        v119 = v32;
        v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> dropping output_finished, outbound message already complete";
        v23 = v29;
        v24 = 50;
        goto LABEL_34;
      }
    }

    return;
  }

  if ((*(v9 + 158) & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    v26 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG);
    v10 = *(v9 + 256);
    if (v26)
    {
      v27 = *(*(v9 + 248) + 372);
      if (v10)
      {
        v28 = *(v10 + 860);
      }

      else
      {
        v28 = 0;
      }

      v33 = *(v9 + 424);
      *buf = 136447490;
      v111 = "nw_protocol_http1_output_finished";
      v112 = 2082;
      *v113 = v9 + 74;
      *&v113[8] = 2080;
      *&v113[10] = " ";
      v114 = 1024;
      v115 = v27;
      v116 = 1024;
      v117 = v28;
      v118 = 1024;
      v119 = v33;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Sending final chunk immediately, no pending output", buf, 0x32u);
      v10 = *(v9 + 256);
    }

    if (!v10)
    {
      __nwlog_obj();
      *buf = 136446210;
      v111 = "nw_http1_connection_send_final_chunk";
      v52 = _os_log_send_and_compose_impl();
      v108[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v52, v108, type))
      {
        goto LABEL_240;
      }

      if (v108[0] == OS_LOG_TYPE_FAULT)
      {
        v75 = __nwlog_obj();
        v76 = v108[0];
        if (!os_log_type_enabled(v75, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_http1_connection_send_final_chunk";
        v55 = "%{public}s called with null http1_connection";
        goto LABEL_237;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v75 = __nwlog_obj();
        v76 = v108[0];
        if (!os_log_type_enabled(v75, v108[0]))
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_http1_connection_send_final_chunk";
        v55 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_237;
      }

      v58 = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v76 = v108[0];
      v103 = os_log_type_enabled(v75, v108[0]);
      if (!v58)
      {
        if (!v103)
        {
          goto LABEL_240;
        }

        *buf = 136446210;
        v111 = "nw_http1_connection_send_final_chunk";
        v55 = "%{public}s called with null http1_connection, no backtrace";
        goto LABEL_237;
      }

      if (!v103)
      {
        goto LABEL_82;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 2082;
      *v113 = v58;
      v60 = "%{public}s called with null http1_connection, dumping backtrace:%{public}s";
LABEL_156:
      v61 = v75;
      v62 = v76;
      v63 = 22;
LABEL_81:
      _os_log_impl(&dword_181A37000, v61, v62, v60, buf, v63);
      goto LABEL_82;
    }
  }

  if ((*(v10 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v93 = __nwlog_obj();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
    {
      v94 = *(v10 + 488);
      v95 = *(*(v10 + 480) + 372);
      v96 = *(v10 + 860);
      if (v94)
      {
        LODWORD(v94) = *(v94 + 424);
      }

      *buf = 136447490;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 2082;
      *v113 = v10 + 74;
      *&v113[8] = 2080;
      *&v113[10] = " ";
      v114 = 1024;
      v115 = v95;
      v116 = 1024;
      v117 = v96;
      v118 = 1024;
      v119 = v94;
      _os_log_impl(&dword_181A37000, v93, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
    }
  }

  v34 = *(v10 + 32);
  if (!v34)
  {
    __nwlog_obj();
    *buf = 136446210;
    v111 = "nw_http1_connection_send_final_chunk";
    v52 = _os_log_send_and_compose_impl();
    v108[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v52, v108, type))
    {
      goto LABEL_240;
    }

    if (v108[0] == OS_LOG_TYPE_FAULT)
    {
      v75 = __nwlog_obj();
      v76 = v108[0];
      if (!os_log_type_enabled(v75, v108[0]))
      {
        goto LABEL_240;
      }

      *buf = 136446210;
      v111 = "nw_http1_connection_send_final_chunk";
      v55 = "%{public}s called with null output_handler";
      goto LABEL_237;
    }

    if (type[0] == OS_LOG_TYPE_INFO)
    {
      v58 = __nw_create_backtrace_string();
      v75 = __nwlog_obj();
      v76 = v108[0];
      v104 = os_log_type_enabled(v75, v108[0]);
      if (v58)
      {
        if (v104)
        {
          *buf = 136446466;
          v111 = "nw_http1_connection_send_final_chunk";
          v112 = 2082;
          *v113 = v58;
          v60 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
          goto LABEL_156;
        }

LABEL_82:
        free(v58);
        if (!v52)
        {
          return;
        }

        goto LABEL_241;
      }

      if (v104)
      {
        *buf = 136446210;
        v111 = "nw_http1_connection_send_final_chunk";
        v55 = "%{public}s called with null output_handler, no backtrace";
        goto LABEL_237;
      }

LABEL_240:
      if (!v52)
      {
        return;
      }

      goto LABEL_241;
    }

    v75 = __nwlog_obj();
    v76 = v108[0];
    if (!os_log_type_enabled(v75, v108[0]))
    {
      goto LABEL_240;
    }

    *buf = 136446210;
    v111 = "nw_http1_connection_send_final_chunk";
    v55 = "%{public}s called with null output_handler, backtrace limit exceeded";
LABEL_237:
    v68 = v75;
    v69 = v76;
LABEL_238:
    v70 = 12;
    goto LABEL_239;
  }

  *v108 = 0;
  v109 = v108;
  output_frames = nw_protocol_get_output_frames(v34, v10, 5, 5, 1, v108);
  v36 = output_frames;
  v37 = *v108;
  if (*v108 && output_frames)
  {
    *type = 0;
    v38 = nw_frame_unclaimed_bytes(*v108, type);
    *v38 = 218762544;
    *(v38 + 4) = 10;
    if (nw_frame_claim(v37, v39, 5, 0))
    {
      nw_frame_collapse(v37);
      nw_frame_unclaim(v37, v40, 5u, 0);
      if (nw_protocol_finalize_output_frames(v34, v108))
      {
        *(*(v10 + 488) + 428) |= 0x800u;
        *(v10 + 872) |= 0x20u;
        nw_http_transaction_metadata_mark_outbound_message_end(*(*(v10 + 488) + 352));
        v41 = *(v10 + 488);
        if (*(v41 + 168) == 1 && *(v41 + 160) != *(v41 + 176))
        {
          if ((*(v41 + 158) & 1) == 0)
          {
            v42 = __nwlog_obj();
            v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
            v41 = *(v10 + 488);
            if (v43)
            {
              v44 = *(v41 + 256);
              if (v44)
              {
                LODWORD(v44) = *(v44 + 860);
              }

              v45 = *(*(v41 + 248) + 372);
              v46 = *(v41 + 424);
              if (*(v41 + 168) == 1)
              {
                v47 = *(v41 + 160);
              }

              else
              {
                v47 = -1;
              }

              v82 = *(v41 + 176);
              *buf = 136448002;
              v111 = "nw_http1_connection_send_final_chunk";
              v112 = 2082;
              *v113 = v41 + 74;
              *&v113[8] = 2080;
              *&v113[10] = " ";
              v114 = 1024;
              v115 = v45;
              v116 = 1024;
              v117 = v44;
              v118 = 1024;
              v119 = v46;
              v120 = 2048;
              *v121 = v47;
              *&v121[8] = 2048;
              *&v121[10] = v82;
              _os_log_impl(&dword_181A37000, v42, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
              v41 = *(v10 + 488);
            }
          }

          nw_protocol_error(*(v41 + 48), v41);
          nw_protocol_disconnected(*(*(v10 + 488) + 48), *(v10 + 488));
        }
      }

      return;
    }

    __nwlog_obj();
    *buf = 136446466;
    v111 = "nw_http1_connection_send_final_chunk";
    v112 = 1024;
    *v113 = 5;
    v52 = _os_log_send_and_compose_impl();
    v107 = OS_LOG_TYPE_ERROR;
    v105 = 0;
    if (!__nwlog_fault(v52, &v107, &v105))
    {
      goto LABEL_240;
    }

    if (v107 == OS_LOG_TYPE_FAULT)
    {
      v53 = __nwlog_obj();
      v54 = v107;
      if (!os_log_type_enabled(v53, v107))
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = 5;
      v55 = "%{public}s claiming frame with %u bytes failed";
LABEL_100:
      v68 = v53;
      v69 = v54;
      v70 = 18;
LABEL_239:
      _os_log_impl(&dword_181A37000, v68, v69, v55, buf, v70);
      goto LABEL_240;
    }

    if (v105 != 1)
    {
      v53 = __nwlog_obj();
      v54 = v107;
      if (!os_log_type_enabled(v53, v107))
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = 5;
      v55 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
      goto LABEL_100;
    }

    v58 = __nw_create_backtrace_string();
    v53 = __nwlog_obj();
    v54 = v107;
    v59 = os_log_type_enabled(v53, v107);
    if (!v58)
    {
      if (!v59)
      {
        goto LABEL_240;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = 5;
      v55 = "%{public}s claiming frame with %u bytes failed, no backtrace";
      goto LABEL_100;
    }

    if (!v59)
    {
      goto LABEL_82;
    }

    *buf = 136446722;
    v111 = "nw_http1_connection_send_final_chunk";
    v112 = 1024;
    *v113 = 5;
    *&v113[4] = 2082;
    *&v113[6] = v58;
    v60 = "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s";
    v61 = v53;
    v62 = v54;
    v63 = 28;
    goto LABEL_81;
  }

  if (output_frames)
  {
    __nwlog_obj();
    *buf = 136446466;
    v111 = "nw_http1_connection_send_final_chunk";
    v112 = 1024;
    *v113 = v36;
    v48 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v107 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v48, type, &v107))
    {
      goto LABEL_91;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = v36;
      v51 = "%{public}s output handler reported %u frames to write, but array is empty";
    }

    else if (v107 == OS_LOG_TYPE_INFO)
    {
      v56 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v50 = type[0];
      v57 = os_log_type_enabled(v49, type[0]);
      if (v56)
      {
        if (v57)
        {
          *buf = 136446722;
          v111 = "nw_http1_connection_send_final_chunk";
          v112 = 1024;
          *v113 = v36;
          *&v113[4] = 2082;
          *&v113[6] = v56;
          _os_log_impl(&dword_181A37000, v49, v50, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v56);
        goto LABEL_91;
      }

      if (!v57)
      {
LABEL_91:
        if (v48)
        {
          free(v48);
        }

        goto LABEL_93;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = v36;
      v51 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
    }

    else
    {
      v49 = __nwlog_obj();
      v50 = type[0];
      if (!os_log_type_enabled(v49, type[0]))
      {
        goto LABEL_91;
      }

      *buf = 136446466;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 1024;
      *v113 = v36;
      v51 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0x12u);
    goto LABEL_91;
  }

LABEL_93:
  if ((*(v10 + 158) & 1) == 0)
  {
    v64 = __nwlog_obj();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v65 = *(v10 + 488);
      v66 = *(*(v10 + 480) + 372);
      v67 = *(v10 + 860);
      if (v65)
      {
        LODWORD(v65) = *(v65 + 424);
      }

      *buf = 136447746;
      v111 = "nw_http1_connection_send_final_chunk";
      v112 = 2082;
      *v113 = v10 + 74;
      *&v113[8] = 2080;
      *&v113[10] = " ";
      v114 = 1024;
      v115 = v66;
      v116 = 1024;
      v117 = v67;
      v118 = 1024;
      v119 = v65;
      v120 = 1024;
      *v121 = 5;
      v22 = "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u";
      v23 = v64;
      v24 = 56;
      goto LABEL_34;
    }
  }
}

void nw_protocol_http1_input_finished(nw_protocol *a1, nw_protocol *a2)
{
  v264 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v146 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v146, v263, v255))
    {
      goto LABEL_405;
    }

    if (v263[0] == 17)
    {
      v147 = __nwlog_obj();
      v148 = v263[0];
      if (!os_log_type_enabled(v147, v263[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v149 = "%{public}s called with null protocol";
    }

    else
    {
      if (v255[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v147 = __nwlog_obj();
        v148 = v263[0];
        v156 = os_log_type_enabled(v147, v263[0]);
        if (!backtrace_string)
        {
          if (!v156)
          {
            goto LABEL_405;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_get_http1_protocol";
          v149 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_404;
        }

        if (v156)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_http1_protocol";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v147, v148, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_405;
      }

      v147 = __nwlog_obj();
      v148 = v263[0];
      if (!os_log_type_enabled(v147, v263[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v149 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_404;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v146 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v146, v263, v255))
    {
      goto LABEL_405;
    }

    if (v263[0] != 17)
    {
      if (v255[0] != OS_LOG_TYPE_INFO)
      {
        v147 = __nwlog_obj();
        v148 = v263[0];
        if (!os_log_type_enabled(v147, v263[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v149 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_404;
      }

      v157 = __nw_create_backtrace_string();
      v147 = __nwlog_obj();
      v148 = v263[0];
      v158 = os_log_type_enabled(v147, v263[0]);
      if (!v157)
      {
        if (!v158)
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v149 = "%{public}s called with null handle, no backtrace";
        goto LABEL_404;
      }

      if (!v158)
      {
        goto LABEL_281;
      }

      *buf = 136446466;
      *&buf[4] = "nw_http1_get_http1_protocol";
      *&buf[12] = 2082;
      *&buf[14] = v157;
      v159 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_280;
    }

    v147 = __nwlog_obj();
    v148 = v263[0];
    if (!os_log_type_enabled(v147, v263[0]))
    {
      goto LABEL_405;
    }

    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v149 = "%{public}s called with null handle";
LABEL_404:
    _os_log_impl(&dword_181A37000, v147, v148, v149, buf, 0xCu);
    goto LABEL_405;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_407;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v146 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v146, v263, v255))
    {
      if (v263[0] == 17)
      {
        v147 = __nwlog_obj();
        v148 = v263[0];
        if (!os_log_type_enabled(v147, v263[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v149 = "%{public}s called with null handle->http1_connection";
        goto LABEL_404;
      }

      if (v255[0] != OS_LOG_TYPE_INFO)
      {
        v147 = __nwlog_obj();
        v148 = v263[0];
        if (!os_log_type_enabled(v147, v263[0]))
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v149 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_404;
      }

      v157 = __nw_create_backtrace_string();
      v147 = __nwlog_obj();
      v148 = v263[0];
      v187 = os_log_type_enabled(v147, v263[0]);
      if (!v157)
      {
        if (!v187)
        {
          goto LABEL_405;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_http1_protocol";
        v149 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_404;
      }

      if (v187)
      {
        *buf = 136446466;
        *&buf[4] = "nw_http1_get_http1_protocol";
        *&buf[12] = 2082;
        *&buf[14] = v157;
        v159 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_280;
      }

LABEL_281:
      free(v157);
      if (!v146)
      {
LABEL_407:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_protocol_http1_input_finished";
        v150 = _os_log_send_and_compose_impl();
        v263[0] = 16;
        v255[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v150, v263, v255))
        {
          goto LABEL_439;
        }

        if (v263[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v151 = gLogObj;
          v152 = v263[0];
          if (!os_log_type_enabled(gLogObj, v263[0]))
          {
            goto LABEL_439;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_input_finished";
          v153 = "%{public}s called with null http1";
        }

        else
        {
          if (v255[0] == OS_LOG_TYPE_INFO)
          {
            v207 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v208 = gLogObj;
            v209 = v263[0];
            v210 = os_log_type_enabled(gLogObj, v263[0]);
            if (!v207)
            {
              if (!v210)
              {
                goto LABEL_439;
              }

              *buf = 136446210;
              *&buf[4] = "nw_protocol_http1_input_finished";
              v153 = "%{public}s called with null http1, no backtrace";
              goto LABEL_444;
            }

            if (v210)
            {
              *buf = 136446466;
              *&buf[4] = "nw_protocol_http1_input_finished";
              *&buf[12] = 2082;
              *&buf[14] = v207;
              _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v207);
LABEL_439:
            if (!v150)
            {
              return;
            }

            goto LABEL_440;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v151 = gLogObj;
          v152 = v263[0];
          if (!os_log_type_enabled(gLogObj, v263[0]))
          {
            goto LABEL_439;
          }

          *buf = 136446210;
          *&buf[4] = "nw_protocol_http1_input_finished";
          v153 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_437:
        v213 = v151;
        v214 = v152;
LABEL_438:
        _os_log_impl(&dword_181A37000, v213, v214, v153, buf, 0xCu);
        goto LABEL_439;
      }

LABEL_406:
      free(v146);
      goto LABEL_407;
    }

LABEL_405:
    if (!v146)
    {
      goto LABEL_407;
    }

    goto LABEL_406;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_http1_protocol";
    v146 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v146, v263, v255))
    {
      goto LABEL_405;
    }

    if (v263[0] == 17)
    {
      v147 = __nwlog_obj();
      v148 = v263[0];
      if (!os_log_type_enabled(v147, v263[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v149 = "%{public}s called with null handle->http1_stream";
      goto LABEL_404;
    }

    if (v255[0] != OS_LOG_TYPE_INFO)
    {
      v147 = __nwlog_obj();
      v148 = v263[0];
      if (!os_log_type_enabled(v147, v263[0]))
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v149 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_404;
    }

    v157 = __nw_create_backtrace_string();
    v147 = __nwlog_obj();
    v148 = v263[0];
    v186 = os_log_type_enabled(v147, v263[0]);
    if (!v157)
    {
      if (!v186)
      {
        goto LABEL_405;
      }

      *buf = 136446210;
      *&buf[4] = "nw_http1_get_http1_protocol";
      v149 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_404;
    }

    if (!v186)
    {
      goto LABEL_281;
    }

    *buf = 136446466;
    *&buf[4] = "nw_http1_get_http1_protocol";
    *&buf[12] = 2082;
    *&buf[14] = v157;
    v159 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_280:
    _os_log_impl(&dword_181A37000, v147, v148, v159, buf, 0x16u);
    goto LABEL_281;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_407;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_finished";
    v150 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v150, v263, v255))
    {
      goto LABEL_439;
    }

    if (v263[0] == 17)
    {
      v151 = __nwlog_obj();
      v152 = v263[0];
      if (!os_log_type_enabled(v151, v263[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null other_protocol";
    }

    else if (v255[0] == OS_LOG_TYPE_INFO)
    {
      v160 = __nw_create_backtrace_string();
      v151 = __nwlog_obj();
      v152 = v263[0];
      v161 = os_log_type_enabled(v151, v263[0]);
      if (v160)
      {
        if (v161)
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_http1_input_finished";
          *&buf[12] = 2082;
          *&buf[14] = v160;
          _os_log_impl(&dword_181A37000, v151, v152, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v160);
        if (!v150)
        {
          return;
        }

LABEL_440:
        free(v150);
        return;
      }

      if (!v161)
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null other_protocol, no backtrace";
    }

    else
    {
      v151 = __nwlog_obj();
      v152 = v263[0];
      if (!os_log_type_enabled(v151, v263[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    }

    goto LABEL_437;
  }

  if (v3 == 2)
  {
    v8 = *(handle + 1);
    if (v8)
    {
      v7 = (v8 + 256);
      goto LABEL_17;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http1_get_connection_for_protocol";
    v167 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v167, v263, v255))
    {
      if (v263[0] == 17)
      {
        v168 = __nwlog_obj();
        v169 = v263[0];
        if (!os_log_type_enabled(v168, v263[0]))
        {
          goto LABEL_423;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v170 = "%{public}s called with null handle->http1_stream";
        goto LABEL_422;
      }

      if (v255[0] != OS_LOG_TYPE_INFO)
      {
        v168 = __nwlog_obj();
        v169 = v263[0];
        if (!os_log_type_enabled(v168, v263[0]))
        {
          goto LABEL_423;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v170 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_422;
      }

      v189 = __nw_create_backtrace_string();
      v168 = __nwlog_obj();
      v169 = v263[0];
      v190 = os_log_type_enabled(v168, v263[0]);
      if (v189)
      {
        if (v190)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_get_connection_for_protocol";
          *&buf[12] = 2082;
          *&buf[14] = v189;
          _os_log_impl(&dword_181A37000, v168, v169, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v189);
        goto LABEL_423;
      }

      if (v190)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http1_get_connection_for_protocol";
        v170 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_422:
        _os_log_impl(&dword_181A37000, v168, v169, v170, buf, 0xCu);
      }
    }

LABEL_423:
    if (v167)
    {
      free(v167);
    }

LABEL_425:
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http1_input_finished";
    v150 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    v255[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v150, v263, v255))
    {
      goto LABEL_439;
    }

    if (v263[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v151 = gLogObj;
      v152 = v263[0];
      if (!os_log_type_enabled(gLogObj, v263[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null http1_connection";
      goto LABEL_437;
    }

    if (v255[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v151 = gLogObj;
      v152 = v263[0];
      if (!os_log_type_enabled(gLogObj, v263[0]))
      {
        goto LABEL_439;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null http1_connection, backtrace limit exceeded";
      goto LABEL_437;
    }

    v211 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v208 = gLogObj;
    v209 = v263[0];
    v212 = os_log_type_enabled(gLogObj, v263[0]);
    if (v211)
    {
      if (v212)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http1_input_finished";
        *&buf[12] = 2082;
        *&buf[14] = v211;
        _os_log_impl(&dword_181A37000, v208, v209, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v211);
      if (!v150)
      {
        return;
      }

      goto LABEL_440;
    }

    if (v212)
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_http1_input_finished";
      v153 = "%{public}s called with null http1_connection, no backtrace";
LABEL_444:
      v213 = v208;
      v214 = v209;
      goto LABEL_438;
    }

    goto LABEL_439;
  }

  if (v3 != 3)
  {
    goto LABEL_425;
  }

  v7 = (handle + 16);
LABEL_17:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_425;
  }

  if ((*(v9 + 872) & 0x2000) != 0)
  {
    if (*(v9 + 158))
    {
      goto LABEL_97;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_97;
    }

    v48 = *(v9 + 488);
    v49 = *(*(v9 + 480) + 372);
    v50 = *(v9 + 860);
    if (v48)
    {
      LODWORD(v48) = *(v48 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v49;
    *&buf[38] = 1024;
    *&buf[40] = v50;
    LOWORD(v260) = 1024;
    *(&v260 + 2) = v48;
    v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> input already finished, returning";
LABEL_96:
    _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_INFO, v51, buf, 0x32u);
    goto LABEL_97;
  }

  *(v9 + 872) |= 0x2000u;
  if ((*(v9 + 874) & 4) != 0)
  {
    if (*(v9 + 158))
    {
      goto LABEL_97;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v47 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
    {
      goto LABEL_97;
    }

    v52 = *(v9 + 488);
    v53 = *(*(v9 + 480) + 372);
    v54 = *(v9 + 860);
    if (v52)
    {
      LODWORD(v52) = *(v52 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_connection_finish_input";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v53;
    *&buf[38] = 1024;
    *&buf[40] = v54;
    LOWORD(v260) = 1024;
    *(&v260 + 2) = v52;
    v51 = "%{public}s %{public}s%s<i%u:c%u:s%u> already getting input frames, returning";
    goto LABEL_96;
  }

  v10 = 0;
  *v255 = 0;
  v256 = v255;
  do
  {
    input_frames = nw_protocol_get_input_frames(*(v9 + 32), v9, 1, 0xFFFFFFFFLL, 0xFFFFFFFFLL, v255);
    v12 = *v255;
    if (!*v255)
    {
      goto LABEL_23;
    }

    v254 = v10;
    if (gLogDatapath == 1)
    {
      v45 = __nwlog_obj();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447746;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 2048;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        *&buf[24] = v255;
        *&buf[32] = 2048;
        *&buf[34] = v9 + 616;
        *&buf[42] = 1024;
        LODWORD(v260) = 1;
        WORD2(v260) = 1024;
        *(&v260 + 6) = 1;
        WORD5(v260) = 1024;
        HIDWORD(v260) = 1;
        _os_log_impl(&dword_181A37000, v45, OS_LOG_TYPE_DEBUG, "%{public}s called: initial frame %p, source %p, destination %p, temp %u, forwards %u, append %u", buf, 0x3Cu);
      }
    }

    v13 = 0;
    *v263 = 0;
    *&v263[8] = v263;
    do
    {
      v14 = v12;
      v15 = v12 + 32;
      v12 = *(v12 + 32);
      if (!v12 && !*(v14 + 40))
      {
        v12 = 0;
      }

      if (gLogDatapath == 1)
      {
        v20 = __nwlog_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(v14 + 52);
          if (v21)
          {
            v21 -= *(v14 + 56) + *(v14 + 60);
          }

          if (v12)
          {
            v22 = *(v12 + 52);
            if (v22)
            {
              v22 -= *(v12 + 56) + *(v12 + 60);
            }
          }

          else
          {
            v22 = 0;
          }

          *buf = 136447234;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 2048;
          *&buf[14] = v14;
          *&buf[22] = 1024;
          *&buf[24] = v21;
          *&buf[28] = 2048;
          *&buf[30] = v12;
          *&buf[38] = 1024;
          *&buf[40] = v22;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
        }
      }

      v16 = *(v14 + 32);
      v17 = *(v14 + 40);
      v18 = (v16 + 40);
      if (!v16)
      {
        v18 = &v256;
      }

      *v18 = v17;
      *v17 = v16;
      v19 = *&v263[8];
      *(v14 + 32) = 0;
      *(v14 + 40) = v19;
      *v19 = v14;
      *&v263[8] = v15;
      ++v13;
    }

    while (v12);
    if (v13)
    {
      if (gLogDatapath == 1)
      {
        v46 = __nwlog_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s moving %u frames from temp array to destination array", buf, 0x12u);
        }
      }

      v23 = *v263;
      v24 = v13;
      if (!*v263)
      {
        goto LABEL_64;
      }

      v24 = v13;
      do
      {
        v25 = v23;
        v26 = (v23 + 32);
        v23 = *(v23 + 32);
        if (!v23 && !*(v25 + 40))
        {
          v23 = 0;
        }

        if (gLogDatapath == 1)
        {
          log = __nwlog_obj();
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
          {
            v31 = *(v25 + 52);
            if (v31)
            {
              v31 -= *(v25 + 56) + *(v25 + 60);
            }

            if (v23)
            {
              v32 = *(v23 + 52);
              if (v32)
              {
                v32 -= *(v23 + 56) + *(v23 + 60);
              }
            }

            else
            {
              v32 = 0;
            }

            *buf = 136447234;
            *&buf[4] = "nw_http1_move_frame_array";
            *&buf[12] = 2048;
            *&buf[14] = v25;
            *&buf[22] = 1024;
            *&buf[24] = v31;
            *&buf[28] = 2048;
            *&buf[30] = v23;
            *&buf[38] = 1024;
            *&buf[40] = v32;
            _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s current frame: (%p, %u bytes), next frame: (%p, %u bytes)", buf, 0x2Cu);
          }
        }

        v27 = *(v25 + 32);
        v28 = *(v25 + 40);
        v29 = (v27 + 40);
        if (!v27)
        {
          v29 = &v263[8];
        }

        *v29 = v28;
        *v28 = v27;
        *v26 = 0;
        v26[1] = 0;
        v30 = *(v9 + 624);
        *(v25 + 40) = v30;
        *v30 = v25;
        *(v9 + 624) = v26;
        --v24;
      }

      while (v23);
      if (v24)
      {
LABEL_64:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446466;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v33 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v257 = 0;
        if (!__nwlog_fault(v33, &type, &v257))
        {
          goto LABEL_78;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v34 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_78;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = v34;
          v37 = v35;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames";
        }

        else if (v257 == 1)
        {
          v39 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v40 = type;
          loga = gLogObj;
          v41 = os_log_type_enabled(gLogObj, type);
          if (v39)
          {
            if (v41)
            {
              *buf = 136446722;
              *&buf[4] = "nw_http1_move_frame_array";
              *&buf[12] = 1024;
              *&buf[14] = v24;
              *&buf[18] = 2082;
              *&buf[20] = v39;
              _os_log_impl(&dword_181A37000, loga, v40, "%{public}s failed to deliver all temp frames, remaining %u frames, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v39);
            goto LABEL_78;
          }

          if (!v41)
          {
LABEL_78:
            if (v33)
            {
              free(v33);
            }

            goto LABEL_21;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = loga;
          v37 = v40;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v42 = gLogObj;
          v43 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_78;
          }

          *buf = 136446466;
          *&buf[4] = "nw_http1_move_frame_array";
          *&buf[12] = 1024;
          *&buf[14] = v24;
          v36 = v42;
          v37 = v43;
          v38 = "%{public}s failed to deliver all temp frames, remaining %u frames, backtrace limit exceeded";
        }

        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x12u);
        goto LABEL_78;
      }
    }

LABEL_21:
    if (gLogDatapath == 1)
    {
      v44 = __nwlog_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        *&buf[4] = "nw_http1_move_frame_array";
        *&buf[12] = 1024;
        *&buf[14] = v13;
        *&buf[18] = 2048;
        *&buf[20] = v255;
        *&buf[28] = 2048;
        *&buf[30] = v9 + 616;
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s moved %u frames from %p to %p", buf, 0x26u);
      }
    }

    v10 = v254;
LABEL_23:
    v10 += input_frames;
  }

  while (input_frames);
  if (gLogDatapath == 1)
  {
    v188 = __nwlog_obj();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nw_protocol_finalize_temp_frame_array";
      _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_DEBUG, "%{public}s called", buf, 0xCu);
    }
  }

  v64 = *v255;
  if (*v255)
  {
    *(*v255 + 40) = v263;
    *v263 = v64;
    *&v263[8] = v256;
    *v255 = 0;
    v256 = v255;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 0x40000000;
    *&buf[16] = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    *&buf[24] = &__block_descriptor_tmp_21_49595;
    buf[32] = 0;
    do
    {
      v65 = *v263;
      if (!*v263)
      {
        break;
      }

      v66 = *(*v263 + 32);
      v67 = *(*v263 + 40);
      v68 = (v66 + 40);
      if (!v66)
      {
        v68 = &v263[8];
      }

      *v68 = v67;
      *v67 = v66;
      *(v65 + 32) = 0;
      *(v65 + 40) = 0;
    }

    while (((*&buf[16])(buf) & 1) != 0);
  }

  v69 = *(v9 + 872);
  if ((v69 & 0x6000) == 0x2000 && !*(v9 + 616))
  {
    *(v9 + 872) = v69 | 0x4000;
    if (*(v9 + 488))
    {
      if (*(v9 + 868) && llhttp_message_needs_eof(v9 + 200))
      {
        if ((v69 & 4) == 0)
        {
          v100 = 5;
          if (*(v9 + 158))
          {
            goto LABEL_122;
          }

          goto LABEL_199;
        }

LABEL_356:
        if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v220 = __nwlog_obj();
          if (os_log_type_enabled(v220, OS_LOG_TYPE_DEBUG))
          {
            v221 = *(v9 + 488);
            v222 = *(*(v9 + 480) + 372);
            v223 = *(v9 + 860);
            if (v221)
            {
              LODWORD(v221) = *(v221 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
            *&buf[12] = 2082;
            *&buf[14] = v9 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v222;
            *&buf[38] = 1024;
            *&buf[40] = v223;
            LOWORD(v260) = 1024;
            *(&v260 + 2) = v221;
            _os_log_impl(&dword_181A37000, v220, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> signaled eof and terminated message successfully", buf, 0x32u);
          }
        }

        *(v9 + 874) |= 1u;
        goto LABEL_122;
      }

      v107 = llhttp_finish(v9 + 200);
      v108 = *(v9 + 872);
      if ((v108 & 4) != 0)
      {
        goto LABEL_356;
      }

      v100 = v107;
      if (!v107)
      {
        goto LABEL_356;
      }

      if (v107 != 14)
      {
        goto LABEL_198;
      }

      v109 = *(v9 + 488);
      if (v109)
      {
        v100 = 14;
        if ((v108 & 1) != 0 && (*(v109 + 428) & 2) == 0 && !*(v9 + 848) && !*(v9 + 852) && !*(v9 + 856))
        {
          if ((v108 & 2) != 0 && *(v9 + 800))
          {
            if (!*(v9 + 808))
            {
              v191 = strdup("");
              if (!v191)
              {
                v250 = __nwlog_obj();
                os_log_type_enabled(v250, OS_LOG_TYPE_ERROR);
                *buf = 136446210;
                *&buf[4] = "strict_strdup";
                v251 = _os_log_send_and_compose_impl();
                if (__nwlog_should_abort(v251))
                {
                  __break(1u);
                  return;
                }

                free(v251);
              }

              *(v9 + 808) = v191;
            }

            nw_http1_on_header_value_complete(v9 + 200);
          }

          nw_http1_on_headers_complete(v9 + 200);
          nw_http1_on_message_complete(v9 + 200);
          goto LABEL_356;
        }

LABEL_198:
        if (*(v9 + 158))
        {
          goto LABEL_122;
        }

        goto LABEL_199;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_recover_incomplete_header";
      v232 = _os_log_send_and_compose_impl();
      v263[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v232, v263, &type))
      {
        if (v263[0] == 17)
        {
          v233 = __nwlog_obj();
          v234 = v263[0];
          if (!os_log_type_enabled(v233, v263[0]))
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v235 = "%{public}s called with null http1_stream";
LABEL_535:
          _os_log_impl(&dword_181A37000, v233, v234, v235, buf, 0xCu);
          goto LABEL_536;
        }

        if (type != OS_LOG_TYPE_INFO)
        {
          v233 = __nwlog_obj();
          v234 = v263[0];
          if (!os_log_type_enabled(v233, v263[0]))
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v235 = "%{public}s called with null http1_stream, backtrace limit exceeded";
          goto LABEL_535;
        }

        v243 = __nw_create_backtrace_string();
        v233 = __nwlog_obj();
        v234 = v263[0];
        v244 = os_log_type_enabled(v233, v263[0]);
        if (!v243)
        {
          if (!v244)
          {
            goto LABEL_536;
          }

          *buf = 136446210;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          v235 = "%{public}s called with null http1_stream, no backtrace";
          goto LABEL_535;
        }

        if (v244)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http1_recover_incomplete_header";
          *&buf[12] = 2082;
          *&buf[14] = v243;
          _os_log_impl(&dword_181A37000, v233, v234, "%{public}s called with null http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v243);
      }

LABEL_536:
      if (v232)
      {
        free(v232);
      }

      v100 = 14;
      if (*(v9 + 158))
      {
        goto LABEL_122;
      }

LABEL_199:
      v110 = __nwlog_obj();
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v111 = *(v9 + 488);
        if (v111)
        {
          LODWORD(v111) = *(v111 + 424);
        }

        if (v100 >= 0x24)
        {
          abort();
        }

        v112 = *(*(v9 + 480) + 372);
        v113 = *(v9 + 860);
        v114 = off_1E6A35BE0[v100];
        *buf = 136447746;
        *&buf[4] = "nw_http1_parser_signal_eof_if_needed";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v112;
        *&buf[38] = 1024;
        *&buf[40] = v113;
        LOWORD(v260) = 1024;
        *(&v260 + 2) = v111;
        WORD3(v260) = 2080;
        *(&v260 + 1) = v114;
        _os_log_impl(&dword_181A37000, v110, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> parser eof did not terminate full message with errno: %s, deferring input error", buf, 0x3Cu);
      }

      goto LABEL_122;
    }

    if ((v69 & 0x100) != 0)
    {
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v124 = __nwlog_obj();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
        {
          v125 = *(v9 + 488);
          v126 = *(*(v9 + 480) + 372);
          v127 = *(v9 + 860);
          if (v125)
          {
            LODWORD(v125) = *(v125 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_close";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v126;
          *&buf[38] = 1024;
          *&buf[40] = v127;
          LOWORD(v260) = 1024;
          *(&v260 + 2) = v125;
          _os_log_impl(&dword_181A37000, v124, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
        }
      }

      goto LABEL_122;
    }

    *(v9 + 872) = v69 | 0x4100;
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v228 = __nwlog_obj();
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEBUG))
      {
        v229 = *(v9 + 488);
        v230 = *(*(v9 + 480) + 372);
        v231 = *(v9 + 860);
        if (v229)
        {
          LODWORD(v229) = *(v229 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v230;
        *&buf[38] = 1024;
        *&buf[40] = v231;
        LOWORD(v260) = 1024;
        *(&v260 + 2) = v229;
        _os_log_impl(&dword_181A37000, v228, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v115 = *(v9 + 480);
    if (!v115)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v224 = _os_log_send_and_compose_impl();
      v263[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v224, v263, &type))
      {
        goto LABEL_546;
      }

      if (v263[0] == 17)
      {
        v225 = __nwlog_obj();
        v226 = v263[0];
        if (!os_log_type_enabled(v225, v263[0]))
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v227 = "%{public}s called with null http1";
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v236 = __nw_create_backtrace_string();
        v225 = __nwlog_obj();
        v226 = v263[0];
        v237 = os_log_type_enabled(v225, v263[0]);
        if (v236)
        {
          if (v237)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v236;
            _os_log_impl(&dword_181A37000, v225, v226, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v236);
          goto LABEL_546;
        }

        if (!v237)
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v227 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v225 = __nwlog_obj();
        v226 = v263[0];
        if (!os_log_type_enabled(v225, v263[0]))
        {
          goto LABEL_546;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v227 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v249 = buf;
LABEL_545:
      _os_log_impl(&dword_181A37000, v225, v226, v227, v249, 0xCu);
      goto LABEL_546;
    }

    if ((*(v9 + 872) & 0x800) != 0)
    {
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v128 = __nwlog_obj();
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
        {
          v129 = *(v9 + 488);
          v130 = *(*(v9 + 480) + 372);
          v131 = *(v9 + 860);
          if (v129)
          {
            LODWORD(v129) = *(v129 + 424);
          }

          *buf = 136447490;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v130;
          *&buf[38] = 1024;
          *&buf[40] = v131;
          LOWORD(v260) = 1024;
          *(&v260 + 2) = v129;
          _os_log_impl(&dword_181A37000, v128, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
        }
      }

      goto LABEL_319;
    }

    *(v9 + 872) |= 0x800u;
    v116 = *(v115 + 368) + 1;
    *(v115 + 368) = v116;
    if (v116 == v116 << 31 >> 31)
    {
LABEL_314:
      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v238 = __nwlog_obj();
        if (os_log_type_enabled(v238, OS_LOG_TYPE_DEBUG))
        {
          v239 = *(v9 + 488);
          v240 = *(*(v9 + 480) + 372);
          v241 = *(v9 + 860);
          if (v239)
          {
            LODWORD(v239) = *(v239 + 424);
          }

          v242 = *(v115 + 368) + *(v115 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v240;
          *&buf[38] = 1024;
          *&buf[40] = v241;
          LOWORD(v260) = 1024;
          *(&v260 + 2) = v239;
          WORD3(v260) = 1024;
          DWORD2(v260) = v242;
          _os_log_impl(&dword_181A37000, v238, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v172 = *(v9 + 496);
      if (!v172)
      {
        __nwlog_obj();
        *v263 = 136446210;
        *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v224 = _os_log_send_and_compose_impl();
        type = OS_LOG_TYPE_ERROR;
        v257 = 0;
        if (!__nwlog_fault(v224, &type, &v257))
        {
          goto LABEL_546;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v225 = __nwlog_obj();
          v226 = type;
          if (!os_log_type_enabled(v225, type))
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1_connection->context";
LABEL_544:
          v249 = v263;
          goto LABEL_545;
        }

        if (v257 != 1)
        {
          v225 = __nwlog_obj();
          v226 = type;
          if (!os_log_type_enabled(v225, type))
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
          goto LABEL_544;
        }

        v245 = __nw_create_backtrace_string();
        v225 = __nwlog_obj();
        v226 = type;
        v246 = os_log_type_enabled(v225, type);
        if (!v245)
        {
          if (!v246)
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1_connection->context, no backtrace";
          goto LABEL_544;
        }

        if (v246)
        {
          *v263 = 136446466;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v263[12] = 2082;
          *&v263[14] = v245;
          v247 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
LABEL_521:
          _os_log_impl(&dword_181A37000, v225, v226, v247, v263, 0x16u);
        }

LABEL_522:
        free(v245);
        if (!v224)
        {
LABEL_319:
          if (!*(v9 + 488))
          {
            v175 = *(v9 + 784);
            if (v175)
            {
              nw_queue_set_timer_values(v175, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
            }

            else
            {
              if ((*(v9 + 158) & 1) == 0)
              {
                v176 = __nwlog_obj();
                if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                {
                  v177 = *(v9 + 488);
                  v178 = *(*(v9 + 480) + 372);
                  v179 = *(v9 + 860);
                  if (v177)
                  {
                    LODWORD(v177) = *(v177 + 424);
                  }

                  *buf = 136447490;
                  *&buf[4] = "nw_http1_connection_close";
                  *&buf[12] = 2082;
                  *&buf[14] = v9 + 74;
                  *&buf[22] = 2080;
                  *&buf[24] = " ";
                  *&buf[32] = 1024;
                  *&buf[34] = v178;
                  *&buf[38] = 1024;
                  *&buf[40] = v179;
                  LOWORD(v260) = 1024;
                  *(&v260 + 2) = v177;
                  _os_log_impl(&dword_181A37000, v176, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
                }
              }

              v180 = *(v9 + 608);
              v181 = *(v9 + 496);
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
              *&buf[24] = &unk_1E6A32780;
              *&buf[32] = v180;
              nw_queue_context_async(v181, buf);
            }
          }

          goto LABEL_122;
        }

LABEL_547:
        free(v224);
        goto LABEL_319;
      }

      v173 = *(v9 + 480);
      if (v173)
      {
        v174 = *(v173 + 200);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A327A8;
        *&buf[32] = v174;
        nw_queue_context_async(v172, buf);
        goto LABEL_319;
      }

      __nwlog_obj();
      *v263 = 136446210;
      *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v224 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v257 = 0;
      if (__nwlog_fault(v224, &type, &v257))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          v225 = __nwlog_obj();
          v226 = type;
          if (!os_log_type_enabled(v225, type))
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1";
          goto LABEL_544;
        }

        if (v257 != 1)
        {
          v225 = __nwlog_obj();
          v226 = type;
          if (!os_log_type_enabled(v225, type))
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1, backtrace limit exceeded";
          goto LABEL_544;
        }

        v245 = __nw_create_backtrace_string();
        v225 = __nwlog_obj();
        v226 = type;
        v248 = os_log_type_enabled(v225, type);
        if (!v245)
        {
          if (!v248)
          {
            goto LABEL_546;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v227 = "%{public}s called with null http1, no backtrace";
          goto LABEL_544;
        }

        if (v248)
        {
          *v263 = 136446466;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          *&v263[12] = 2082;
          *&v263[14] = v245;
          v247 = "%{public}s called with null http1, dumping backtrace:%{public}s";
          goto LABEL_521;
        }

        goto LABEL_522;
      }

LABEL_546:
      if (!v224)
      {
        goto LABEL_319;
      }

      goto LABEL_547;
    }

    __nwlog_obj();
    v117 = *(v115 + 368);
    *buf = 136446978;
    *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
    *&buf[12] = 2082;
    *&buf[14] = "http1->nonresuable_connections";
    *&buf[22] = 2048;
    *&buf[24] = 1;
    *&buf[32] = 2048;
    *&buf[34] = v117;
    v118 = _os_log_send_and_compose_impl();
    v263[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v118, v263, &type))
    {
      if (v263[0] == 17)
      {
        v119 = __nwlog_obj();
        v120 = v263[0];
        if (os_log_type_enabled(v119, v263[0]))
        {
          v121 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v121;
          v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_310:
          _os_log_impl(&dword_181A37000, v119, v120, v122, buf, 0x2Au);
        }
      }

      else if (type == OS_LOG_TYPE_INFO)
      {
        v143 = __nw_create_backtrace_string();
        v119 = __nwlog_obj();
        v120 = v263[0];
        v144 = os_log_type_enabled(v119, v263[0]);
        if (v143)
        {
          if (v144)
          {
            v145 = *(v115 + 368);
            *buf = 136447234;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v145;
            *&buf[42] = 2082;
            *&v260 = v143;
            _os_log_impl(&dword_181A37000, v119, v120, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v143);
          goto LABEL_311;
        }

        if (v144)
        {
          v171 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v171;
          v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          goto LABEL_310;
        }
      }

      else
      {
        v119 = __nwlog_obj();
        v120 = v263[0];
        if (os_log_type_enabled(v119, v263[0]))
        {
          v154 = *(v115 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v154;
          v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          goto LABEL_310;
        }
      }
    }

LABEL_311:
    if (v118)
    {
      free(v118);
    }

    *(v115 + 368) = -1;
    goto LABEL_314;
  }

LABEL_122:
  v70 = *(v9 + 616);
  v71 = *(v9 + 632);
  v72 = *(v9 + 872);
  v73 = v72 & 0x204;
  if ((v72 & 0x2000) != 0)
  {
    v83 = v70 | v71;
    v84 = (v72 >> 9) & 1;
    if (v73 == 4)
    {
      v84 = 1;
    }

    if (v83)
    {
      v85 = 1;
    }

    else
    {
      v85 = v84 == 0;
    }

    if (v85)
    {
      if (v73 == 4)
      {
        goto LABEL_167;
      }

      if (v83)
      {
        goto LABEL_167;
      }

      *(v9 + 864) = 5;
      if (*(v9 + 158))
      {
        goto LABEL_167;
      }

      v74 = __nwlog_obj();
      if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v86 = *(v9 + 488);
      v87 = *(*(v9 + 480) + 372);
      v88 = *(v9 + 860);
      if (v86)
      {
        LODWORD(v86) = *(v86 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v87;
      *&buf[38] = 1024;
      *&buf[40] = v88;
      LOWORD(v260) = 1024;
      *(&v260 + 2) = v86;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection error";
    }

    else
    {
      *(v9 + 864) = 4;
      if (*(v9 + 158))
      {
        goto LABEL_167;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v74 = gLogObj;
      if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_167;
      }

      v96 = *(v9 + 488);
      v97 = *(*(v9 + 480) + 372);
      v98 = *(v9 + 860);
      if (v96)
      {
        LODWORD(v96) = *(v96 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v97;
      *&buf[38] = 1024;
      *&buf[40] = v98;
      LOWORD(v260) = 1024;
      *(&v260 + 2) = v96;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: connection complete";
    }

LABEL_166:
    _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, v78, buf, 0x32u);
    goto LABEL_167;
  }

  if (v73 != 4)
  {
    if (*(v9 + 158))
    {
      goto LABEL_167;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v74 = gLogObj;
    if (!os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_167;
    }

    v93 = *(v9 + 488);
    v94 = *(*(v9 + 480) + 372);
    v95 = *(v9 + 860);
    if (v93)
    {
      LODWORD(v93) = *(v93 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v94;
    *&buf[38] = 1024;
    *&buf[40] = v95;
    LOWORD(v260) = 1024;
    *(&v260 + 2) = v93;
    v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> no change to http1 connection state";
    goto LABEL_166;
  }

  if (v70 | v71)
  {
    if (!v70)
    {
      goto LABEL_167;
    }

    if (v71)
    {
      goto LABEL_167;
    }

    *(v9 + 864) = 3;
    if (*(v9 + 158))
    {
      goto LABEL_167;
    }

    v74 = __nwlog_obj();
    if (!os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_167;
    }

    v101 = *(v9 + 488);
    v102 = *(*(v9 + 480) + 372);
    v103 = *(v9 + 860);
    if (v101)
    {
      LODWORD(v101) = *(v101 + 424);
    }

    *buf = 136447490;
    *&buf[4] = "nw_http1_update_connection_input_state";
    *&buf[12] = 2082;
    *&buf[14] = v9 + 74;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v102;
    *&buf[38] = 1024;
    *&buf[40] = v103;
    LOWORD(v260) = 1024;
    *(&v260 + 2) = v101;
    v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream pending";
    goto LABEL_166;
  }

  *(v9 + 864) = 2;
  if ((*(v9 + 158) & 1) == 0)
  {
    v74 = __nwlog_obj();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(v9 + 488);
      v76 = *(*(v9 + 480) + 372);
      v77 = *(v9 + 860);
      if (v75)
      {
        LODWORD(v75) = *(v75 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_http1_update_connection_input_state";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v76;
      *&buf[38] = 1024;
      *&buf[40] = v77;
      LOWORD(v260) = 1024;
      *(&v260 + 2) = v75;
      v78 = "%{public}s %{public}s%s<i%u:c%u:s%u> connection input state: stream complete";
      goto LABEL_166;
    }
  }

LABEL_167:
  if (*(v9 + 864) == 1)
  {
    if (v10)
    {
      v99 = *(v9 + 488);
      if (v99)
      {
        nw_protocol_input_available(*(v99 + 48), v99);
      }
    }
  }

LABEL_97:
  v55 = *(v9 + 488);
  if (v55)
  {
    if ((*(v9 + 158) & 1) != 0 || gLogDatapath != 1)
    {
      goto LABEL_100;
    }

    v162 = __nwlog_obj();
    v163 = os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG);
    v55 = *(v9 + 488);
    if (v163)
    {
      v164 = *(*(v9 + 480) + 372);
      v165 = *(v9 + 860);
      if (v55)
      {
        v166 = *(v55 + 424);
      }

      else
      {
        v166 = 0;
      }

      *buf = 136448002;
      *&buf[4] = "nw_protocol_http1_input_finished";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v164;
      *&buf[38] = 1024;
      *&buf[40] = v165;
      LOWORD(v260) = 1024;
      *(&v260 + 2) = v166;
      WORD3(v260) = 2048;
      *(&v260 + 1) = v9;
      v261 = 2048;
      v262 = v55;
      _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection %p sending input_finished to current stream (%p)", buf, 0x46u);
      v55 = *(v9 + 488);
    }

    if (v55)
    {
LABEL_100:
      nw_protocol_input_finished(*(v55 + 48), v55);
    }

    else
    {
      nw_protocol_input_finished(0, 0);
    }

    return;
  }

  if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
  {
    v182 = __nwlog_obj();
    if (os_log_type_enabled(v182, OS_LOG_TYPE_DEBUG))
    {
      v183 = *(v9 + 488);
      v184 = *(*(v9 + 480) + 372);
      v185 = *(v9 + 860);
      if (v183)
      {
        LODWORD(v183) = *(v183 + 424);
      }

      *buf = 136447490;
      *&buf[4] = "nw_protocol_http1_input_finished";
      *&buf[12] = 2082;
      *&buf[14] = v9 + 74;
      *&buf[22] = 2080;
      *&buf[24] = " ";
      *&buf[32] = 1024;
      *&buf[34] = v184;
      *&buf[38] = 1024;
      *&buf[40] = v185;
      LOWORD(v260) = 1024;
      *(&v260 + 2) = v183;
      _os_log_impl(&dword_181A37000, v182, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> closing http connection on input_finished, no remaining input", buf, 0x32u);
    }
  }

  if ((*(v9 + 872) & 0x100) != 0)
  {
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v79 = __nwlog_obj();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        v80 = *(v9 + 488);
        v81 = *(*(v9 + 480) + 372);
        v82 = *(v9 + 860);
        if (v80)
        {
          LODWORD(v80) = *(v80 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v81;
        *&buf[38] = 1024;
        *&buf[40] = v82;
        LOWORD(v260) = 1024;
        *(&v260 + 2) = v80;
        _os_log_impl(&dword_181A37000, v79, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> already closed", buf, 0x32u);
      }
    }
  }

  else
  {
    *(v9 + 872) |= 0x100u;
    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v196 = __nwlog_obj();
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        v197 = *(v9 + 488);
        v198 = *(*(v9 + 480) + 372);
        v199 = *(v9 + 860);
        if (v197)
        {
          LODWORD(v197) = *(v197 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_close";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v198;
        *&buf[38] = 1024;
        *&buf[40] = v199;
        LOWORD(v260) = 1024;
        *(&v260 + 2) = v197;
        _os_log_impl(&dword_181A37000, v196, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> http connection closed, increasing pool width", buf, 0x32u);
      }
    }

    v56 = *(v9 + 480);
    if (!v56)
    {
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
      v192 = _os_log_send_and_compose_impl();
      v263[0] = 16;
      v255[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v192, v263, v255))
      {
        goto LABEL_483;
      }

      if (v263[0] == 17)
      {
        v193 = __nwlog_obj();
        v194 = v263[0];
        if (!os_log_type_enabled(v193, v263[0]))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v195 = "%{public}s called with null http1";
      }

      else if (v255[0] == OS_LOG_TYPE_INFO)
      {
        v200 = __nw_create_backtrace_string();
        v193 = __nwlog_obj();
        v194 = v263[0];
        v201 = os_log_type_enabled(v193, v263[0]);
        if (v200)
        {
          if (v201)
          {
            *buf = 136446466;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = v200;
            _os_log_impl(&dword_181A37000, v193, v194, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v200);
          goto LABEL_483;
        }

        if (!v201)
        {
LABEL_483:
          if (!v192)
          {
            goto LABEL_239;
          }

          goto LABEL_484;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v195 = "%{public}s called with null http1, no backtrace";
      }

      else
      {
        v193 = __nwlog_obj();
        v194 = v263[0];
        if (!os_log_type_enabled(v193, v263[0]))
        {
          goto LABEL_483;
        }

        *buf = 136446210;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        v195 = "%{public}s called with null http1, backtrace limit exceeded";
      }

      v219 = buf;
      goto LABEL_482;
    }

    if ((*(v9 + 872) & 0x800) == 0)
    {
      *(v9 + 872) |= 0x800u;
      v57 = *(v56 + 368) + 1;
      *(v56 + 368) = v57;
      if (v57 != v57 << 31 >> 31)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v58 = *(v56 + 368);
        *buf = 136446978;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = "http1->nonresuable_connections";
        *&buf[22] = 2048;
        *&buf[24] = 1;
        *&buf[32] = 2048;
        *&buf[34] = v58;
        v59 = _os_log_send_and_compose_impl();
        v263[0] = 16;
        v255[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v59, v263, v255))
        {
          goto LABEL_231;
        }

        if (v263[0] != 17)
        {
          if (v255[0] == OS_LOG_TYPE_INFO)
          {
            v104 = __nw_create_backtrace_string();
            v60 = __nwlog_obj();
            v61 = v263[0];
            v105 = os_log_type_enabled(v60, v263[0]);
            if (v104)
            {
              if (v105)
              {
                v106 = *(v56 + 368);
                *buf = 136447234;
                *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
                *&buf[12] = 2082;
                *&buf[14] = "http1->nonresuable_connections";
                *&buf[22] = 2048;
                *&buf[24] = 1;
                *&buf[32] = 2048;
                *&buf[34] = v106;
                *&buf[42] = 2082;
                *&v260 = v104;
                _os_log_impl(&dword_181A37000, v60, v61, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v104);
              goto LABEL_231;
            }

            if (!v105)
            {
              goto LABEL_231;
            }

            v132 = *(v56 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v132;
            v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
          }

          else
          {
            v60 = __nwlog_obj();
            v61 = v263[0];
            if (!os_log_type_enabled(v60, v263[0]))
            {
              goto LABEL_231;
            }

            v123 = *(v56 + 368);
            *buf = 136446978;
            *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
            *&buf[12] = 2082;
            *&buf[14] = "http1->nonresuable_connections";
            *&buf[22] = 2048;
            *&buf[24] = 1;
            *&buf[32] = 2048;
            *&buf[34] = v123;
            v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
          }

LABEL_230:
          _os_log_impl(&dword_181A37000, v60, v61, v63, buf, 0x2Au);
          goto LABEL_231;
        }

        v60 = __nwlog_obj();
        v61 = v263[0];
        if (os_log_type_enabled(v60, v263[0]))
        {
          v62 = *(v56 + 368);
          *buf = 136446978;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = "http1->nonresuable_connections";
          *&buf[22] = 2048;
          *&buf[24] = 1;
          *&buf[32] = 2048;
          *&buf[34] = v62;
          v63 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
          goto LABEL_230;
        }

LABEL_231:
        if (v59)
        {
          free(v59);
        }

        *(v56 + 368) = -1;
      }

      if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
      {
        v202 = __nwlog_obj();
        if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
        {
          v203 = *(v9 + 488);
          v204 = *(*(v9 + 480) + 372);
          v205 = *(v9 + 860);
          if (v203)
          {
            LODWORD(v203) = *(v203 + 424);
          }

          v206 = *(v56 + 368) + *(v56 + 364);
          *buf = 136447746;
          *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
          *&buf[12] = 2082;
          *&buf[14] = v9 + 74;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v204;
          *&buf[38] = 1024;
          *&buf[40] = v205;
          LOWORD(v260) = 1024;
          *(&v260 + 2) = v203;
          WORD3(v260) = 1024;
          DWORD2(v260) = v206;
          _os_log_impl(&dword_181A37000, v202, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> connection marked as not-reusable, increased pool width to %u", buf, 0x38u);
        }
      }

      v133 = *(v9 + 496);
      if (v133)
      {
        v134 = *(v9 + 480);
        if (v134)
        {
          v135 = *(v134 + 200);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL56nw_http1_match_idle_connection_with_pending_stream_asyncP19nw_http1_connection_block_invoke;
          *&buf[24] = &unk_1E6A327A8;
          *&buf[32] = v135;
          nw_queue_context_async(v133, buf);
          goto LABEL_239;
        }

        __nwlog_obj();
        *v263 = 136446210;
        *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v192 = _os_log_send_and_compose_impl();
        v255[0] = OS_LOG_TYPE_ERROR;
        type = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v192, v255, &type))
        {
          goto LABEL_483;
        }

        if (v255[0] == OS_LOG_TYPE_FAULT)
        {
          v193 = __nwlog_obj();
          v194 = v255[0];
          if (os_log_type_enabled(v193, v255[0]))
          {
            *v263 = 136446210;
            *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
            v195 = "%{public}s called with null http1";
            goto LABEL_481;
          }

          goto LABEL_483;
        }

        if (type == OS_LOG_TYPE_INFO)
        {
          v215 = __nw_create_backtrace_string();
          v193 = __nwlog_obj();
          v194 = v255[0];
          v218 = os_log_type_enabled(v193, v255[0]);
          if (v215)
          {
            if (v218)
            {
              *v263 = 136446466;
              *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
              *&v263[12] = 2082;
              *&v263[14] = v215;
              v217 = "%{public}s called with null http1, dumping backtrace:%{public}s";
LABEL_455:
              _os_log_impl(&dword_181A37000, v193, v194, v217, v263, 0x16u);
            }

            goto LABEL_456;
          }

          if (!v218)
          {
            goto LABEL_483;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v195 = "%{public}s called with null http1, no backtrace";
        }

        else
        {
          v193 = __nwlog_obj();
          v194 = v255[0];
          if (!os_log_type_enabled(v193, v255[0]))
          {
            goto LABEL_483;
          }

          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v195 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_481:
        v219 = v263;
LABEL_482:
        _os_log_impl(&dword_181A37000, v193, v194, v195, v219, 0xCu);
        goto LABEL_483;
      }

      __nwlog_obj();
      *v263 = 136446210;
      *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
      v192 = _os_log_send_and_compose_impl();
      v255[0] = OS_LOG_TYPE_ERROR;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v192, v255, &type))
      {
        goto LABEL_483;
      }

      if (v255[0] == OS_LOG_TYPE_FAULT)
      {
        v193 = __nwlog_obj();
        v194 = v255[0];
        if (os_log_type_enabled(v193, v255[0]))
        {
          *v263 = 136446210;
          *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
          v195 = "%{public}s called with null http1_connection->context";
          goto LABEL_481;
        }

        goto LABEL_483;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v193 = __nwlog_obj();
        v194 = v255[0];
        if (!os_log_type_enabled(v193, v255[0]))
        {
          goto LABEL_483;
        }

        *v263 = 136446210;
        *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v195 = "%{public}s called with null http1_connection->context, backtrace limit exceeded";
        goto LABEL_481;
      }

      v215 = __nw_create_backtrace_string();
      v193 = __nwlog_obj();
      v194 = v255[0];
      v216 = os_log_type_enabled(v193, v255[0]);
      if (!v215)
      {
        if (!v216)
        {
          goto LABEL_483;
        }

        *v263 = 136446210;
        *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        v195 = "%{public}s called with null http1_connection->context, no backtrace";
        goto LABEL_481;
      }

      if (v216)
      {
        *v263 = 136446466;
        *&v263[4] = "nw_http1_match_idle_connection_with_pending_stream_async";
        *&v263[12] = 2082;
        *&v263[14] = v215;
        v217 = "%{public}s called with null http1_connection->context, dumping backtrace:%{public}s";
        goto LABEL_455;
      }

LABEL_456:
      free(v215);
      if (!v192)
      {
        goto LABEL_239;
      }

LABEL_484:
      free(v192);
      goto LABEL_239;
    }

    if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
    {
      v89 = __nwlog_obj();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
      {
        v90 = *(v9 + 488);
        v91 = *(*(v9 + 480) + 372);
        v92 = *(v9 + 860);
        if (v90)
        {
          LODWORD(v90) = *(v90 + 424);
        }

        *buf = 136447490;
        *&buf[4] = "nw_http1_connection_mark_do_not_reuse";
        *&buf[12] = 2082;
        *&buf[14] = v9 + 74;
        *&buf[22] = 2080;
        *&buf[24] = " ";
        *&buf[32] = 1024;
        *&buf[34] = v91;
        *&buf[38] = 1024;
        *&buf[40] = v92;
        LOWORD(v260) = 1024;
        *(&v260 + 2) = v90;
        _os_log_impl(&dword_181A37000, v89, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> Connection already marked as not-reusable, ignoring", buf, 0x32u);
      }
    }

LABEL_239:
    if (!*(v9 + 488))
    {
      v136 = *(v9 + 784);
      if (v136)
      {
        if (*v136)
        {
          dispatch_source_set_timer(*v136, 0x8000000000000000, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
        }

        else
        {
          *(v136 + 32) = xmmword_182B08D40;
          if (*(v136 + 48) == 1 && *(v136 + 49) == 1)
          {
            nw_queue_source_run_timer(v136, v55);
          }
        }
      }

      else
      {
        if ((*(v9 + 158) & 1) == 0)
        {
          v137 = __nwlog_obj();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
          {
            v138 = *(v9 + 488);
            v139 = *(*(v9 + 480) + 372);
            v140 = *(v9 + 860);
            if (v138)
            {
              LODWORD(v138) = *(v138 + 424);
            }

            *buf = 136447490;
            *&buf[4] = "nw_http1_connection_close";
            *&buf[12] = 2082;
            *&buf[14] = v9 + 74;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v139;
            *&buf[38] = 1024;
            *&buf[40] = v140;
            LOWORD(v260) = 1024;
            *(&v260 + 2) = v138;
            _os_log_impl(&dword_181A37000, v137, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> No destroy timer on HTTP/1 connection when closing", buf, 0x32u);
          }
        }

        v141 = *(v9 + 608);
        v142 = *(v9 + 496);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZL25nw_http1_connection_closeP19nw_http1_connection_block_invoke;
        *&buf[24] = &unk_1E6A32780;
        *&buf[32] = v141;
        nw_queue_context_async(v142, buf);
      }
    }
  }
}

void nw_protocol_http1_output_available(nw_protocol *a1, nw_protocol *a2)
{
  v349 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v341 = "nw_http1_get_http1_protocol";
    v268 = _os_log_send_and_compose_impl();
    v326[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v268, v326, type))
    {
      goto LABEL_548;
    }

    if (v326[0] == OS_LOG_TYPE_FAULT)
    {
      v269 = __nwlog_obj();
      v270 = v326[0];
      if (!os_log_type_enabled(v269, v326[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v341 = "nw_http1_get_http1_protocol";
      v271 = "%{public}s called with null protocol";
    }

    else
    {
      if (type[0] == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v269 = __nwlog_obj();
        v270 = v326[0];
        v278 = os_log_type_enabled(v269, v326[0]);
        if (!backtrace_string)
        {
          if (!v278)
          {
            goto LABEL_548;
          }

          *buf = 136446210;
          v341 = "nw_http1_get_http1_protocol";
          v271 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_547;
        }

        if (v278)
        {
          *buf = 136446466;
          v341 = "nw_http1_get_http1_protocol";
          v342 = 2082;
          *v343 = backtrace_string;
          _os_log_impl(&dword_181A37000, v269, v270, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_548;
      }

      v269 = __nwlog_obj();
      v270 = v326[0];
      if (!os_log_type_enabled(v269, v326[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v341 = "nw_http1_get_http1_protocol";
      v271 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_547;
  }

  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    v341 = "nw_http1_get_http1_protocol";
    v268 = _os_log_send_and_compose_impl();
    v326[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v268, v326, type))
    {
      goto LABEL_548;
    }

    if (v326[0] != OS_LOG_TYPE_FAULT)
    {
      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v269 = __nwlog_obj();
        v270 = v326[0];
        if (!os_log_type_enabled(v269, v326[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_http1_protocol";
        v271 = "%{public}s called with null handle, backtrace limit exceeded";
        goto LABEL_547;
      }

      v279 = __nw_create_backtrace_string();
      v269 = __nwlog_obj();
      v270 = v326[0];
      v280 = os_log_type_enabled(v269, v326[0]);
      if (!v279)
      {
        if (!v280)
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_http1_protocol";
        v271 = "%{public}s called with null handle, no backtrace";
        goto LABEL_547;
      }

      if (!v280)
      {
        goto LABEL_452;
      }

      *buf = 136446466;
      v341 = "nw_http1_get_http1_protocol";
      v342 = 2082;
      *v343 = v279;
      v281 = "%{public}s called with null handle, dumping backtrace:%{public}s";
      goto LABEL_451;
    }

    v269 = __nwlog_obj();
    v270 = v326[0];
    if (!os_log_type_enabled(v269, v326[0]))
    {
      goto LABEL_548;
    }

    *buf = 136446210;
    v341 = "nw_http1_get_http1_protocol";
    v271 = "%{public}s called with null handle";
LABEL_547:
    _os_log_impl(&dword_181A37000, v269, v270, v271, buf, 0xCu);
    goto LABEL_548;
  }

  v3 = *(handle + 6);
  v4 = a1->handle;
  if (v3 == 1)
  {
    goto LABEL_10;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      goto LABEL_550;
    }

    v5 = *(handle + 2);
    if (v5)
    {
      v4 = (v5 + 480);
      goto LABEL_10;
    }

    __nwlog_obj();
    *buf = 136446210;
    v341 = "nw_http1_get_http1_protocol";
    v268 = _os_log_send_and_compose_impl();
    v326[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v268, v326, type))
    {
      if (v326[0] == OS_LOG_TYPE_FAULT)
      {
        v269 = __nwlog_obj();
        v270 = v326[0];
        if (!os_log_type_enabled(v269, v326[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_http1_protocol";
        v271 = "%{public}s called with null handle->http1_connection";
        goto LABEL_547;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v269 = __nwlog_obj();
        v270 = v326[0];
        if (!os_log_type_enabled(v269, v326[0]))
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_http1_protocol";
        v271 = "%{public}s called with null handle->http1_connection, backtrace limit exceeded";
        goto LABEL_547;
      }

      v279 = __nw_create_backtrace_string();
      v269 = __nwlog_obj();
      v270 = v326[0];
      v299 = os_log_type_enabled(v269, v326[0]);
      if (!v279)
      {
        if (!v299)
        {
          goto LABEL_548;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_http1_protocol";
        v271 = "%{public}s called with null handle->http1_connection, no backtrace";
        goto LABEL_547;
      }

      if (v299)
      {
        *buf = 136446466;
        v341 = "nw_http1_get_http1_protocol";
        v342 = 2082;
        *v343 = v279;
        v281 = "%{public}s called with null handle->http1_connection, dumping backtrace:%{public}s";
        goto LABEL_451;
      }

LABEL_452:
      free(v279);
      if (!v268)
      {
LABEL_550:
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        v341 = "nw_protocol_http1_output_available";
        v272 = _os_log_send_and_compose_impl();
        v326[0] = OS_LOG_TYPE_ERROR;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v272, v326, type))
        {
          goto LABEL_582;
        }

        if (v326[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v273 = gLogObj;
          v274 = v326[0];
          if (!os_log_type_enabled(gLogObj, v326[0]))
          {
            goto LABEL_582;
          }

          *buf = 136446210;
          v341 = "nw_protocol_http1_output_available";
          v275 = "%{public}s called with null http1";
        }

        else
        {
          if (type[0] == OS_LOG_TYPE_INFO)
          {
            v310 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v311 = gLogObj;
            v312 = v326[0];
            v313 = os_log_type_enabled(gLogObj, v326[0]);
            if (!v310)
            {
              if (!v313)
              {
                goto LABEL_582;
              }

              *buf = 136446210;
              v341 = "nw_protocol_http1_output_available";
              v275 = "%{public}s called with null http1, no backtrace";
              goto LABEL_587;
            }

            if (v313)
            {
              *buf = 136446466;
              v341 = "nw_protocol_http1_output_available";
              v342 = 2082;
              *v343 = v310;
              _os_log_impl(&dword_181A37000, v311, v312, "%{public}s called with null http1, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v310);
LABEL_582:
            if (!v272)
            {
              return;
            }

            goto LABEL_583;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v273 = gLogObj;
          v274 = v326[0];
          if (!os_log_type_enabled(gLogObj, v326[0]))
          {
            goto LABEL_582;
          }

          *buf = 136446210;
          v341 = "nw_protocol_http1_output_available";
          v275 = "%{public}s called with null http1, backtrace limit exceeded";
        }

LABEL_580:
        v316 = v273;
        v317 = v274;
LABEL_581:
        _os_log_impl(&dword_181A37000, v316, v317, v275, buf, 0xCu);
        goto LABEL_582;
      }

LABEL_549:
      free(v268);
      goto LABEL_550;
    }

LABEL_548:
    if (!v268)
    {
      goto LABEL_550;
    }

    goto LABEL_549;
  }

  v6 = *(handle + 1);
  if (!v6)
  {
    __nwlog_obj();
    *buf = 136446210;
    v341 = "nw_http1_get_http1_protocol";
    v268 = _os_log_send_and_compose_impl();
    v326[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v268, v326, type))
    {
      goto LABEL_548;
    }

    if (v326[0] == OS_LOG_TYPE_FAULT)
    {
      v269 = __nwlog_obj();
      v270 = v326[0];
      if (!os_log_type_enabled(v269, v326[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v341 = "nw_http1_get_http1_protocol";
      v271 = "%{public}s called with null handle->http1_stream";
      goto LABEL_547;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v269 = __nwlog_obj();
      v270 = v326[0];
      if (!os_log_type_enabled(v269, v326[0]))
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v341 = "nw_http1_get_http1_protocol";
      v271 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
      goto LABEL_547;
    }

    v279 = __nw_create_backtrace_string();
    v269 = __nwlog_obj();
    v270 = v326[0];
    v298 = os_log_type_enabled(v269, v326[0]);
    if (!v279)
    {
      if (!v298)
      {
        goto LABEL_548;
      }

      *buf = 136446210;
      v341 = "nw_http1_get_http1_protocol";
      v271 = "%{public}s called with null handle->http1_stream, no backtrace";
      goto LABEL_547;
    }

    if (!v298)
    {
      goto LABEL_452;
    }

    *buf = 136446466;
    v341 = "nw_http1_get_http1_protocol";
    v342 = 2082;
    *v343 = v279;
    v281 = "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s";
LABEL_451:
    _os_log_impl(&dword_181A37000, v269, v270, v281, buf, 0x16u);
    goto LABEL_452;
  }

  v4 = (v6 + 248);
LABEL_10:
  if (!*v4)
  {
    goto LABEL_550;
  }

  if (a2)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_568;
      }

      v7 = (handle + 16);
      goto LABEL_17;
    }

    v8 = *(handle + 1);
    if (v8)
    {
      v7 = (v8 + 256);
LABEL_17:
      v9 = *v7;
      if (*v7)
      {
        if (!*(v9 + 648))
        {
          goto LABEL_365;
        }

        v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
        v324 = *v7;
        if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
        {
          v286 = __nwlog_obj();
          if (os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG))
          {
            v287 = *(v9 + 488);
            v288 = *(*(v9 + 480) + 372);
            v289 = *(v9 + 860);
            if (v287)
            {
              LODWORD(v287) = *(v287 + 424);
            }

            *buf = 136447490;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v342 = 2082;
            *v343 = v9 + 74;
            *&v343[8] = 2080;
            *&v343[10] = " ";
            v344 = 1024;
            *v345 = v288;
            *&v345[4] = 1024;
            *&v345[6] = v289;
            LOWORD(v346) = 1024;
            *(&v346 + 2) = v287;
            _os_log_impl(&dword_181A37000, v286, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining pending outbound frames", buf, 0x32u);
          }
        }

        if (*(v9 + 480))
        {
          if (*(v9 + 488))
          {
            v11 = (v9 + 648);
            v12 = *(v9 + 648);
            if (!v12)
            {
              goto LABEL_363;
            }

            v321 = (v9 + 656);
            v323 = v9 + 74;
            v320 = (v9 + 648);
            while (1)
            {
LABEL_26:
              v13 = *(v12 + 32);
              v14 = *(v12 + 40);
              v15 = (v13 + 40);
              if (!v13)
              {
                v15 = v321;
              }

              *v15 = v14;
              *v14 = v13;
              *(v12 + 32) = 0;
              *(v12 + 40) = 0;
              if (!*(v12 + 112) || (*(v12 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v12, *(v12 + 88)))
              {
                v18 = 0;
                v19 = 0;
              }

              else
              {
                v17 = *(v12 + 52);
                v16 = *(v12 + 56);
                if (v17)
                {
                  v18 = (v17 - (v16 + *(v12 + 60)));
                }

                else
                {
                  v18 = 0;
                }

                v19 = (*(v12 + 112) + v16);
              }

              if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
              {
                v152 = __nwlog_obj();
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  v153 = *(v9 + 488);
                  if (v153)
                  {
                    LODWORD(v153) = *(v153 + 424);
                  }

                  v154 = *(*(v9 + 480) + 372);
                  v155 = *(v9 + 860);
                  *buf = 136448002;
                  v341 = "nw_http1_connection_drain_outbound_frames";
                  v342 = 2082;
                  *v343 = v323;
                  *&v343[8] = 2080;
                  *&v343[10] = " ";
                  v344 = 1024;
                  *v345 = v154;
                  *&v345[4] = 1024;
                  *&v345[6] = v155;
                  LOWORD(v346) = 1024;
                  *(&v346 + 2) = v153;
                  HIWORD(v346) = 2048;
                  *v347 = v12;
                  *&v347[8] = 1024;
                  LODWORD(v348) = v18;
                  _os_log_impl(&dword_181A37000, v152, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining frame %p with length %u", buf, 0x42u);
                }
              }

              if (!v19 || !v18)
              {
                goto LABEL_25;
              }

              v322 = v12;
              if ((*(*(v9 + 488) + 428) & 0x200) == 0)
              {
                goto LABEL_42;
              }

              if ((*(v12 + 204) & 4) != 0)
              {
                break;
              }

              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446466;
              v341 = "nw_http1_connection_drain_outbound_frames";
              v342 = 2048;
              *v343 = v12;
              v29 = _os_log_send_and_compose_impl();
              v326[0] = OS_LOG_TYPE_ERROR;
              type[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v29, v326, type))
              {
                if (v326[0] == OS_LOG_TYPE_FAULT)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v30 = gLogObj;
                  v31 = v326[0];
                  if (os_log_type_enabled(gLogObj, v326[0]))
                  {
                    *buf = 136446466;
                    v341 = "nw_http1_connection_drain_outbound_frames";
                    v342 = 2048;
                    *v343 = v322;
                    v32 = v30;
                    v33 = v31;
                    v34 = "%{public}s frame %p has no metadata";
LABEL_196:
                    _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0x16u);
                  }
                }

                else if (type[0] == OS_LOG_TYPE_INFO)
                {
                  v89 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v90 = gLogObj;
                  v91 = v326[0];
                  v92 = os_log_type_enabled(gLogObj, v326[0]);
                  if (v89)
                  {
                    if (v92)
                    {
                      *buf = 136446722;
                      v341 = "nw_http1_connection_drain_outbound_frames";
                      v342 = 2048;
                      *v343 = v322;
                      *&v343[8] = 2082;
                      *&v343[10] = v89;
                      _os_log_impl(&dword_181A37000, v90, v91, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                    }

                    free(v89);
                    goto LABEL_197;
                  }

                  if (v92)
                  {
                    *buf = 136446466;
                    v341 = "nw_http1_connection_drain_outbound_frames";
                    v342 = 2048;
                    *v343 = v322;
                    v32 = v90;
                    v33 = v91;
                    v34 = "%{public}s frame %p has no metadata, no backtrace";
                    goto LABEL_196;
                  }
                }

                else
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v97 = gLogObj;
                  v98 = v326[0];
                  if (os_log_type_enabled(gLogObj, v326[0]))
                  {
                    *buf = 136446466;
                    v341 = "nw_http1_connection_drain_outbound_frames";
                    v342 = 2048;
                    *v343 = v322;
                    v32 = v97;
                    v33 = v98;
                    v34 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                    goto LABEL_196;
                  }
                }
              }

LABEL_197:
              if (v29)
              {
                free(v29);
              }

              v12 = v322;
              if (!v322)
              {
                goto LABEL_363;
              }
            }

            if (*(v12 + 216))
            {
              goto LABEL_42;
            }

            nw_frame_unclaim(v12, a2, 0xAu, 7u);
            v87 = *(v12 + 112);
            if (!v87)
            {
              goto LABEL_153;
            }

            if ((*(v12 + 204) & 0x100) != 0 && g_channel_check_validity)
            {
              if (g_channel_check_validity(v12, *(v12 + 88)))
              {
                v87 = *(v12 + 112);
                goto LABEL_138;
              }

LABEL_153:
              v88 = 0;
            }

            else
            {
LABEL_138:
              v88 = v87 + *(v12 + 56);
            }

            v101 = *(v12 + 64);
            if (v101)
            {
              v102 = (*(v101 + 66) >> 6) & 1;
            }

            else
            {
              v102 = 0;
            }

            v103 = -1;
            v104 = v18;
            do
            {
              v105 = v103++;
              v106 = v104 > 0xF;
              v104 >>= 4;
            }

            while (v106);
            if (v88)
            {
              v107 = (v88 + v103);
              *(v107 + 1) = 2573;
              v108 = v18;
              do
              {
                if ((v108 & 0xF) >= 0xA)
                {
                  v109 = (v108 & 0xF) + 55;
                }

                else
                {
                  v109 = v108 & 0xF | 0x30;
                }

                *v107-- = v109;
                v106 = v108 > 0xF;
                v108 >>= 4;
              }

              while (v106);
              goto LABEL_165;
            }

            __nwlog_obj();
            *buf = 136446210;
            v341 = "nw_http1_connection_write_chunk_header";
            v189 = _os_log_send_and_compose_impl();
            v326[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v189, v326, type))
            {
              goto LABEL_339;
            }

            if (v326[0] == OS_LOG_TYPE_FAULT)
            {
              v190 = __nwlog_obj();
              v191 = v326[0];
              if (os_log_type_enabled(v190, v326[0]))
              {
                *buf = 136446210;
                v341 = "nw_http1_connection_write_chunk_header";
                v192 = v190;
                v193 = v191;
                v194 = "%{public}s called with null buffer";
                goto LABEL_338;
              }

              goto LABEL_339;
            }

            if (type[0] != OS_LOG_TYPE_INFO)
            {
              v214 = __nwlog_obj();
              v215 = v326[0];
              if (!os_log_type_enabled(v214, v326[0]))
              {
                goto LABEL_339;
              }

              *buf = 136446210;
              v341 = "nw_http1_connection_write_chunk_header";
              v192 = v214;
              v193 = v215;
              v194 = "%{public}s called with null buffer, backtrace limit exceeded";
              goto LABEL_338;
            }

            v201 = __nw_create_backtrace_string();
            v202 = __nwlog_obj();
            v203 = v326[0];
            v204 = os_log_type_enabled(v202, v326[0]);
            if (v201)
            {
              if (v204)
              {
                *buf = 136446466;
                v341 = "nw_http1_connection_write_chunk_header";
                v342 = 2082;
                *v343 = v201;
                _os_log_impl(&dword_181A37000, v202, v203, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v201);
              goto LABEL_339;
            }

            if (v204)
            {
              *buf = 136446210;
              v341 = "nw_http1_connection_write_chunk_header";
              v192 = v202;
              v193 = v203;
              v194 = "%{public}s called with null buffer, no backtrace";
LABEL_338:
              _os_log_impl(&dword_181A37000, v192, v193, v194, buf, 0xCu);
            }

LABEL_339:
            if (v189)
            {
              free(v189);
            }

LABEL_165:
            v110 = v103 + 3;
            if (v105 == 6)
            {
              v111 = 0;
              v112 = v18;
            }

            else
            {
              v112 = v18;
              memmove((v88 + v110), (v88 + 10), v18);
              v111 = 7 - v103;
            }

            v9 = v324;
            if (v88)
            {
              v113 = v88 + v110 + v112;
              *v113 = 2573;
              v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
              v12 = v322;
              if (v102)
              {
                *(v113 + 6) = 10;
                *(v113 + 2) = 218762544;
                goto LABEL_171;
              }

              goto LABEL_177;
            }

            __nwlog_obj();
            *buf = 136446210;
            v341 = "nw_http1_connection_write_chunk_trailer";
            v195 = _os_log_send_and_compose_impl();
            v326[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
            if (__nwlog_fault(v195, v326, type))
            {
              if (v326[0] != OS_LOG_TYPE_FAULT)
              {
                if (type[0] == OS_LOG_TYPE_INFO)
                {
                  v205 = __nw_create_backtrace_string();
                  v206 = __nwlog_obj();
                  v207 = v326[0];
                  v208 = os_log_type_enabled(v206, v326[0]);
                  if (v205)
                  {
                    if (v208)
                    {
                      *buf = 136446466;
                      v341 = "nw_http1_connection_write_chunk_trailer";
                      v342 = 2082;
                      *v343 = v205;
                      _os_log_impl(&dword_181A37000, v206, v207, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v205);
                    v9 = v324;
                    goto LABEL_344;
                  }

                  v9 = v324;
                  if (!v208)
                  {
                    goto LABEL_344;
                  }

                  *buf = 136446210;
                  v341 = "nw_http1_connection_write_chunk_trailer";
                  v198 = v206;
                  v199 = v207;
                  v200 = "%{public}s called with null buffer, no backtrace";
                }

                else
                {
                  v216 = __nwlog_obj();
                  v217 = v326[0];
                  v9 = v324;
                  if (!os_log_type_enabled(v216, v326[0]))
                  {
                    goto LABEL_344;
                  }

                  *buf = 136446210;
                  v341 = "nw_http1_connection_write_chunk_trailer";
                  v198 = v216;
                  v199 = v217;
                  v200 = "%{public}s called with null buffer, backtrace limit exceeded";
                }

LABEL_343:
                _os_log_impl(&dword_181A37000, v198, v199, v200, buf, 0xCu);
                goto LABEL_344;
              }

              v196 = __nwlog_obj();
              v197 = v326[0];
              if (os_log_type_enabled(v196, v326[0]))
              {
                *buf = 136446210;
                v341 = "nw_http1_connection_write_chunk_trailer";
                v198 = v196;
                v199 = v197;
                v200 = "%{public}s called with null buffer";
                goto LABEL_343;
              }
            }

LABEL_344:
            if (v195)
            {
              free(v195);
            }

            v12 = v322;
LABEL_171:
            v114 = v102 ^ 1;
            if (*(v9 + 872) >= 0)
            {
              v114 = 1;
            }

            if ((v114 & 1) == 0)
            {
              if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
              {
                v210 = __nwlog_obj();
                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEBUG))
                {
                  v211 = *(v9 + 488);
                  if (v211)
                  {
                    LODWORD(v211) = *(v211 + 424);
                  }

                  v9 = v324;
                  v212 = *(*(v324 + 480) + 372);
                  v213 = *(v324 + 860);
                  *buf = 136447746;
                  v341 = "nw_http1_connection_drain_outbound_frames";
                  v342 = 2082;
                  *v343 = v323;
                  *&v343[8] = 2080;
                  *&v343[10] = " ";
                  v344 = 1024;
                  *v345 = v212;
                  *&v345[4] = 1024;
                  *&v345[6] = v213;
                  LOWORD(v346) = 1024;
                  *(&v346 + 2) = v211;
                  HIWORD(v346) = 2048;
                  v12 = v322;
                  *v347 = v322;
                  _os_log_impl(&dword_181A37000, v210, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> pending final chunk written to frame %p", buf, 0x3Cu);
                }
              }

              *(v9 + 872) &= ~0x8000u;
            }

LABEL_177:
            if (v102)
            {
              v115 = 0;
            }

            else
            {
              v115 = 5;
            }

            v116 = v111 + v115;
            if (!__CFADD__(v111, v115))
            {
              v11 = v320;
              v18 = v18;
              if (!v116)
              {
                if (!*(v12 + 112))
                {
LABEL_326:
                  v19 = 0;
                  if ((*(v12 + 204) & 4) != 0)
                  {
                    goto LABEL_327;
                  }

LABEL_237:
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  *buf = 136446466;
                  v341 = "nw_http1_frame_metadata_reset";
                  v342 = 2048;
                  *v343 = v12;
                  v140 = _os_log_send_and_compose_impl();
                  v326[0] = OS_LOG_TYPE_ERROR;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  if (__nwlog_fault(v140, v326, type))
                  {
                    if (v326[0] != OS_LOG_TYPE_FAULT)
                    {
                      if (type[0] == OS_LOG_TYPE_INFO)
                      {
                        v146 = __nw_create_backtrace_string();
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v147 = gLogObj;
                        v148 = v326[0];
                        v149 = os_log_type_enabled(gLogObj, v326[0]);
                        if (v146)
                        {
                          if (v149)
                          {
                            *buf = 136446722;
                            v341 = "nw_http1_frame_metadata_reset";
                            v342 = 2048;
                            *v343 = v322;
                            *&v343[8] = 2082;
                            *&v343[10] = v146;
                            _os_log_impl(&dword_181A37000, v147, v148, "%{public}s frame %p has no metadata, dumping backtrace:%{public}s", buf, 0x20u);
                          }

                          free(v146);
                          goto LABEL_251;
                        }

                        if (!v149)
                        {
                          goto LABEL_251;
                        }

                        *buf = 136446466;
                        v341 = "nw_http1_frame_metadata_reset";
                        v342 = 2048;
                        *v343 = v322;
                        v143 = v147;
                        v144 = v148;
                        v145 = "%{public}s frame %p has no metadata, no backtrace";
                      }

                      else
                      {
                        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                        networkd_settings_init();
                        v150 = gLogObj;
                        v151 = v326[0];
                        if (!os_log_type_enabled(gLogObj, v326[0]))
                        {
                          goto LABEL_251;
                        }

                        *buf = 136446466;
                        v341 = "nw_http1_frame_metadata_reset";
                        v342 = 2048;
                        *v343 = v322;
                        v143 = v150;
                        v144 = v151;
                        v145 = "%{public}s frame %p has no metadata, backtrace limit exceeded";
                      }

LABEL_250:
                      _os_log_impl(&dword_181A37000, v143, v144, v145, buf, 0x16u);
                      goto LABEL_251;
                    }

                    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                    networkd_settings_init();
                    v141 = gLogObj;
                    v142 = v326[0];
                    if (os_log_type_enabled(gLogObj, v326[0]))
                    {
                      *buf = 136446466;
                      v341 = "nw_http1_frame_metadata_reset";
                      v342 = 2048;
                      *v343 = v322;
                      v143 = v141;
                      v144 = v142;
                      v145 = "%{public}s frame %p has no metadata";
                      goto LABEL_250;
                    }
                  }

LABEL_251:
                  if (v140)
                  {
                    free(v140);
                  }

                  v11 = v320;
                  v12 = v322;
LABEL_42:
                  v20 = *(v12 + 64);
                  if (!v20)
                  {
                    goto LABEL_57;
                  }

                  if ((*(v20 + 66) & 0x40) != 0 && (*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                  {
                    v179 = __nwlog_obj();
                    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
                    {
                      v180 = *(v9 + 488);
                      if (v180)
                      {
                        LODWORD(v180) = *(v180 + 424);
                      }

                      v181 = *(*(v9 + 480) + 372);
                      v182 = *(v9 + 860);
                      *buf = 136447746;
                      v341 = "nw_http1_connection_drain_outbound_frames";
                      v342 = 2082;
                      *v343 = v323;
                      *&v343[8] = 2080;
                      *&v343[10] = " ";
                      v344 = 1024;
                      *v345 = v181;
                      *&v345[4] = 1024;
                      *&v345[6] = v182;
                      LOWORD(v346) = 1024;
                      *(&v346 + 2) = v180;
                      HIWORD(v346) = 2048;
                      *v347 = v12;
                      _os_log_impl(&dword_181A37000, v179, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> draining output frame %p, complete", buf, 0x3Cu);
                    }
                  }

                  v21 = *(v12 + 64);
                  if (v21)
                  {
                    __len = (*(v21 + 66) >> 6) & 1;
                    if (!v19)
                    {
                      goto LABEL_48;
                    }

LABEL_58:
                    if (v18)
                    {
                      v35 = *(v9 + 32);
                      if (v35)
                      {
                        if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                        {
                          v160 = __nwlog_obj();
                          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
                          {
                            v161 = *(v9 + 488);
                            if (v161)
                            {
                              LODWORD(v161) = *(v161 + 424);
                            }

                            v162 = *(*(v9 + 480) + 372);
                            v163 = *(v9 + 860);
                            *buf = 136447746;
                            v341 = "nw_http1_connection_send_bytes";
                            v342 = 2082;
                            *v343 = v323;
                            *&v343[8] = 2080;
                            *&v343[10] = " ";
                            v344 = 1024;
                            *v345 = v162;
                            *&v345[4] = 1024;
                            *&v345[6] = v163;
                            LOWORD(v346) = 1024;
                            *(&v346 + 2) = v161;
                            HIWORD(v346) = 1024;
                            *v347 = v18;
                            _os_log_impl(&dword_181A37000, v160, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> sending %u bytes", buf, 0x38u);
                          }
                        }

                        v36 = v18;
LABEL_66:
                        v338 = 0;
                        v339 = &v338;
                        v336 = 0;
                        v337 = &v336;
                        output_frames = nw_protocol_get_output_frames(v35, v9, 1, v18, 0xFFFFFFFFLL, &v338);
                        v41 = v338;
                        if (v338)
                        {
                          v42 = output_frames == 0;
                        }

                        else
                        {
                          v42 = 1;
                        }

                        if (v42)
                        {
                          v11 = v320;
                          if (output_frames)
                          {
                            v78 = output_frames;
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            *buf = 136446466;
                            v341 = "nw_http1_connection_send_bytes";
                            v342 = 1024;
                            v79 = v78;
                            *v343 = v78;
                            v80 = _os_log_send_and_compose_impl();
                            type[0] = OS_LOG_TYPE_ERROR;
                            v335 = 0;
                            if (!__nwlog_fault(v80, type, &v335))
                            {
                              goto LABEL_204;
                            }

                            if (type[0] != OS_LOG_TYPE_FAULT)
                            {
                              if (v335 == 1)
                              {
                                v93 = __nw_create_backtrace_string();
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v94 = gLogObj;
                                v95 = type[0];
                                v96 = os_log_type_enabled(gLogObj, type[0]);
                                if (v93)
                                {
                                  if (v96)
                                  {
                                    *buf = 136446722;
                                    v341 = "nw_http1_connection_send_bytes";
                                    v342 = 1024;
                                    *v343 = v79;
                                    *&v343[4] = 2082;
                                    *&v343[6] = v93;
                                    _os_log_impl(&dword_181A37000, v94, v95, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                  }

                                  free(v93);
                                  goto LABEL_204;
                                }

                                if (!v96)
                                {
                                  goto LABEL_204;
                                }

                                *buf = 136446466;
                                v341 = "nw_http1_connection_send_bytes";
                                v342 = 1024;
                                *v343 = v79;
                                v83 = v94;
                                v84 = v95;
                                v85 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                              }

                              else
                              {
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v99 = gLogObj;
                                v100 = type[0];
                                if (!os_log_type_enabled(gLogObj, type[0]))
                                {
                                  goto LABEL_204;
                                }

                                *buf = 136446466;
                                v341 = "nw_http1_connection_send_bytes";
                                v342 = 1024;
                                *v343 = v79;
                                v83 = v99;
                                v84 = v100;
                                v85 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                              }

LABEL_203:
                              _os_log_impl(&dword_181A37000, v83, v84, v85, buf, 0x12u);
                              goto LABEL_204;
                            }

                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v81 = gLogObj;
                            v82 = type[0];
                            if (os_log_type_enabled(gLogObj, type[0]))
                            {
                              *buf = 136446466;
                              v341 = "nw_http1_connection_send_bytes";
                              v342 = 1024;
                              *v343 = v79;
                              v83 = v81;
                              v84 = v82;
                              v85 = "%{public}s output handler reported %u frames to write, but array is empty";
                              goto LABEL_203;
                            }

LABEL_204:
                            if (v80)
                            {
                              free(v80);
                            }
                          }

                          if ((*(v9 + 158) & 1) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v127 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                            {
                              v128 = *(v9 + 488);
                              if (v128)
                              {
                                LODWORD(v128) = *(v128 + 424);
                              }

                              v129 = *(*(v9 + 480) + 372);
                              v130 = *(v9 + 860);
                              *buf = 136447746;
                              v341 = "nw_http1_connection_send_bytes";
                              v342 = 2082;
                              *v343 = v323;
                              *&v343[8] = 2080;
                              *&v343[10] = " ";
                              v344 = 1024;
                              *v345 = v129;
                              *&v345[4] = 1024;
                              *&v345[6] = v130;
                              LOWORD(v346) = 1024;
                              *(&v346 + 2) = v128;
                              HIWORD(v346) = 1024;
                              *v347 = v18;
                              _os_log_impl(&dword_181A37000, v127, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                            }
                          }

                          v131 = v18 - v36;
                          v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                          if (v131 == v18)
                          {
LABEL_212:
                            nw_http_transaction_metadata_increment_outbound_body_transfer_size(*(*(v9 + 488) + 352), v18);
                            v132 = *(v9 + 488);
                            v133 = *(v132 + 176);
                            *(v132 + 176) = v133 + v18;
                            if (__CFADD__(v133, v18))
                            {
                              if (BYTE1(v10[82].isa) == 1)
                              {
                                v177 = __nwlog_obj();
                                if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
                                {
                                  v178 = *(v132 + 176);
                                  *buf = 136446978;
                                  v341 = "increment_outbound_body_size";
                                  v342 = 2082;
                                  *v343 = "outbound_body_size";
                                  *&v343[8] = 2048;
                                  *&v343[10] = v18;
                                  v344 = 2048;
                                  *v345 = v178;
                                  _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
                                }
                              }

                              *(v132 + 176) = -1;
                            }

                            v12 = v322;
                            v134 = *(v322 + 64);
                            if (v134)
                            {
                              if ((*(v134 + 66) & 0x40) != 0)
                              {
                                *(*(v9 + 488) + 428) |= 0x800u;
                                *(v9 + 872) |= 0x20u;
                                nw_http_transaction_metadata_mark_outbound_message_end(*(*(v9 + 488) + 352));
                                v135 = *(v9 + 488);
                                if (*(v135 + 168) == 1 && *(v135 + 160) != *(v135 + 176))
                                {
                                  if ((*(v135 + 158) & 1) == 0)
                                  {
                                    v222 = __nwlog_obj();
                                    v223 = os_log_type_enabled(v222, OS_LOG_TYPE_ERROR);
                                    v135 = *(v9 + 488);
                                    if (v223)
                                    {
                                      v224 = *(v135 + 256);
                                      if (v224)
                                      {
                                        LODWORD(v224) = *(v224 + 860);
                                      }

                                      v225 = *(*(v135 + 248) + 372);
                                      v226 = *(v135 + 424);
                                      if (*(v135 + 168) == 1)
                                      {
                                        v227 = *(v135 + 160);
                                      }

                                      else
                                      {
                                        v227 = -1;
                                      }

                                      v228 = *(v135 + 176);
                                      *buf = 136448002;
                                      v341 = "nw_http1_connection_drain_outbound_frames";
                                      v342 = 2082;
                                      *v343 = v135 + 74;
                                      *&v343[8] = 2080;
                                      *&v343[10] = " ";
                                      v344 = 1024;
                                      *v345 = v225;
                                      *&v345[4] = 1024;
                                      *&v345[6] = v224;
                                      LOWORD(v346) = 1024;
                                      *(&v346 + 2) = v226;
                                      HIWORD(v346) = 2048;
                                      *v347 = v227;
                                      *&v347[8] = 2048;
                                      v348 = v228;
                                      _os_log_impl(&dword_181A37000, v222, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                      v135 = *(v9 + 488);
                                    }
                                  }

                                  nw_protocol_error(*(v135 + 48), v135);
                                  nw_protocol_disconnected(*(*(v9 + 488) + 48), *(v9 + 488));
LABEL_362:
                                  nw_frame_claim(v12, v23, v18, 0);
                                  nw_frame_array_prepend(v11, 1, v12);
LABEL_363:
                                  v229 = *(v9 + 872);
                                  if ((v229 & 0x80000000) == 0 || *v11)
                                  {
LABEL_365:
                                    v230 = *(v9 + 488);
                                    if (v230)
                                    {
                                      nw_protocol_output_available(*(v230 + 48), v230);
                                    }

                                    else if ((*(v9 + 158) & 1) == 0)
                                    {
                                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                      networkd_settings_init();
                                      v231 = gLogObj;
                                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                                      {
                                        v232 = *(v9 + 488);
                                        v233 = *(*(v9 + 480) + 372);
                                        v234 = *(v9 + 860);
                                        if (v232)
                                        {
                                          LODWORD(v232) = *(v232 + 424);
                                        }

                                        *buf = 136447490;
                                        v341 = "nw_protocol_http1_output_available";
                                        v342 = 2082;
                                        *v343 = v9 + 74;
                                        *&v343[8] = 2080;
                                        *&v343[10] = " ";
                                        v344 = 1024;
                                        *v345 = v233;
                                        *&v345[4] = 1024;
                                        *&v345[6] = v234;
                                        LOWORD(v346) = 1024;
                                        *(&v346 + 2) = v232;
                                        _os_log_impl(&dword_181A37000, v231, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> not sending output_available for connection without stream", buf, 0x32u);
                                      }
                                    }

                                    return;
                                  }

                                  *(v9 + 872) = v229 & 0x7FFF;
                                  if ((*(v9 + 158) & 1) == 0 && BYTE1(v10[82].isa) == 1)
                                  {
                                    v306 = __nwlog_obj();
                                    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEBUG))
                                    {
                                      v307 = *(v9 + 488);
                                      v308 = *(*(v9 + 480) + 372);
                                      v309 = *(v9 + 860);
                                      if (v307)
                                      {
                                        LODWORD(v307) = *(v307 + 424);
                                      }

                                      *buf = 136447490;
                                      v341 = "nw_http1_connection_send_final_chunk";
                                      v342 = 2082;
                                      *v343 = v9 + 74;
                                      *&v343[8] = 2080;
                                      *&v343[10] = " ";
                                      v344 = 1024;
                                      *v345 = v308;
                                      *&v345[4] = 1024;
                                      *&v345[6] = v309;
                                      LOWORD(v346) = 1024;
                                      *(&v346 + 2) = v307;
                                      _os_log_impl(&dword_181A37000, v306, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> requesting new frame for final chunk", buf, 0x32u);
                                      v9 = v324;
                                    }
                                  }

                                  v235 = *(v9 + 32);
                                  if (v235)
                                  {
                                    *v326 = 0;
                                    v327 = v326;
                                    v236 = nw_protocol_get_output_frames(v235, v9, 5, 5, 1, v326);
                                    v237 = v236;
                                    v238 = *v326;
                                    if (*v326 && v236)
                                    {
                                      *type = 0;
                                      v239 = nw_frame_unclaimed_bytes(*v326, type);
                                      *v239 = 218762544;
                                      *(v239 + 4) = 10;
                                      if (nw_frame_claim(v238, v240, 5, 0))
                                      {
                                        nw_frame_collapse(v238);
                                        nw_frame_unclaim(v238, v241, 5u, 0);
                                        if (nw_protocol_finalize_output_frames(v235, v326))
                                        {
                                          *(*(v9 + 488) + 428) |= 0x800u;
                                          *(v9 + 872) |= 0x20u;
                                          nw_http_transaction_metadata_mark_outbound_message_end(*(*(v9 + 488) + 352));
                                          v242 = *(v9 + 488);
                                          if (*(v242 + 168) == 1 && *(v242 + 160) != *(v242 + 176))
                                          {
                                            if ((*(v242 + 158) & 1) == 0)
                                            {
                                              v243 = __nwlog_obj();
                                              v244 = os_log_type_enabled(v243, OS_LOG_TYPE_ERROR);
                                              v242 = *(v9 + 488);
                                              if (v244)
                                              {
                                                v245 = *(v242 + 256);
                                                if (v245)
                                                {
                                                  LODWORD(v245) = *(v245 + 860);
                                                }

                                                v246 = *(*(v242 + 248) + 372);
                                                v247 = *(v242 + 424);
                                                if (*(v242 + 168) == 1)
                                                {
                                                  v248 = *(v242 + 160);
                                                }

                                                else
                                                {
                                                  v248 = -1;
                                                }

                                                v276 = *(v242 + 176);
                                                *buf = 136448002;
                                                v341 = "nw_http1_connection_send_final_chunk";
                                                v342 = 2082;
                                                *v343 = v242 + 74;
                                                *&v343[8] = 2080;
                                                *&v343[10] = " ";
                                                v344 = 1024;
                                                *v345 = v246;
                                                *&v345[4] = 1024;
                                                *&v345[6] = v245;
                                                LOWORD(v346) = 1024;
                                                *(&v346 + 2) = v247;
                                                HIWORD(v346) = 2048;
                                                *v347 = v248;
                                                *&v347[8] = 2048;
                                                v348 = v276;
                                                _os_log_impl(&dword_181A37000, v243, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> Content length header %llu does not equal body size %llu", buf, 0x46u);
                                                v242 = *(v9 + 488);
                                              }
                                            }

                                            nw_protocol_error(*(v242 + 48), v242);
                                            nw_protocol_disconnected(*(*(v9 + 488) + 48), *(v9 + 488));
                                          }
                                        }

                                        goto LABEL_365;
                                      }

                                      __nwlog_obj();
                                      *buf = 136446466;
                                      v341 = "nw_http1_connection_send_final_chunk";
                                      v342 = 1024;
                                      *v343 = 5;
                                      v253 = _os_log_send_and_compose_impl();
                                      LOBYTE(v338) = 16;
                                      LOBYTE(v336) = 0;
                                      if (!__nwlog_fault(v253, &v338, &v336))
                                      {
                                        goto LABEL_425;
                                      }

                                      if (v338 == 17)
                                      {
                                        v254 = __nwlog_obj();
                                        v255 = v338;
                                        if (os_log_type_enabled(v254, v338))
                                        {
                                          *buf = 136446466;
                                          v341 = "nw_http1_connection_send_final_chunk";
                                          v342 = 1024;
                                          *v343 = 5;
                                          v256 = "%{public}s claiming frame with %u bytes failed";
                                          goto LABEL_423;
                                        }

                                        goto LABEL_425;
                                      }

                                      if (v336 == 1)
                                      {
                                        v259 = __nw_create_backtrace_string();
                                        v254 = __nwlog_obj();
                                        v255 = v338;
                                        v260 = os_log_type_enabled(v254, v338);
                                        if (v259)
                                        {
                                          if (v260)
                                          {
                                            *buf = 136446722;
                                            v341 = "nw_http1_connection_send_final_chunk";
                                            v342 = 1024;
                                            *v343 = 5;
                                            *&v343[4] = 2082;
                                            *&v343[6] = v259;
                                            _os_log_impl(&dword_181A37000, v254, v255, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                                          }

                                          free(v259);
                                          if (!v253)
                                          {
                                            goto LABEL_365;
                                          }

                                          goto LABEL_426;
                                        }

                                        if (!v260)
                                        {
                                          goto LABEL_425;
                                        }

                                        *buf = 136446466;
                                        v341 = "nw_http1_connection_send_final_chunk";
                                        v342 = 1024;
                                        *v343 = 5;
                                        v256 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                                      }

                                      else
                                      {
                                        v254 = __nwlog_obj();
                                        v255 = v338;
                                        if (!os_log_type_enabled(v254, v338))
                                        {
                                          goto LABEL_425;
                                        }

                                        *buf = 136446466;
                                        v341 = "nw_http1_connection_send_final_chunk";
                                        v342 = 1024;
                                        *v343 = 5;
                                        v256 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
                                      }

LABEL_423:
                                      v265 = v254;
                                      v266 = v255;
                                      v267 = 18;
LABEL_424:
                                      _os_log_impl(&dword_181A37000, v265, v266, v256, buf, v267);
                                      goto LABEL_425;
                                    }

                                    if (v236)
                                    {
                                      __nwlog_obj();
                                      *buf = 136446466;
                                      v341 = "nw_http1_connection_send_final_chunk";
                                      v342 = 1024;
                                      *v343 = v237;
                                      v249 = _os_log_send_and_compose_impl();
                                      type[0] = OS_LOG_TYPE_ERROR;
                                      LOBYTE(v338) = 0;
                                      if (!__nwlog_fault(v249, type, &v338))
                                      {
                                        goto LABEL_414;
                                      }

                                      if (type[0] != OS_LOG_TYPE_FAULT)
                                      {
                                        if (v338 == 1)
                                        {
                                          v257 = __nw_create_backtrace_string();
                                          v250 = __nwlog_obj();
                                          v251 = type[0];
                                          v258 = os_log_type_enabled(v250, type[0]);
                                          if (v257)
                                          {
                                            if (v258)
                                            {
                                              *buf = 136446722;
                                              v341 = "nw_http1_connection_send_final_chunk";
                                              v342 = 1024;
                                              *v343 = v237;
                                              *&v343[4] = 2082;
                                              *&v343[6] = v257;
                                              _os_log_impl(&dword_181A37000, v250, v251, "%{public}s output handler reported %u frames to write, but array is empty, dumping backtrace:%{public}s", buf, 0x1Cu);
                                            }

                                            free(v257);
                                            goto LABEL_414;
                                          }

                                          if (!v258)
                                          {
                                            goto LABEL_414;
                                          }

                                          *buf = 136446466;
                                          v341 = "nw_http1_connection_send_final_chunk";
                                          v342 = 1024;
                                          *v343 = v237;
                                          v252 = "%{public}s output handler reported %u frames to write, but array is empty, no backtrace";
                                        }

                                        else
                                        {
                                          v250 = __nwlog_obj();
                                          v251 = type[0];
                                          if (!os_log_type_enabled(v250, type[0]))
                                          {
                                            goto LABEL_414;
                                          }

                                          *buf = 136446466;
                                          v341 = "nw_http1_connection_send_final_chunk";
                                          v342 = 1024;
                                          *v343 = v237;
                                          v252 = "%{public}s output handler reported %u frames to write, but array is empty, backtrace limit exceeded";
                                        }

LABEL_413:
                                        _os_log_impl(&dword_181A37000, v250, v251, v252, buf, 0x12u);
                                        goto LABEL_414;
                                      }

                                      v250 = __nwlog_obj();
                                      v251 = type[0];
                                      if (os_log_type_enabled(v250, type[0]))
                                      {
                                        *buf = 136446466;
                                        v341 = "nw_http1_connection_send_final_chunk";
                                        v342 = 1024;
                                        *v343 = v237;
                                        v252 = "%{public}s output handler reported %u frames to write, but array is empty";
                                        goto LABEL_413;
                                      }

LABEL_414:
                                      if (v249)
                                      {
                                        free(v249);
                                      }
                                    }

                                    if ((*(v9 + 158) & 1) == 0)
                                    {
                                      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                      networkd_settings_init();
                                      v261 = gLogObj;
                                      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEBUG))
                                      {
                                        v262 = *(v9 + 488);
                                        v263 = *(*(v9 + 480) + 372);
                                        v264 = *(v9 + 860);
                                        if (v262)
                                        {
                                          LODWORD(v262) = *(v262 + 424);
                                        }

                                        *buf = 136447746;
                                        v341 = "nw_http1_connection_send_final_chunk";
                                        v342 = 2082;
                                        *v343 = v9 + 74;
                                        *&v343[8] = 2080;
                                        *&v343[10] = " ";
                                        v344 = 1024;
                                        *v345 = v263;
                                        *&v345[4] = 1024;
                                        *&v345[6] = v264;
                                        LOWORD(v346) = 1024;
                                        *(&v346 + 2) = v262;
                                        HIWORD(v346) = 1024;
                                        *v347 = 5;
                                        _os_log_impl(&dword_181A37000, v261, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> output handler refused frame request for frames of length %u", buf, 0x38u);
                                      }
                                    }

                                    goto LABEL_365;
                                  }

                                  __nwlog_obj();
                                  *buf = 136446210;
                                  v341 = "nw_http1_connection_send_final_chunk";
                                  v302 = _os_log_send_and_compose_impl();
                                  v326[0] = OS_LOG_TYPE_ERROR;
                                  type[0] = OS_LOG_TYPE_DEFAULT;
                                  if (!__nwlog_fault(v302, v326, type))
                                  {
                                    goto LABEL_598;
                                  }

                                  if (v326[0] == OS_LOG_TYPE_FAULT)
                                  {
                                    v303 = __nwlog_obj();
                                    v304 = v326[0];
                                    if (os_log_type_enabled(v303, v326[0]))
                                    {
                                      *buf = 136446210;
                                      v341 = "nw_http1_connection_send_final_chunk";
                                      v305 = "%{public}s called with null output_handler";
                                      goto LABEL_597;
                                    }

                                    goto LABEL_598;
                                  }

                                  if (type[0] == OS_LOG_TYPE_INFO)
                                  {
                                    v318 = __nw_create_backtrace_string();
                                    v303 = __nwlog_obj();
                                    v304 = v326[0];
                                    v319 = os_log_type_enabled(v303, v326[0]);
                                    if (v318)
                                    {
                                      if (v319)
                                      {
                                        *buf = 136446466;
                                        v341 = "nw_http1_connection_send_final_chunk";
                                        v342 = 2082;
                                        *v343 = v318;
                                        _os_log_impl(&dword_181A37000, v303, v304, "%{public}s called with null output_handler, dumping backtrace:%{public}s", buf, 0x16u);
                                      }

                                      free(v318);
                                      goto LABEL_598;
                                    }

                                    if (!v319)
                                    {
LABEL_598:
                                      if (v302)
                                      {
                                        free(v302);
                                      }

                                      v9 = v324;
                                      goto LABEL_365;
                                    }

                                    *buf = 136446210;
                                    v341 = "nw_http1_connection_send_final_chunk";
                                    v305 = "%{public}s called with null output_handler, no backtrace";
                                  }

                                  else
                                  {
                                    v303 = __nwlog_obj();
                                    v304 = v326[0];
                                    if (!os_log_type_enabled(v303, v326[0]))
                                    {
                                      goto LABEL_598;
                                    }

                                    *buf = 136446210;
                                    v341 = "nw_http1_connection_send_final_chunk";
                                    v305 = "%{public}s called with null output_handler, backtrace limit exceeded";
                                  }

LABEL_597:
                                  _os_log_impl(&dword_181A37000, v303, v304, v305, buf, 0xCu);
                                  goto LABEL_598;
                                }
                              }
                            }

LABEL_25:
                            *(v12 + 80) = 0;
                            *(v12 + 88) = 0;
                            nw_frame_cache_return_frame(v9 + 696, v12);
                            v12 = *v11;
                            if (!*v11)
                            {
                              goto LABEL_363;
                            }

                            goto LABEL_26;
                          }

LABEL_347:
                          if ((*(v9 + 158) & 1) == 0)
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v218 = gLogObj;
                            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
                            {
                              v219 = *(v9 + 488);
                              v220 = *(*(v9 + 480) + 372);
                              v221 = *(v9 + 860);
                              if (v219)
                              {
                                LODWORD(v219) = *(v219 + 424);
                              }

                              *buf = 136448002;
                              v341 = "nw_http1_connection_drain_outbound_frames";
                              v342 = 2082;
                              *v343 = v323;
                              *&v343[8] = 2080;
                              *&v343[10] = " ";
                              v344 = 1024;
                              *v345 = v220;
                              *&v345[4] = 1024;
                              *&v345[6] = v221;
                              LOWORD(v346) = 1024;
                              *(&v346 + 2) = v219;
                              HIWORD(v346) = 1024;
                              *v347 = v18;
                              *&v347[4] = 1024;
                              *&v347[6] = v131;
                              _os_log_impl(&dword_181A37000, v218, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u:c%u:s%u> could not send pending output frame of length %u sent %u", buf, 0x3Eu);
                            }
                          }

                          LODWORD(v18) = v131;
                          v12 = v322;
                          goto LABEL_362;
                        }

                        while (1)
                        {
                          v43 = *(v41 + 32);
                          if (v43 || *(v41 + 40))
                          {
                            v44 = *(v41 + 112);
                            if (!v44)
                            {
                              goto LABEL_80;
                            }
                          }

                          else
                          {
                            v43 = 0;
                            v44 = *(v41 + 112);
                            if (!v44)
                            {
                              goto LABEL_80;
                            }
                          }

                          if ((*(v41 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v41, *(v41 + 88)))
                          {
                            LODWORD(v44) = 0;
LABEL_80:
                            v46 = 0;
                            goto LABEL_81;
                          }

                          LODWORD(v44) = *(v41 + 52);
                          v45 = *(v41 + 56);
                          if (v44)
                          {
                            LODWORD(v44) = v44 - (v45 + *(v41 + 60));
                          }

                          v46 = (*(v41 + 112) + v45);
LABEL_81:
                          if (v44 >= v36)
                          {
                            v47 = v36;
                          }

                          else
                          {
                            v47 = v44;
                          }

                          memcpy(v46, v19, v47);
                          v36 -= v47;
                          v19 += v47;
                          if (!nw_frame_claim(v41, v48, v47, 0))
                          {
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            *buf = 136446466;
                            v341 = "nw_http1_connection_send_bytes";
                            v342 = 1024;
                            *v343 = v47;
                            v54 = _os_log_send_and_compose_impl();
                            type[0] = OS_LOG_TYPE_ERROR;
                            v335 = 0;
                            if (!__nwlog_fault(v54, type, &v335))
                            {
                              goto LABEL_105;
                            }

                            if (type[0] == OS_LOG_TYPE_FAULT)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v55 = gLogObj;
                              v56 = type[0];
                              if (os_log_type_enabled(gLogObj, type[0]))
                              {
                                *buf = 136446466;
                                v341 = "nw_http1_connection_send_bytes";
                                v342 = 1024;
                                *v343 = v47;
                                v57 = v55;
                                v58 = v56;
                                v59 = "%{public}s claiming frame with %u bytes failed";
                                goto LABEL_104;
                              }

                              goto LABEL_105;
                            }

                            if (v335 != 1)
                            {
                              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                              networkd_settings_init();
                              v64 = gLogObj;
                              v65 = type[0];
                              if (!os_log_type_enabled(gLogObj, type[0]))
                              {
                                goto LABEL_105;
                              }

                              *buf = 136446466;
                              v341 = "nw_http1_connection_send_bytes";
                              v342 = 1024;
                              *v343 = v47;
                              v57 = v64;
                              v58 = v65;
                              v59 = "%{public}s claiming frame with %u bytes failed, backtrace limit exceeded";
LABEL_104:
                              _os_log_impl(&dword_181A37000, v57, v58, v59, buf, 0x12u);
                              goto LABEL_105;
                            }

                            v60 = __nw_create_backtrace_string();
                            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                            networkd_settings_init();
                            v61 = gLogObj;
                            v62 = type[0];
                            v63 = os_log_type_enabled(gLogObj, type[0]);
                            if (v60)
                            {
                              if (v63)
                              {
                                *buf = 136446722;
                                v341 = "nw_http1_connection_send_bytes";
                                v342 = 1024;
                                *v343 = v47;
                                *&v343[4] = 2082;
                                *&v343[6] = v60;
                                _os_log_impl(&dword_181A37000, v61, v62, "%{public}s claiming frame with %u bytes failed, dumping backtrace:%{public}s", buf, 0x1Cu);
                              }

                              free(v60);
                              goto LABEL_105;
                            }

                            if (v63)
                            {
                              *buf = 136446466;
                              v341 = "nw_http1_connection_send_bytes";
                              v342 = 1024;
                              *v343 = v47;
                              v57 = v61;
                              v58 = v62;
                              v59 = "%{public}s claiming frame with %u bytes failed, no backtrace";
                              goto LABEL_104;
                            }

LABEL_105:
                            if (v54)
                            {
                              free(v54);
                            }

                            v9 = v324;
LABEL_108:
                            v66 = v337[1];
                            v67 = *v66;
                            if (*v66)
                            {
                              nw_frame_set_metadata(*v66, 0, 0, __len);
                              if (__len)
                              {
                                if ((*(v9 + 158) & 1) == 0 && gLogDatapath == 1)
                                {
                                  v74 = __nwlog_obj();
                                  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
                                  {
                                    v75 = *(v9 + 488);
                                    if (v75)
                                    {
                                      LODWORD(v75) = *(v75 + 424);
                                    }

                                    v76 = *(*(v9 + 480) + 372);
                                    v77 = *(v9 + 860);
                                    *buf = 136447746;
                                    v341 = "nw_http1_connection_send_bytes";
                                    v342 = 2082;
                                    *v343 = v323;
                                    *&v343[8] = 2080;
                                    *&v343[10] = " ";
                                    v344 = 1024;
                                    *v345 = v76;
                                    *&v345[4] = 1024;
                                    *&v345[6] = v77;
                                    LOWORD(v346) = 1024;
                                    *(&v346 + 2) = v75;
                                    HIWORD(v346) = 2048;
                                    *v347 = v67;
                                    _os_log_impl(&dword_181A37000, v74, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:c%u:s%u> setting complete on last output frame %p", buf, 0x3Cu);
                                  }
                                }
                              }
                            }

                            nw_protocol_finalize_output_frames(v35, &v336);
                            if (v338)
                            {
                              *type = 0;
                              v332 = type;
                              v333 = 0x2000000000;
                              v334 = 0;
                              *v326 = MEMORY[0x1E69E9820];
                              v327 = 0x40000000;
                              v328 = ___ZL30nw_http1_connection_send_bytesP19nw_http1_connectionPhjb_block_invoke;
                              v329 = &unk_1E6A32B10;
                              v330 = type;
                              do
                              {
                                v68 = v338;
                                if (!v338)
                                {
                                  break;
                                }

                                v69 = *(v338 + 32);
                                v70 = *(v338 + 40);
                                v71 = (v69 + 40);
                                if (!v69)
                                {
                                  v71 = &v339;
                                }

                                *v71 = v70;
                                *v70 = v69;
                                *(v68 + 32) = 0;
                                *(v68 + 40) = 0;
                              }

                              while (((v328)(v326) & 1) != 0);
                              if ((*(v9 + 158) & 1) == 0)
                              {
                                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                                networkd_settings_init();
                                v72 = gLogObj;
                                if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
                                {
                                  v73 = *(v9 + 488);
                                  if (v73)
                                  {
                                    LODWORD(v73) = *(v73 + 424);
                                  }

                                  v37 = *(*(v9 + 480) + 372);
                                  v38 = *(v9 + 860);
                                  v39 = *(v332 + 6);
                                  *buf = 136447746;
                                  v341 = "nw_http1_connection_send_bytes";
                                  v342 = 2082;
                                  *v343 = v323;
                                  *&v343[8] = 2080;
                                  *&v343[10] = " ";
                                  v344 = 1024;
                                  *v345 = v37;
                                  *&v345[4] = 1024;
                                  *&v345[6] = v38;
                                  LOWORD(v346) = 1024;
                                  *(&v346 + 2) = v73;
                                  HIWORD(v346) = 1024;
                                  *v347 = v39;
                                  _os_log_impl(&dword_181A37000, v72, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:c%u:s%u> failed to use %u frames, marking as failed", buf, 0x38u);
                                }
                              }

                              _Block_object_dispose(type, 8);
                            }

                            if (!v36)
                            {
                              v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                              v11 = v320;
                              goto LABEL_212;
                            }

                            goto LABEL_66;
                          }

                          nw_frame_collapse(v41);
                          nw_frame_unclaim(v41, v49, v47, 0);
                          v50 = *(v41 + 32);
                          v51 = *(v41 + 40);
                          v52 = (v50 + 40);
                          if (!v50)
                          {
                            v52 = &v339;
                          }

                          *v52 = v51;
                          *v51 = v50;
                          v53 = v337;
                          *(v41 + 32) = 0;
                          *(v41 + 40) = v53;
                          *v53 = v41;
                          v337 = (v41 + 32);
                          if (v43)
                          {
                            v41 = v43;
                            if (v36)
                            {
                              continue;
                            }
                          }

                          goto LABEL_108;
                        }
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v22 = _os_log_send_and_compose_impl();
                      type[0] = OS_LOG_TYPE_ERROR;
                      LOBYTE(v338) = 0;
                      if (__nwlog_fault(v22, type, &v338))
                      {
                        if (type[0] == OS_LOG_TYPE_FAULT)
                        {
                          v158 = __nwlog_obj();
                          v159 = type[0];
                          if (!os_log_type_enabled(v158, type[0]))
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v341 = "nw_http1_connection_send_bytes";
                          v26 = v158;
                          v27 = v159;
                          v28 = "%{public}s called with null output_handler";
                          goto LABEL_310;
                        }

                        if (v338 != 1)
                        {
                          v187 = __nwlog_obj();
                          v188 = type[0];
                          if (!os_log_type_enabled(v187, type[0]))
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v341 = "nw_http1_connection_send_bytes";
                          v26 = v187;
                          v27 = v188;
                          v28 = "%{public}s called with null output_handler, backtrace limit exceeded";
                          goto LABEL_310;
                        }

                        v164 = __nw_create_backtrace_string();
                        v174 = __nwlog_obj();
                        v175 = type[0];
                        v176 = os_log_type_enabled(v174, type[0]);
                        if (!v164)
                        {
                          if (!v176)
                          {
                            goto LABEL_311;
                          }

                          *buf = 136446210;
                          v341 = "nw_http1_connection_send_bytes";
                          v26 = v174;
                          v27 = v175;
                          v28 = "%{public}s called with null output_handler, no backtrace";
                          goto LABEL_310;
                        }

                        if (v176)
                        {
                          *buf = 136446466;
                          v341 = "nw_http1_connection_send_bytes";
                          v342 = 2082;
                          *v343 = v164;
                          v168 = v174;
                          v169 = v175;
                          v170 = "%{public}s called with null output_handler, dumping backtrace:%{public}s";
                          goto LABEL_282;
                        }

LABEL_283:
                        free(v164);
                      }

LABEL_311:
                      if (v22)
                      {
                        free(v22);
                      }

                      v131 = 0;
                      if (!v18)
                      {
                        goto LABEL_212;
                      }

                      goto LABEL_347;
                    }

                    __nwlog_obj();
                    *buf = 136446210;
                    v341 = "nw_http1_connection_send_bytes";
                    v22 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v338) = 0;
                    if (!__nwlog_fault(v22, type, &v338))
                    {
                      goto LABEL_311;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v156 = __nwlog_obj();
                      v157 = type[0];
                      if (!os_log_type_enabled(v156, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v156;
                      v27 = v157;
                      v28 = "%{public}s called with null length";
                      goto LABEL_310;
                    }

                    if (v338 != 1)
                    {
                      v185 = __nwlog_obj();
                      v186 = type[0];
                      if (!os_log_type_enabled(v185, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v185;
                      v27 = v186;
                      v28 = "%{public}s called with null length, backtrace limit exceeded";
                      goto LABEL_310;
                    }

                    v164 = __nw_create_backtrace_string();
                    v171 = __nwlog_obj();
                    v172 = type[0];
                    v173 = os_log_type_enabled(v171, type[0]);
                    if (!v164)
                    {
                      if (!v173)
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v171;
                      v27 = v172;
                      v28 = "%{public}s called with null length, no backtrace";
                      goto LABEL_310;
                    }

                    if (!v173)
                    {
                      goto LABEL_283;
                    }

                    *buf = 136446466;
                    v341 = "nw_http1_connection_send_bytes";
                    v342 = 2082;
                    *v343 = v164;
                    v168 = v171;
                    v169 = v172;
                    v170 = "%{public}s called with null length, dumping backtrace:%{public}s";
                  }

                  else
                  {
LABEL_57:
                    __len = 0;
                    if (v19)
                    {
                      goto LABEL_58;
                    }

LABEL_48:
                    __nwlog_obj();
                    *buf = 136446210;
                    v341 = "nw_http1_connection_send_bytes";
                    v22 = _os_log_send_and_compose_impl();
                    type[0] = OS_LOG_TYPE_ERROR;
                    LOBYTE(v338) = 0;
                    if (!__nwlog_fault(v22, type, &v338))
                    {
                      goto LABEL_311;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v24 = __nwlog_obj();
                      v25 = type[0];
                      if (!os_log_type_enabled(v24, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v24;
                      v27 = v25;
                      v28 = "%{public}s called with null buffer";
LABEL_310:
                      _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
                      goto LABEL_311;
                    }

                    if (v338 != 1)
                    {
                      v183 = __nwlog_obj();
                      v184 = type[0];
                      if (!os_log_type_enabled(v183, type[0]))
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v183;
                      v27 = v184;
                      v28 = "%{public}s called with null buffer, backtrace limit exceeded";
                      goto LABEL_310;
                    }

                    v164 = __nw_create_backtrace_string();
                    v165 = __nwlog_obj();
                    v166 = type[0];
                    v167 = os_log_type_enabled(v165, type[0]);
                    if (!v164)
                    {
                      if (!v167)
                      {
                        goto LABEL_311;
                      }

                      *buf = 136446210;
                      v341 = "nw_http1_connection_send_bytes";
                      v26 = v165;
                      v27 = v166;
                      v28 = "%{public}s called with null buffer, no backtrace";
                      goto LABEL_310;
                    }

                    if (!v167)
                    {
                      goto LABEL_283;
                    }

                    *buf = 136446466;
                    v341 = "nw_http1_connection_send_bytes";
                    v342 = 2082;
                    *v343 = v164;
                    v168 = v165;
                    v169 = v166;
                    v170 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
                  }

LABEL_282:
                  _os_log_impl(&dword_181A37000, v168, v169, v170, buf, 0x16u);
                  goto LABEL_283;
                }

LABEL_230:
                if ((*(v12 + 204) & 0x100) != 0 && g_channel_check_validity && !g_channel_check_validity(v12, *(v12 + 88)))
                {
                  v18 = 0;
                  goto LABEL_326;
                }

                v139 = *(v12 + 52);
                v138 = *(v12 + 56);
                if (v139)
                {
                  v18 = (v139 - (v138 + *(v12 + 60)));
                }

                else
                {
                  v18 = 0;
                }

                v19 = (*(v12 + 112) + v138);
                if ((*(v12 + 204) & 4) == 0)
                {
                  goto LABEL_237;
                }

LABEL_327:
                v209 = *(v12 + 216);
                *(v12 + 208) = v9;
                *(v12 + 216) = v209 & 0xFC | 1;
                goto LABEL_42;
              }

LABEL_229:
              nw_frame_claim(v12, v86, 0, v116);
              if (!*(v12 + 112))
              {
                goto LABEL_326;
              }

              goto LABEL_230;
            }

            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            *buf = 136446978;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v342 = 2082;
            *v343 = "unused_bytes";
            *&v343[8] = 2048;
            *&v343[10] = v115;
            v344 = 2048;
            *v345 = v111 + v115;
            v117 = _os_log_send_and_compose_impl();
            v326[0] = OS_LOG_TYPE_ERROR;
            type[0] = OS_LOG_TYPE_DEFAULT;
            if (__nwlog_fault(v117, v326, type))
            {
              if (v326[0] == OS_LOG_TYPE_FAULT)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v118 = gLogObj;
                v119 = v326[0];
                if (os_log_type_enabled(gLogObj, v326[0]))
                {
                  *buf = 136446978;
                  v341 = "nw_http1_connection_drain_outbound_frames";
                  v342 = 2082;
                  *v343 = "unused_bytes";
                  *&v343[8] = 2048;
                  *&v343[10] = v115;
                  v344 = 2048;
                  *v345 = v111 + v115;
                  v120 = v118;
                  v121 = v119;
                  v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
LABEL_225:
                  _os_log_impl(&dword_181A37000, v120, v121, v122, buf, 0x2Au);
                }
              }

              else if (type[0] == OS_LOG_TYPE_INFO)
              {
                v123 = __nw_create_backtrace_string();
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v124 = gLogObj;
                v125 = v326[0];
                v126 = os_log_type_enabled(gLogObj, v326[0]);
                if (v123)
                {
                  if (v126)
                  {
                    *buf = 136447234;
                    v341 = "nw_http1_connection_drain_outbound_frames";
                    v342 = 2082;
                    *v343 = "unused_bytes";
                    *&v343[8] = 2048;
                    *&v343[10] = v115;
                    v344 = 2048;
                    *v345 = v116;
                    *&v345[8] = 2082;
                    v346 = v123;
                    _os_log_impl(&dword_181A37000, v124, v125, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", buf, 0x34u);
                  }

                  free(v123);
                  v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                  goto LABEL_226;
                }

                v10 = &OBJC_METACLASS____TtCV7Network18QUICStreamProtocol17QUICStreamOptions;
                if (v126)
                {
                  *buf = 136446978;
                  v341 = "nw_http1_connection_drain_outbound_frames";
                  v342 = 2082;
                  *v343 = "unused_bytes";
                  *&v343[8] = 2048;
                  *&v343[10] = v115;
                  v344 = 2048;
                  *v345 = v116;
                  v120 = v124;
                  v121 = v125;
                  v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace";
                  goto LABEL_225;
                }
              }

              else
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v136 = gLogObj;
                v137 = v326[0];
                if (os_log_type_enabled(gLogObj, v326[0]))
                {
                  *buf = 136446978;
                  v341 = "nw_http1_connection_drain_outbound_frames";
                  v342 = 2082;
                  *v343 = "unused_bytes";
                  *&v343[8] = 2048;
                  *&v343[10] = v115;
                  v344 = 2048;
                  *v345 = v111 + v115;
                  v120 = v136;
                  v121 = v137;
                  v122 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
                  goto LABEL_225;
                }
              }
            }

LABEL_226:
            v18 = v18;
            if (v117)
            {
              free(v117);
            }

            LODWORD(v116) = -1;
            v11 = v320;
            v12 = v322;
            goto LABEL_229;
          }

          __nwlog_obj();
          *buf = 136446210;
          v341 = "nw_http1_connection_drain_outbound_frames";
          v253 = _os_log_send_and_compose_impl();
          v326[0] = OS_LOG_TYPE_ERROR;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v253, v326, type))
          {
            goto LABEL_425;
          }

          if (v326[0] == OS_LOG_TYPE_FAULT)
          {
            v284 = __nwlog_obj();
            v285 = v326[0];
            if (!os_log_type_enabled(v284, v326[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->current_stream";
          }

          else if (type[0] == OS_LOG_TYPE_INFO)
          {
            v296 = __nw_create_backtrace_string();
            v284 = __nwlog_obj();
            v285 = v326[0];
            v297 = os_log_type_enabled(v284, v326[0]);
            if (v296)
            {
              if (v297)
              {
                *buf = 136446466;
                v341 = "nw_http1_connection_drain_outbound_frames";
                v342 = 2082;
                *v343 = v296;
                _os_log_impl(&dword_181A37000, v284, v285, "%{public}s called with null http1_connection->current_stream, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v296);
              if (!v253)
              {
                goto LABEL_365;
              }

LABEL_426:
              free(v253);
              goto LABEL_365;
            }

            if (!v297)
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->current_stream, no backtrace";
          }

          else
          {
            v284 = __nwlog_obj();
            v285 = v326[0];
            if (!os_log_type_enabled(v284, v326[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->current_stream, backtrace limit exceeded";
          }
        }

        else
        {
          __nwlog_obj();
          *buf = 136446210;
          v341 = "nw_http1_connection_drain_outbound_frames";
          v253 = _os_log_send_and_compose_impl();
          v326[0] = OS_LOG_TYPE_ERROR;
          type[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v253, v326, type))
          {
            goto LABEL_425;
          }

          if (v326[0] == OS_LOG_TYPE_FAULT)
          {
            v284 = __nwlog_obj();
            v285 = v326[0];
            if (!os_log_type_enabled(v284, v326[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->protocol_http1";
          }

          else if (type[0] == OS_LOG_TYPE_INFO)
          {
            v294 = __nw_create_backtrace_string();
            v284 = __nwlog_obj();
            v285 = v326[0];
            v295 = os_log_type_enabled(v284, v326[0]);
            if (v294)
            {
              if (v295)
              {
                *buf = 136446466;
                v341 = "nw_http1_connection_drain_outbound_frames";
                v342 = 2082;
                *v343 = v294;
                _os_log_impl(&dword_181A37000, v284, v285, "%{public}s called with null http1_connection->protocol_http1, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v294);
              goto LABEL_425;
            }

            if (!v295)
            {
LABEL_425:
              if (!v253)
              {
                goto LABEL_365;
              }

              goto LABEL_426;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->protocol_http1, no backtrace";
          }

          else
          {
            v284 = __nwlog_obj();
            v285 = v326[0];
            if (!os_log_type_enabled(v284, v326[0]))
            {
              goto LABEL_425;
            }

            *buf = 136446210;
            v341 = "nw_http1_connection_drain_outbound_frames";
            v256 = "%{public}s called with null http1_connection->protocol_http1, backtrace limit exceeded";
          }
        }

        v265 = v284;
        v266 = v285;
        v267 = 12;
        goto LABEL_424;
      }

LABEL_568:
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446210;
      v341 = "nw_protocol_http1_output_available";
      v272 = _os_log_send_and_compose_impl();
      v326[0] = OS_LOG_TYPE_ERROR;
      type[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v272, v326, type))
      {
        goto LABEL_582;
      }

      if (v326[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v273 = gLogObj;
        v274 = v326[0];
        if (!os_log_type_enabled(gLogObj, v326[0]))
        {
          goto LABEL_582;
        }

        *buf = 136446210;
        v341 = "nw_protocol_http1_output_available";
        v275 = "%{public}s called with null http1_connection";
        goto LABEL_580;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v273 = gLogObj;
        v274 = v326[0];
        if (!os_log_type_enabled(gLogObj, v326[0]))
        {
          goto LABEL_582;
        }

        *buf = 136446210;
        v341 = "nw_protocol_http1_output_available";
        v275 = "%{public}s called with null http1_connection, backtrace limit exceeded";
        goto LABEL_580;
      }

      v314 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v311 = gLogObj;
      v312 = v326[0];
      v315 = os_log_type_enabled(gLogObj, v326[0]);
      if (v314)
      {
        if (v315)
        {
          *buf = 136446466;
          v341 = "nw_protocol_http1_output_available";
          v342 = 2082;
          *v343 = v314;
          _os_log_impl(&dword_181A37000, v311, v312, "%{public}s called with null http1_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v314);
        if (!v272)
        {
          return;
        }

LABEL_583:
        free(v272);
        return;
      }

      if (v315)
      {
        *buf = 136446210;
        v341 = "nw_protocol_http1_output_available";
        v275 = "%{public}s called with null http1_connection, no backtrace";
LABEL_587:
        v316 = v311;
        v317 = v312;
        goto LABEL_581;
      }

      goto LABEL_582;
    }

    __nwlog_obj();
    *buf = 136446210;
    v341 = "nw_http1_get_connection_for_protocol";
    v290 = _os_log_send_and_compose_impl();
    v326[0] = OS_LOG_TYPE_ERROR;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (__nwlog_fault(v290, v326, type))
    {
      if (v326[0] == OS_LOG_TYPE_FAULT)
      {
        v291 = __nwlog_obj();
        v292 = v326[0];
        if (!os_log_type_enabled(v291, v326[0]))
        {
          goto LABEL_566;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_connection_for_protocol";
        v293 = "%{public}s called with null handle->http1_stream";
        goto LABEL_565;
      }

      if (type[0] != OS_LOG_TYPE_INFO)
      {
        v291 = __nwlog_obj();
        v292 = v326[0];
        if (!os_log_type_enabled(v291, v326[0]))
        {
          goto LABEL_566;
        }

        *buf = 136446210;
        v341 = "nw_http1_get_connection_for_protocol";
        v293 = "%{public}s called with null handle->http1_stream, backtrace limit exceeded";
        goto LABEL_565;
      }

      v300 = __nw_create_backtrace_string();
      v291 = __nwlog_obj();
      v292 = v326[0];
      v301 = os_log_type_enabled(v291, v326[0]);
      if (v300)
      {
        if (v301)
        {
          *buf = 136446466;
          v341 = "nw_http1_get_connection_for_protocol";
          v342 = 2082;
          *v343 = v300;
          _os_log_impl(&dword_181A37000, v291, v292, "%{public}s called with null handle->http1_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v300);
        goto LABEL_566;
      }

      if (v301)
      {
        *buf = 136446210;
        v341 = "nw_http1_get_connection_for_protocol";
        v293 = "%{public}s called with null handle->http1_stream, no backtrace";
LABEL_565:
        _os_log_impl(&dword_181A37000, v291, v292, v293, buf, 0xCu);
      }
    }

LABEL_566:
    if (v290)
    {
      free(v290);
    }

    goto LABEL_568;
  }

  __nwlog_obj();
  *buf = 136446210;
  v341 = "nw_protocol_http1_output_available";
  v272 = _os_log_send_and_compose_impl();
  v326[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (!__nwlog_fault(v272, v326, type))
  {
    goto LABEL_582;
  }

  if (v326[0] == OS_LOG_TYPE_FAULT)
  {
    v273 = __nwlog_obj();
    v274 = v326[0];
    if (!os_log_type_enabled(v273, v326[0]))
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v341 = "nw_protocol_http1_output_available";
    v275 = "%{public}s called with null other_protocol";
    goto LABEL_580;
  }

  if (type[0] != OS_LOG_TYPE_INFO)
  {
    v273 = __nwlog_obj();
    v274 = v326[0];
    if (!os_log_type_enabled(v273, v326[0]))
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v341 = "nw_protocol_http1_output_available";
    v275 = "%{public}s called with null other_protocol, backtrace limit exceeded";
    goto LABEL_580;
  }

  v282 = __nw_create_backtrace_string();
  v273 = __nwlog_obj();
  v274 = v326[0];
  v283 = os_log_type_enabled(v273, v326[0]);
  if (!v282)
  {
    if (!v283)
    {
      goto LABEL_582;
    }

    *buf = 136446210;
    v341 = "nw_protocol_http1_output_available";
    v275 = "%{public}s called with null other_protocol, no backtrace";
    goto LABEL_580;
  }

  if (v283)
  {
    *buf = 136446466;
    v341 = "nw_protocol_http1_output_available";
    v342 = 2082;
    *v343 = v282;
    _os_log_impl(&dword_181A37000, v273, v274, "%{public}s called with null other_protocol, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v282);
  if (v272)
  {
    goto LABEL_583;
  }
}
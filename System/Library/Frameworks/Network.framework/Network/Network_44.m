uint64_t copyconninfo(int a1, int a2, void *a3)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *v81 = 136446210;
    *&v81[4] = "copyconninfo";
    v7 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v7, buf, &type))
    {
      goto LABEL_54;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_54;
      }

      *v81 = 136446210;
      *&v81[4] = "copyconninfo";
      v10 = "%{public}s called with null cfop";
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        v17 = buf[0];
        v18 = os_log_type_enabled(gLogObj, buf[0]);
        if (backtrace_string)
        {
          if (v18)
          {
            *v81 = 136446466;
            *&v81[4] = "copyconninfo";
            *&v81[12] = 2082;
            *&v81[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null cfop, dumping backtrace:%{public}s", v81, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_54;
        }

        if (!v18)
        {
LABEL_54:
          if (v7)
          {
            free(v7);
          }

          goto LABEL_91;
        }

        *v81 = 136446210;
        *&v81[4] = "copyconninfo";
        v10 = "%{public}s called with null cfop, no backtrace";
        v33 = v16;
        v34 = v17;
LABEL_53:
        _os_log_impl(&dword_181A37000, v33, v34, v10, v81, 0xCu);
        goto LABEL_54;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_54;
      }

      *v81 = 136446210;
      *&v81[4] = "copyconninfo";
      v10 = "%{public}s called with null cfop, backtrace limit exceeded";
    }

    v33 = v8;
    v34 = v9;
    goto LABEL_53;
  }

  if (a1 < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *v81 = 136446466;
    *&v81[4] = "copyconninfo";
    *&v81[12] = 1024;
    *&v81[14] = a1;
    v11 = _os_log_send_and_compose_impl();
    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v11, buf, &type))
    {
      goto LABEL_89;
    }

    if (buf[0] == 17)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_89;
      }

      *v81 = 136446466;
      *&v81[4] = "copyconninfo";
      *&v81[12] = 1024;
      *&v81[14] = a1;
      v14 = "%{public}s called with null s (%d)";
    }

    else if (type == OS_LOG_TYPE_INFO)
    {
      v31 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      v32 = os_log_type_enabled(gLogObj, buf[0]);
      if (v31)
      {
        if (v32)
        {
          *v81 = 136446722;
          *&v81[4] = "copyconninfo";
          *&v81[12] = 1024;
          *&v81[14] = a1;
          *&v81[18] = 2082;
          *&v81[20] = v31;
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null s (%d), dumping backtrace:%{public}s", v81, 0x1Cu);
        }

        free(v31);
        goto LABEL_89;
      }

      if (!v32)
      {
LABEL_89:
        if (v11)
        {
          free(v11);
        }

LABEL_91:
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 22;
        return 0xFFFFFFFFLL;
      }

      *v81 = 136446466;
      *&v81[4] = "copyconninfo";
      *&v81[12] = 1024;
      *&v81[14] = a1;
      v14 = "%{public}s called with null s (%d), no backtrace";
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v12 = gLogObj;
      v13 = buf[0];
      if (!os_log_type_enabled(gLogObj, buf[0]))
      {
        goto LABEL_89;
      }

      *v81 = 136446466;
      *&v81[4] = "copyconninfo";
      *&v81[12] = 1024;
      *&v81[14] = a1;
      v14 = "%{public}s called with null s (%d), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v12, v13, v14, v81, 0x12u);
    goto LABEL_89;
  }

  *v82 = 0u;
  *size = 0u;
  memset(v81, 0, sizeof(v81));
  *v81 = a2;
  if (ioctl(a1, 0xC0407398uLL, v81))
  {
    v5 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v5 | 0x10) == 0x16)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v5;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d", buf, 0x18u);
      }

      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v77 = "copyconninfo";
    v78 = 1024;
    *v79 = a1;
    *&v79[4] = 1024;
    *&v79[6] = v5;
    v35 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (__nwlog_fault(v35, &type, &v74))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_124;
        }

        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v5;
        v38 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d";
        goto LABEL_123;
      }

      if (v74 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v36 = gLogObj;
        v37 = type;
        if (!os_log_type_enabled(gLogObj, type))
        {
          goto LABEL_124;
        }

        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v5;
        v38 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_123;
      }

      v48 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v36 = gLogObj;
      v37 = type;
      v49 = os_log_type_enabled(gLogObj, type);
      if (v48)
      {
        if (v49)
        {
          *buf = 136446978;
          v77 = "copyconninfo";
          v78 = 1024;
          *v79 = a1;
          *&v79[4] = 1024;
          *&v79[6] = v5;
          LOWORD(v80[0]) = 2082;
          *(v80 + 2) = v48;
          _os_log_impl(&dword_181A37000, v36, v37, "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v48);
        goto LABEL_124;
      }

      if (v49)
      {
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v5;
        v38 = "%{public}s ioctl(%d,SIOCGCONNINFO_1) %{darwin.errno}d, no backtrace";
LABEL_123:
        _os_log_impl(&dword_181A37000, v36, v37, v38, buf, 0x18u);
      }
    }

LABEL_124:
    if (v35)
    {
      free(v35);
    }

    return 0xFFFFFFFFLL;
  }

  if (*&v81[24])
  {
    if (*&v81[24] <= 0x1Cu)
    {
      v19 = 28;
    }

    else
    {
      v19 = *&v81[24];
    }

    *&v81[24] = v19;
    v20 = malloc_type_calloc(1uLL, v19, 0xAA8F0193uLL);
    if (!v20)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v77 = "copyconninfo";
      v78 = 2048;
      *v79 = 1;
      *&v79[8] = 2048;
      v80[0] = v19;
      v73 = 32;
      v21 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v21);
      if (result)
      {
        goto LABEL_158;
      }

      free(v21);
      v20 = 0;
    }

    *&v81[16] = v20;
  }

  if (LODWORD(v82[1]))
  {
    if (LODWORD(v82[1]) <= 0x1C)
    {
      v23 = 28;
    }

    else
    {
      v23 = LODWORD(v82[1]);
    }

    LODWORD(v82[1]) = v23;
    v24 = malloc_type_calloc(1uLL, v23, 0x22DDA856uLL);
    if (!v24)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v77 = "copyconninfo";
      v78 = 2048;
      *v79 = 1;
      *&v79[8] = 2048;
      v80[0] = v23;
      v73 = 32;
      v25 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v25);
      if (result)
      {
        goto LABEL_158;
      }

      free(v25);
      v24 = 0;
    }

    v82[0] = v24;
  }

  v26 = LODWORD(size[1]);
  if (LODWORD(size[1]))
  {
    v27 = malloc_type_calloc(1uLL, LODWORD(size[1]), 0xB6B9B674uLL);
    if (!v27)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
      *buf = 136446722;
      v77 = "copyconninfo";
      v78 = 2048;
      *v79 = 1;
      *&v79[8] = 2048;
      v80[0] = v26;
      v73 = 32;
      v28 = _os_log_send_and_compose_impl();
      result = __nwlog_should_abort(v28);
      if (result)
      {
        goto LABEL_158;
      }

      free(v28);
      v27 = 0;
    }

    size[0] = v27;
  }

  if (ioctl(a1, 0xC0407398uLL, v81, v73))
  {
    v29 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if ((v29 | 0x10) == 0x16)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v29;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d", buf, 0x18u);
      }

LABEL_137:
      if (*&v81[16])
      {
        free(*&v81[16]);
        *&v81[16] = 0;
      }

      if (v82[0])
      {
        free(v82[0]);
        v82[0] = 0;
      }

      if (size[0])
      {
        free(size[0]);
      }

      *a3 = 0;
      return 0xFFFFFFFFLL;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446722;
    v77 = "copyconninfo";
    v78 = 1024;
    *v79 = a1;
    *&v79[4] = 1024;
    *&v79[6] = v29;
    v50 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (__nwlog_fault(v50, &type, &v74))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v51 = __nwlog_obj();
        v52 = type;
        if (!os_log_type_enabled(v51, type))
        {
          goto LABEL_135;
        }

        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v29;
        v53 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d";
        goto LABEL_134;
      }

      if (v74 != 1)
      {
        v51 = __nwlog_obj();
        v52 = type;
        if (!os_log_type_enabled(v51, type))
        {
          goto LABEL_135;
        }

        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v29;
        v53 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_134;
      }

      v61 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v62 = os_log_type_enabled(v51, type);
      if (v61)
      {
        if (v62)
        {
          *buf = 136446978;
          v77 = "copyconninfo";
          v78 = 1024;
          *v79 = a1;
          *&v79[4] = 1024;
          *&v79[6] = v29;
          LOWORD(v80[0]) = 2082;
          *(v80 + 2) = v61;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x22u);
        }

        free(v61);
        goto LABEL_135;
      }

      if (v62)
      {
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = a1;
        *&v79[4] = 1024;
        *&v79[6] = v29;
        v53 = "%{public}s ioctl(%d,SIOCGCONNINFO) %{darwin.errno}d, no backtrace";
LABEL_134:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0x18u);
      }
    }

LABEL_135:
    if (v50)
    {
      free(v50);
    }

    goto LABEL_137;
  }

  v39 = malloc_type_calloc(1uLL, 0x28uLL, 0x1306AC71uLL);
  if (v39)
  {
LABEL_66:
    if (!LODWORD(size[1]) && size[0])
    {
      free(size[0]);
      size[0] = 0;
    }

    v41 = *&v81[16];
    if (!*&v81[24])
    {
      if (!*&v81[16])
      {
        goto LABEL_95;
      }

      goto LABEL_94;
    }

    if (*&v81[24] >= **&v81[16])
    {
      goto LABEL_95;
    }

    __nwlog_obj();
    v42 = **&v81[16];
    *buf = 136446722;
    v77 = "copyconninfo";
    v78 = 1024;
    *v79 = v42;
    *&v79[4] = 1024;
    *&v79[6] = *&v81[24];
    v43 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v74 = 0;
    if (__nwlog_fault(v43, &type, &v74))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_147;
        }

        v46 = **&v81[16];
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = v46;
        *&v79[4] = 1024;
        *&v79[6] = *&v81[24];
        v47 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed";
LABEL_146:
        _os_log_impl(&dword_181A37000, v44, v45, v47, buf, 0x18u);
        goto LABEL_147;
      }

      if (v74 != 1)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (!os_log_type_enabled(v44, type))
        {
          goto LABEL_147;
        }

        v69 = **&v81[16];
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = v69;
        *&v79[4] = 1024;
        *&v79[6] = *&v81[24];
        v47 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, backtrace limit exceeded";
        goto LABEL_146;
      }

      v63 = __nw_create_backtrace_string();
      v44 = __nwlog_obj();
      v45 = type;
      v64 = os_log_type_enabled(v44, type);
      if (!v63)
      {
        if (!v64)
        {
          goto LABEL_147;
        }

        v71 = **&v81[16];
        *buf = 136446722;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = v71;
        *&v79[4] = 1024;
        *&v79[6] = *&v81[24];
        v47 = "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, no backtrace";
        goto LABEL_146;
      }

      if (v64)
      {
        v65 = **&v81[16];
        *buf = 136446978;
        v77 = "copyconninfo";
        v78 = 1024;
        *v79 = v65;
        *&v79[4] = 1024;
        *&v79[6] = *&v81[24];
        LOWORD(v80[0]) = 2082;
        *(v80 + 2) = v63;
        _os_log_impl(&dword_181A37000, v44, v45, "%{public}s ioctl SIOCGCONNINFO return invalid source (sa_len=%u > scir_src_len=%u) failed, dumping backtrace:%{public}s", buf, 0x22u);
      }

      free(v63);
    }

LABEL_147:
    if (v43)
    {
      free(v43);
    }

    v41 = *&v81[16];
    if (!*&v81[16])
    {
LABEL_95:
      v54 = v82[0];
      if (LODWORD(v82[1]))
      {
        if (LODWORD(v82[1]) < *v82[0])
        {
          __nwlog_obj();
          v55 = *v82[0];
          *buf = 136446722;
          v77 = "copyconninfo";
          v78 = 1024;
          *v79 = v55;
          *&v79[4] = 1024;
          *&v79[6] = v82[1];
          v56 = _os_log_send_and_compose_impl();
          type = OS_LOG_TYPE_ERROR;
          v74 = 0;
          if (!__nwlog_fault(v56, &type, &v74))
          {
            goto LABEL_154;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            v57 = __nwlog_obj();
            v58 = type;
            if (!os_log_type_enabled(v57, type))
            {
              goto LABEL_154;
            }

            v59 = *v82[0];
            *buf = 136446722;
            v77 = "copyconninfo";
            v78 = 1024;
            *v79 = v59;
            *&v79[4] = 1024;
            *&v79[6] = v82[1];
            v60 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed";
          }

          else if (v74 == 1)
          {
            v66 = __nw_create_backtrace_string();
            v57 = __nwlog_obj();
            v58 = type;
            v67 = os_log_type_enabled(v57, type);
            if (v66)
            {
              if (v67)
              {
                v68 = *v82[0];
                *buf = 136446978;
                v77 = "copyconninfo";
                v78 = 1024;
                *v79 = v68;
                *&v79[4] = 1024;
                *&v79[6] = v82[1];
                LOWORD(v80[0]) = 2082;
                *(v80 + 2) = v66;
                _os_log_impl(&dword_181A37000, v57, v58, "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, dumping backtrace:%{public}s", buf, 0x22u);
              }

              free(v66);
LABEL_154:
              if (v56)
              {
                free(v56);
              }

              v54 = v82[0];
              if (!v82[0])
              {
                goto LABEL_103;
              }

              goto LABEL_102;
            }

            if (!v67)
            {
              goto LABEL_154;
            }

            v72 = *v82[0];
            *buf = 136446722;
            v77 = "copyconninfo";
            v78 = 1024;
            *v79 = v72;
            *&v79[4] = 1024;
            *&v79[6] = v82[1];
            v60 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, no backtrace";
          }

          else
          {
            v57 = __nwlog_obj();
            v58 = type;
            if (!os_log_type_enabled(v57, type))
            {
              goto LABEL_154;
            }

            v70 = *v82[0];
            *buf = 136446722;
            v77 = "copyconninfo";
            v78 = 1024;
            *v79 = v70;
            *&v79[4] = 1024;
            *&v79[6] = v82[1];
            v60 = "%{public}s ioctl SIOCGCONNINFO return invalid destination (sa_len=%u > scir_dst_len=%u) failed, backtrace limit exceeded";
          }

          _os_log_impl(&dword_181A37000, v57, v58, v60, buf, 0x18u);
          goto LABEL_154;
        }
      }

      else if (v82[0])
      {
LABEL_102:
        free(v54);
        v54 = 0;
      }

LABEL_103:
      result = 0;
      *v39 = *&v81[4];
      v39[1] = *&v81[16];
      v39[2] = v54;
      *(v39 + 6) = *&v81[12];
      *(v39 + 7) = HIDWORD(v82[1]);
      v39[4] = size[0];
      *a3 = v39;
      return result;
    }

LABEL_94:
    free(v41);
    *&v81[16] = 0;
    goto LABEL_95;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v77 = "copyconninfo";
  v78 = 2048;
  *v79 = 1;
  *&v79[8] = 2048;
  v80[0] = 40;
  v40 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v40);
  if (!result)
  {
    free(v40);
    goto LABEL_66;
  }

LABEL_158:
  __break(1u);
  return result;
}

void nw_socket_internal_connect(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = mach_continuous_time();
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = nw_delta_nanos(v2, v4);
  v6 = (v5 / 0xF4240);
  if (v5 > 0xF423FFFFFFFFFLL)
  {
    v6 = 0xFFFFFFFFLL;
  }

  a1[5] = v6;
  v7 = a1[7];
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = *(v8 + 40);
      if (v9)
      {

        v9();
        return;
      }
    }

    v10 = a1[7];
    __nwlog_obj();
    v11 = v10;
    v12 = *(v10 + 16);
    if (!v12)
    {
      v12 = "invalid";
    }
  }

  else
  {
    v11 = 0;
    __nwlog_obj();
    v12 = "invalid";
  }

  *buf = 136446466;
  v26 = "nw_socket_internal_connect";
  v27 = 2082;
  v28 = v12;
  v13 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (__nwlog_fault(v13, &type, &v23))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_42;
      }

      v16 = "invalid";
      if (v11 && *(v11 + 16))
      {
        v16 = *(v11 + 16);
      }

      *buf = 136446466;
      v26 = "nw_socket_internal_connect";
      v27 = 2082;
      v28 = v16;
      v17 = "%{public}s protocol %{public}s has invalid connected callback";
      goto LABEL_41;
    }

    if (v23 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_42;
      }

      v21 = "invalid";
      if (v11 && *(v11 + 16))
      {
        v21 = *(v11 + 16);
      }

      *buf = 136446466;
      v26 = "nw_socket_internal_connect";
      v27 = 2082;
      v28 = v21;
      v17 = "%{public}s protocol %{public}s has invalid connected callback, backtrace limit exceeded";
      goto LABEL_41;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v19 = os_log_type_enabled(v14, type);
    if (backtrace_string)
    {
      if (v19)
      {
        v20 = "invalid";
        if (v11 && *(v11 + 16))
        {
          v20 = *(v11 + 16);
        }

        *buf = 136446722;
        v26 = "nw_socket_internal_connect";
        v27 = 2082;
        v28 = v20;
        v29 = 2082;
        v30 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s protocol %{public}s has invalid connected callback, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(backtrace_string);
      goto LABEL_42;
    }

    if (v19)
    {
      v22 = "invalid";
      if (v11 && *(v11 + 16))
      {
        v22 = *(v11 + 16);
      }

      *buf = 136446466;
      v26 = "nw_socket_internal_connect";
      v27 = 2082;
      v28 = v22;
      v17 = "%{public}s protocol %{public}s has invalid connected callback, no backtrace";
LABEL_41:
      _os_log_impl(&dword_181A37000, v14, v15, v17, buf, 0x16u);
    }
  }

LABEL_42:
  if (v13)
  {
    free(v13);
  }
}

BOOL nw_socket_waiting_for_output(nw_protocol *a1, nw_protocol *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v34 = "nw_socket_waiting_for_output";
    v25 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (__nwlog_fault(v25, &type, &v31))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_socket_waiting_for_output";
          v28 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0xCu);
        }
      }

      else if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = type;
        v30 = os_log_type_enabled(v26, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v34 = "nw_socket_waiting_for_output";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v26, v27, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v30)
        {
          *buf = 136446210;
          v34 = "nw_socket_waiting_for_output";
          v28 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v34 = "nw_socket_waiting_for_output";
          v28 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v25)
    {
      free(v25);
    }

    return 0;
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
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v7 = *a1[1].flow_id;
LABEL_18:
    result = *(&v7[6].callbacks + 5) < 0;
    if (v5)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v34 = "nw_socket_waiting_for_output";
  v8 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v8, &type, &v31))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler";
LABEL_27:
    v17 = v9;
    v18 = v10;
LABEL_28:
    _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
    goto LABEL_29;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v34 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_27;
  }

  v13 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  v15 = type;
  v16 = os_log_type_enabled(gLogObj, type);
  if (v13)
  {
    if (v16)
    {
      *buf = 136446466;
      v34 = "nw_socket_waiting_for_output";
      v35 = 2082;
      v36 = v13;
      _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v13);
  }

  else if (v16)
  {
    *buf = 136446210;
    v34 = "nw_socket_waiting_for_output";
    v11 = "%{public}s called with null socket_handler, no backtrace";
    v17 = v14;
    v18 = v15;
    goto LABEL_28;
  }

LABEL_29:
  if (v8)
  {
    free(v8);
  }

  result = 0;
  if ((v5 & 1) == 0)
  {
LABEL_32:
    v19 = v2->handle;
    if (v19 == &nw_protocol_ref_counted_handle || v19 == &nw_protocol_ref_counted_additional_handle && (v2 = *v2[1].flow_id) != 0)
    {
      v20 = v2[1].callbacks;
      if (v20)
      {
        v21 = (v20 - 1);
        v2[1].callbacks = v21;
        if (!v21)
        {
          v22 = result;
          v23 = *v2[1].flow_id;
          if (v23)
          {
            *v2[1].flow_id = 0;
            (v23)[2](v23, a2);
            _Block_release(v23);
          }

          if (v2[1].flow_id[8])
          {
            v24 = *v2[1].flow_id;
            if (v24)
            {
              _Block_release(v24);
            }
          }

          free(v2);
          return v22;
        }
      }
    }
  }

  return result;
}

uint64_t nw_socket_get_output_local(nw_protocol *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v33 = "nw_socket_get_output_local";
    v24 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v30 = 0;
    if (__nwlog_fault(v24, &type, &v30))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v33 = "nw_socket_get_output_local";
          v27 = "%{public}s called with null protocol";
LABEL_59:
          _os_log_impl(&dword_181A37000, v25, v26, v27, buf, 0xCu);
        }
      }

      else if (v30 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v25 = __nwlog_obj();
        v26 = type;
        v29 = os_log_type_enabled(v25, type);
        if (backtrace_string)
        {
          if (v29)
          {
            *buf = 136446466;
            v33 = "nw_socket_get_output_local";
            v34 = 2082;
            v35 = backtrace_string;
            _os_log_impl(&dword_181A37000, v25, v26, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_60;
        }

        if (v29)
        {
          *buf = 136446210;
          v33 = "nw_socket_get_output_local";
          v27 = "%{public}s called with null protocol, no backtrace";
          goto LABEL_59;
        }
      }

      else
      {
        v25 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v25, type))
        {
          *buf = 136446210;
          v33 = "nw_socket_get_output_local";
          v27 = "%{public}s called with null protocol, backtrace limit exceeded";
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    if (v24)
    {
      free(v24);
    }

    return 0;
  }

  v1 = a1;
  handle = a1->handle;
  v3 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_6;
  }

  if (handle != &nw_protocol_ref_counted_additional_handle)
  {
    v4 = 1;
    goto LABEL_11;
  }

  v3 = *a1[1].flow_id;
  if (v3)
  {
LABEL_6:
    callbacks = v3[1].callbacks;
    v4 = 0;
    if (callbacks)
    {
      v3[1].callbacks = (&callbacks->add_input_handler + 1);
    }
  }

  else
  {
    v4 = 1;
  }

  handle = a1->handle;
LABEL_11:
  v6 = a1;
  if (handle == &nw_protocol_ref_counted_handle)
  {
    goto LABEL_18;
  }

  if (handle == &nw_protocol_ref_counted_additional_handle)
  {
    v6 = *a1[1].flow_id;
LABEL_18:
    result = *v6[3].flow_id;
    if (v4)
    {
      return result;
    }

    goto LABEL_32;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *buf = 136446210;
  v33 = "nw_socket_get_output_local";
  v7 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v30 = 0;
  if (!__nwlog_fault(v7, &type, &v30))
  {
    goto LABEL_29;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v33 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler";
LABEL_27:
    v16 = v8;
    v17 = v9;
LABEL_28:
    _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
    goto LABEL_29;
  }

  if (v30 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v9 = type;
    if (!os_log_type_enabled(gLogObj, type))
    {
      goto LABEL_29;
    }

    *buf = 136446210;
    v33 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler, backtrace limit exceeded";
    goto LABEL_27;
  }

  v12 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v14 = type;
  v15 = os_log_type_enabled(gLogObj, type);
  if (v12)
  {
    if (v15)
    {
      *buf = 136446466;
      v33 = "nw_socket_get_output_local";
      v34 = 2082;
      v35 = v12;
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v12);
  }

  else if (v15)
  {
    *buf = 136446210;
    v33 = "nw_socket_get_output_local";
    v10 = "%{public}s called with null socket_handler, no backtrace";
    v16 = v13;
    v17 = v14;
    goto LABEL_28;
  }

LABEL_29:
  if (v7)
  {
    free(v7);
  }

  result = 0;
  if ((v4 & 1) == 0)
  {
LABEL_32:
    v18 = v1->handle;
    if (v18 == &nw_protocol_ref_counted_handle || v18 == &nw_protocol_ref_counted_additional_handle && (v1 = *v1[1].flow_id) != 0)
    {
      v19 = v1[1].callbacks;
      if (v19)
      {
        v20 = (v19 - 1);
        v1[1].callbacks = v20;
        if (!v20)
        {
          v21 = result;
          v22 = *v1[1].flow_id;
          if (v22)
          {
            *v1[1].flow_id = 0;
            v22[2](v22);
            _Block_release(v22);
          }

          if (v1[1].flow_id[8])
          {
            v23 = *v1[1].flow_id;
            if (v23)
            {
              _Block_release(v23);
            }
          }

          free(v1);
          return v21;
        }
      }
    }
  }

  return result;
}

void *nw_socket_copy_info(void *a1, int a2, void *a3)
{
  v167 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = a1[5];
    v5 = a1;
    if (v4 == &nw_protocol_ref_counted_handle)
    {
      goto LABEL_6;
    }

    if (v4 != &nw_protocol_ref_counted_additional_handle)
    {
      v6 = 1;
      goto LABEL_11;
    }

    v5 = a1[8];
    if (v5)
    {
LABEL_6:
      v7 = v5[11];
      v6 = 0;
      if (v7)
      {
        v5[11] = v7 + 1;
      }
    }

    else
    {
      v6 = 1;
    }

    v4 = a1[5];
LABEL_11:
    v8 = a1;
    if (v4 != &nw_protocol_ref_counted_handle)
    {
      if (v4 != &nw_protocol_ref_counted_additional_handle)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v9 = _os_log_send_and_compose_impl();
        type[0] = 16;
        LOBYTE(v140[0]) = 0;
        if (!__nwlog_fault(v9, type, v140))
        {
          goto LABEL_51;
        }

        if (type[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_51;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler";
          goto LABEL_48;
        }

        if (LOBYTE(v140[0]) != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_51;
          }

          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler, backtrace limit exceeded";
          goto LABEL_48;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type[0];
        v21 = os_log_type_enabled(gLogObj, type[0]);
        if (backtrace_string)
        {
          if (v21)
          {
            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          goto LABEL_39;
        }

        if (v21)
        {
          *buf = 136446210;
          *&buf[4] = "nw_socket_copy_info";
          v12 = "%{public}s called with null socket_handler, no backtrace";
          v24 = v19;
          v25 = v20;
          goto LABEL_49;
        }

        goto LABEL_51;
      }

      v8 = a1[8];
    }

    result = 0;
    if (a2 > 4)
    {
      if (a2 <= 253)
      {
        if (a2 != 5)
        {
          if (a2 != 6)
          {
            goto LABEL_54;
          }

          v14 = v3;
          if (v4 == &nw_protocol_ref_counted_handle)
          {
            goto LABEL_156;
          }

          if (v4 != &nw_protocol_ref_counted_additional_handle)
          {
            v15 = 1;
            goto LABEL_160;
          }

          v14 = v3[8];
          if (v14)
          {
LABEL_156:
            v67 = v14[11];
            if (v67)
            {
              v14[11] = v67 + 1;
            }

            if (v4 == &nw_protocol_ref_counted_handle)
            {
              v68 = 0;
              v77 = v3;
              goto LABEL_222;
            }

            v68 = 0;
            v15 = 0;
            if (v4 != &nw_protocol_ref_counted_additional_handle)
            {
LABEL_160:
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_fd_wrapper";
              v69 = _os_log_send_and_compose_impl();
              type[0] = 16;
              LOBYTE(v140[0]) = 0;
              if (!__nwlog_fault(v69, type, v140))
              {
                goto LABEL_197;
              }

              if (type[0] == 17)
              {
                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v70 = gLogObj;
                v71 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_197;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_copy_fd_wrapper";
                v72 = "%{public}s called with null socket_handler";
              }

              else
              {
                if (LOBYTE(v140[0]) == 1)
                {
                  v73 = __nw_create_backtrace_string();
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v74 = gLogObj;
                  v75 = type[0];
                  v76 = os_log_type_enabled(gLogObj, type[0]);
                  if (v73)
                  {
                    if (v76)
                    {
                      *buf = 136446466;
                      *&buf[4] = "nw_socket_copy_fd_wrapper";
                      *&buf[12] = 2082;
                      *&buf[14] = v73;
                      _os_log_impl(&dword_181A37000, v74, v75, "%{public}s called with null socket_handler, dumping backtrace:%{public}s", buf, 0x16u);
                    }

                    free(v73);
                  }

                  else if (v76)
                  {
                    *buf = 136446210;
                    *&buf[4] = "nw_socket_copy_fd_wrapper";
                    v72 = "%{public}s called with null socket_handler, no backtrace";
                    v84 = v74;
                    v85 = v75;
                    goto LABEL_196;
                  }

LABEL_197:
                  if (v69)
                  {
                    free(v69);
                  }

                  result = 0;
                  if (v15)
                  {
                    goto LABEL_54;
                  }

                  goto LABEL_225;
                }

                pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                networkd_settings_init();
                v70 = gLogObj;
                v71 = type[0];
                if (!os_log_type_enabled(gLogObj, type[0]))
                {
                  goto LABEL_197;
                }

                *buf = 136446210;
                *&buf[4] = "nw_socket_copy_fd_wrapper";
                v72 = "%{public}s called with null socket_handler, backtrace limit exceeded";
              }

              v84 = v70;
              v85 = v71;
LABEL_196:
              _os_log_impl(&dword_181A37000, v84, v85, v72, buf, 0xCu);
              goto LABEL_197;
            }
          }

          else
          {
            v68 = 1;
          }

          v77 = v3[8];
LABEL_222:
          result = v77[22];
          if (result)
          {
            result = os_retain(result);
          }

          if (v68)
          {
            goto LABEL_54;
          }

LABEL_225:
          v101 = v3[5];
          v102 = v3;
          if (v101 == &nw_protocol_ref_counted_handle || v101 == &nw_protocol_ref_counted_additional_handle && (v102 = v3[8]) != 0)
          {
            v103 = v102[11];
            if (v103)
            {
              v104 = v103 - 1;
              v102[11] = v104;
              if (!v104)
              {
                v105 = result;
                v106 = v102[8];
                if (v106)
                {
                  v102[8] = 0;
                  v106[2](v106);
                  _Block_release(v106);
                }

                if (v102[9])
                {
                  v107 = v102[8];
                  if (v107)
                  {
                    _Block_release(v107);
                  }
                }

                free(v102);
                result = v105;
              }
            }
          }

          goto LABEL_54;
        }

        if (*(v8 + 72) == 1)
        {
          result = malloc_type_calloc(1uLL, 0xE0uLL, 0xAAB38528uLL);
          if (result)
          {
LABEL_86:
            result[6] = v8[12];
            result[9] = v8[13];
            result[1] = v8[14];
            result[5] = v8[15];
            goto LABEL_286;
          }

          v42 = __nwlog_obj();
          os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          *buf = 136446722;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2048;
          *&buf[14] = 1;
          *&buf[22] = 2048;
          *&buf[24] = 224;
          v43 = _os_log_send_and_compose_impl();
          if (!__nwlog_should_abort(v43))
          {
            free(v43);
            result = 0;
            goto LABEL_86;
          }

          goto LABEL_331;
        }

        *v140 = 0;
        if ((*(v8 + 415) & 2) != 0 && !copymptcpinfo(*(v8 + 71), v140))
        {
          v90 = nw_calloc_type<nw_data_transfer_snapshot>(*(*v140 + 16));
          v91 = *v140;
          v92 = *(*v140 + 16);
          if (v92)
          {
            v93 = *(*v140 + 8);
            v94 = v90 + 64;
            v95 = *(*v140 + 16);
            do
            {
              if (*v93)
              {
                v96 = *(*v93 + 32);
                *(v94 - 64) = *(v96 + 60);
                *(v94 + 8) = *(v96 + 76);
                *(v94 - 16) = *(v96 + 108);
                *v94 = *(v96 + 124);
                *(v94 + 16) = *(v96 + 84);
                *(v94 - 56) = *(v96 + 100);
                *(v94 - 24) = *(v96 + 68);
                v97 = *(v96 + 20);
                v98.i64[0] = DWORD2(v97);
                v98.i64[1] = HIDWORD(v97);
                v99 = v98;
                v98.i64[0] = v97;
                v98.i64[1] = DWORD1(v97);
                *(v94 + 72) = vzip1q_s64(v98, v99);
                *(v94 + 56) = vzip2q_s64(v98, v99);
              }

              v94 += 224;
              v93 += 8;
              --v95;
            }

            while (v95);
          }

          v100 = v90;
          if (a3)
          {
            *a3 = 224 * v92;
          }

          freemptcpinfo(v91);
          result = v100;
          goto LABEL_54;
        }

        v59 = *(v8 + 416);
        if (v59 != 30 && v59 != 2)
        {
          result = malloc_type_calloc(1uLL, 0xE0uLL, 0x1ED40163uLL);
          if (!result)
          {
            v86 = __nwlog_obj();
            os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
            *buf = 136446722;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            *&buf[24] = 224;
            v87 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v87))
            {
              goto LABEL_331;
            }

            free(v87);
            result = 0;
          }

          result[6] = v8[12];
          result[9] = v8[13];
          goto LABEL_286;
        }

        v136 = malloc_type_calloc(1uLL, 0xE0uLL, 0x2312D0AEuLL);
        if (v136)
        {
          goto LABEL_135;
        }

        v60 = __nwlog_obj();
        os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_socket_copy_info";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *&buf[24] = 224;
        v61 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort(v61))
        {
          free(v61);
LABEL_135:
          v166 = 0;
          v164 = 0u;
          v165 = 0u;
          v162 = 0u;
          v163 = 0u;
          v160 = 0u;
          v161 = 0u;
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          memset(v147, 0, sizeof(v147));
          v145 = 0u;
          v146 = 0u;
          memset(buf, 0, sizeof(buf));
          v139 = 424;
          if (!getsockopt(*(v8 + 71), 6, 512, buf, &v139))
          {
            result = v136;
            v136[9] = *(v147 + 12);
            *(v136 + 3) = *&v148[3];
            v136[8] = *&v148[7];
            v136[10] = *(&v147[1] + 4);
            v136[1] = *&v148[1];
            v136[5] = *(v147 + 4);
            v88.i64[0] = *&buf[28];
            v88.i64[1] = v145;
            v89 = v88;
            v88.i64[0] = *&buf[20];
            v88.i64[1] = *&buf[24];
            *(v136 + 17) = vzip1q_s64(v88, v89);
            *(v136 + 15) = vzip2q_s64(v88, v89);
            v88.i64[0] = DWORD1(v145);
            v88.i64[1] = DWORD2(v145);
            *(v136 + 19) = vextq_s8(v88, v88, 8uLL);
            *(v136 + 11) = v159;
            *(v136 + 13) = v160;
            goto LABEL_286;
          }

          v62 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v63 = gconnectionLogObj;
          if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            *type = 136446722;
            *&type[4] = "nw_socket_copy_info";
            v142 = 2082;
            *v143 = v8 + 420;
            *&v143[8] = 1024;
            *&v143[10] = v62;
            _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x1Cu);
          }

          v64 = __nwlog_obj();
          v65 = v64;
          if (v62 == 102)
          {
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *type = 136446466;
              *&type[4] = "nw_socket_copy_info";
              v142 = 1024;
              *v143 = 102;
              _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_ERROR, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x12u);
            }

LABEL_285:
            result = v136;
            v136[6] = v8[12];
            v136[9] = v8[13];
LABEL_286:
            if (a3)
            {
              *a3 = 224;
            }

            goto LABEL_54;
          }

          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v142 = 1024;
          *v143 = v62;
          v108 = _os_log_send_and_compose_impl();
          v138 = OS_LOG_TYPE_ERROR;
          v137 = 0;
          if (__nwlog_fault(v108, &v138, &v137))
          {
            if (v138 == OS_LOG_TYPE_FAULT)
            {
              v109 = __nwlog_obj();
              v110 = v138;
              if (!os_log_type_enabled(v109, v138))
              {
                goto LABEL_283;
              }

              *type = 136446466;
              *&type[4] = "nw_socket_copy_info";
              v142 = 1024;
              *v143 = v62;
              v111 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
LABEL_281:
              v126 = v109;
LABEL_282:
              _os_log_impl(&dword_181A37000, v126, v110, v111, type, 0x12u);
              goto LABEL_283;
            }

            if (v137 != 1)
            {
              v109 = __nwlog_obj();
              v110 = v138;
              if (!os_log_type_enabled(v109, v138))
              {
                goto LABEL_283;
              }

              *type = 136446466;
              *&type[4] = "nw_socket_copy_info";
              v142 = 1024;
              *v143 = v62;
              v111 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
              goto LABEL_281;
            }

            v119 = __nw_create_backtrace_string();
            v120 = __nwlog_obj();
            v110 = v138;
            log = v120;
            v121 = os_log_type_enabled(v120, v138);
            if (v119)
            {
              if (v121)
              {
                *type = 136446722;
                *&type[4] = "nw_socket_copy_info";
                v142 = 1024;
                *v143 = v62;
                *&v143[4] = 2082;
                *&v143[6] = v119;
                _os_log_impl(&dword_181A37000, log, v110, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
              }

              free(v119);
              goto LABEL_283;
            }

            if (v121)
            {
              *type = 136446466;
              *&type[4] = "nw_socket_copy_info";
              v142 = 1024;
              *v143 = v62;
              v111 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
              v126 = log;
              goto LABEL_282;
            }
          }

LABEL_283:
          if (v108)
          {
            free(v108);
          }

          goto LABEL_285;
        }

LABEL_331:
        __break(1u);
        goto LABEL_332;
      }

      if (a2 != 254)
      {
        if (a2 != 255)
        {
          goto LABEL_54;
        }

        if (v8[21])
        {
          result = _nw_array_create();
          if (result)
          {
            v22 = v8[21];
            if (v22)
            {
              v23 = result;
              _nw_array_append(result, v22);
              result = v23;
            }
          }

          goto LABEL_54;
        }

        goto LABEL_53;
      }

      if (*(v8 + 72) != 2)
      {
        goto LABEL_53;
      }

      if (nw_protocol_setup_tcp_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_setup_tcp_definition_onceToken, &__block_literal_global_415);
      }

      v44 = g_tcp_definition;
      v45 = nw_protocol_establishment_report_create(v44, v8[17], v8[17]);
      if (v44)
      {
        os_release(v44);
      }

      v166 = 0;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v149 = 0u;
      memset(v148, 0, sizeof(v148));
      memset(v147, 0, sizeof(v147));
      v145 = 0u;
      v146 = 0u;
      memset(buf, 0, sizeof(buf));
      v140[0] = 424;
      if (!getsockopt(*(v8 + 71), 6, 512, buf, v140))
      {
        if ((DWORD2(v158) - 2) >= 8)
        {
          v78 = 1;
        }

        else
        {
          v78 = DWORD2(v158);
        }

        if ((HIDWORD(v158) - 2) >= 9)
        {
          v79 = 1;
        }

        else
        {
          v79 = HIDWORD(v158);
        }

        nw_protocol_establishment_report_set_client_accurate_ecn_state(v45, v78);
        nw_protocol_establishment_report_set_server_accurate_ecn_state(v45, v79);
        nw_protocol_establishment_report_set_l4s_enabled(v45, (DWORD1(v155) & 0x10000000) != 0);
        goto LABEL_293;
      }

      v46 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v47 = gconnectionLogObj;
      if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
      {
        *type = 136446722;
        *&type[4] = "nw_socket_copy_info";
        v142 = 2082;
        *v143 = v8 + 420;
        *&v143[8] = 1024;
        *&v143[10] = v46;
        _os_log_impl(&dword_181A37000, v47, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x1Cu);
      }

      v48 = __nwlog_obj();
      v49 = v48;
      if (v46 == 102)
      {
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v142 = 1024;
          *v143 = 102;
          _os_log_impl(&dword_181A37000, v49, OS_LOG_TYPE_ERROR, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d", type, 0x12u);
        }

        goto LABEL_293;
      }

      *type = 136446466;
      *&type[4] = "nw_socket_copy_info";
      v142 = 1024;
      *v143 = v46;
      v80 = _os_log_send_and_compose_impl();
      LOBYTE(v139) = 16;
      v138 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v80, &v139, &v138))
      {
        if (v139 == 17)
        {
          v81 = __nwlog_obj();
          v82 = v139;
          if (!os_log_type_enabled(v81, v139))
          {
            goto LABEL_291;
          }

          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v142 = 1024;
          *v143 = v46;
          v83 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
          goto LABEL_290;
        }

        if (v138 != OS_LOG_TYPE_INFO)
        {
          v81 = __nwlog_obj();
          v82 = v139;
          if (!os_log_type_enabled(v81, v139))
          {
            goto LABEL_291;
          }

          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v142 = 1024;
          *v143 = v46;
          v83 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
          goto LABEL_290;
        }

        v112 = __nw_create_backtrace_string();
        v81 = __nwlog_obj();
        v82 = v139;
        v113 = os_log_type_enabled(v81, v139);
        if (v112)
        {
          if (v113)
          {
            *type = 136446722;
            *&type[4] = "nw_socket_copy_info";
            v142 = 1024;
            *v143 = v46;
            *&v143[4] = 2082;
            *&v143[6] = v112;
            _os_log_impl(&dword_181A37000, v81, v82, "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s", type, 0x1Cu);
          }

          free(v112);
          goto LABEL_291;
        }

        if (v113)
        {
          *type = 136446466;
          *&type[4] = "nw_socket_copy_info";
          v142 = 1024;
          *v143 = v46;
          v83 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
LABEL_290:
          _os_log_impl(&dword_181A37000, v81, v82, v83, type, 0x12u);
        }
      }

LABEL_291:
      if (v80)
      {
        free(v80);
      }

LABEL_293:
      v127 = _nw_array_create();
      if (v127 && v45)
      {
        v128 = v127;
        _nw_array_append(v127, v45);
      }

      else
      {
        v128 = v127;
        if (!v45)
        {
LABEL_298:
          result = v128;
LABEL_54:
          if ((v6 & 1) == 0)
          {
            v27 = v3[5];
            if (v27 == &nw_protocol_ref_counted_handle || v27 == &nw_protocol_ref_counted_additional_handle && (v3 = v3[8]) != 0)
            {
              v28 = v3[11];
              if (v28)
              {
                v29 = v28 - 1;
                v3[11] = v29;
                if (!v29)
                {
                  v30 = result;
                  v31 = v3[8];
                  if (v31)
                  {
                    v3[8] = 0;
                    v31[2](v31);
                    _Block_release(v31);
                  }

                  if (v3[9])
                  {
                    v32 = v3[8];
                    if (v32)
                    {
                      _Block_release(v32);
                    }
                  }

                  free(v3);
                  return v30;
                }
              }
            }
          }

          return result;
        }
      }

      os_release(v45);
      goto LABEL_298;
    }

    switch(a2)
    {
      case 1:
        if (*(v8 + 72) != 2 || (v33 = *(v8 + 416), v33 != 30) && v33 != 2)
        {
          if ((*(v8 + 413) & 0x80) != 0 || gLogDatapath != 1)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] == -1)
          {
LABEL_119:
            v56 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              v17 = "%{public}s %{public}s ignoring tcp_info request for non-TCP socket";
LABEL_127:
              v57 = v56;
              v58 = OS_LOG_TYPE_DEBUG;
LABEL_188:
              _os_log_impl(&dword_181A37000, v57, v58, v17, buf, 0x16u);
            }

LABEL_53:
            result = 0;
            goto LABEL_54;
          }

LABEL_332:
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          goto LABEL_119;
        }

        *type = 424;
        if ((*(v8 + 415) & 2) == 0)
        {
          v34 = a3;
          v9 = malloc_type_malloc(0x1A8uLL, 0x88ABFBCFuLL);
          if (!v9)
          {
            v35 = __nwlog_obj();
            os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v36 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v36))
            {
              goto LABEL_331;
            }

            free(v36);
          }

          if (getsockopt(*(v8 + 71), 6, 512, v9, type))
          {
            v37 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v38 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              *&buf[22] = 1024;
              *&buf[24] = v37;
              _os_log_impl(&dword_181A37000, v38, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_INFO failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v39 = __nwlog_obj();
            v40 = v39;
            if (v37 == 102)
            {
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 1024;
              *&buf[14] = 102;
              v12 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
              goto LABEL_115;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 1024;
            *&buf[14] = v37;
            backtrace_string = _os_log_send_and_compose_impl();
            LOBYTE(v140[0]) = 16;
            LOBYTE(v139) = 0;
            if (__nwlog_fault(backtrace_string, v140, &v139))
            {
              if (LOBYTE(v140[0]) == 17)
              {
                v116 = __nwlog_obj();
                v117 = v140[0];
                if (!os_log_type_enabled(v116, v140[0]))
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v37;
                v118 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d";
LABEL_315:
                _os_log_impl(&dword_181A37000, v116, v117, v118, buf, 0x12u);
                goto LABEL_316;
              }

              if (v139 != 1)
              {
                v116 = __nwlog_obj();
                v117 = v140[0];
                if (!os_log_type_enabled(v116, v140[0]))
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v37;
                v118 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_315;
              }

              v122 = __nw_create_backtrace_string();
              v116 = __nwlog_obj();
              v117 = v140[0];
              v123 = os_log_type_enabled(v116, v140[0]);
              if (!v122)
              {
                if (!v123)
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v37;
                v118 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, no backtrace";
                goto LABEL_315;
              }

              if (v123)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v37;
                *&buf[18] = 2082;
                *&buf[20] = v122;
                v124 = "%{public}s getsockopt TCP_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s";
LABEL_277:
                _os_log_impl(&dword_181A37000, v116, v117, v124, buf, 0x1Cu);
              }

LABEL_278:
              free(v122);
            }

LABEL_316:
            if (backtrace_string)
            {
LABEL_39:
              free(backtrace_string);
            }

LABEL_51:
            if (v9)
            {
              free(v9);
            }

            goto LABEL_53;
          }

LABEL_205:
          if (v34)
          {
            *v34 = *type;
          }

          result = v9;
          goto LABEL_54;
        }

        if ((*(v8 + 413) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_copy_info";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 420;
        v17 = "%{public}s %{public}s Can't get TCP_INFO on a multipath socket";
        break;
      case 2:
        if (*(v8 + 72) != 2 || (v50 = *(v8 + 416), v50 != 30) && v50 != 2)
        {
          if ((*(v8 + 413) & 0x80) != 0 || gLogDatapath != 1)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v56 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s ignoring tcp_connection_info request for non-TCP socket";
          goto LABEL_127;
        }

        *type = 112;
        if ((*(v8 + 415) & 2) == 0)
        {
          v34 = a3;
          v9 = malloc_type_malloc(0x70uLL, 0x2E8E6DAuLL);
          if (!v9)
          {
            v51 = __nwlog_obj();
            os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v52 = _os_log_send_and_compose_impl();
            if (__nwlog_should_abort(v52))
            {
              goto LABEL_331;
            }

            free(v52);
          }

          if (getsockopt(*(v8 + 71), 6, 262, v9, type))
          {
            v53 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (__nwlog_connection_log::onceToken[0] != -1)
            {
              dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
            }

            v54 = gconnectionLogObj;
            if (os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446722;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 2082;
              *&buf[14] = v8 + 420;
              *&buf[22] = 1024;
              *&buf[24] = v53;
              _os_log_impl(&dword_181A37000, v54, OS_LOG_TYPE_ERROR, "%{public}s %{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d", buf, 0x1Cu);
            }

            v55 = __nwlog_obj();
            v40 = v55;
            if (v53 == 102)
            {
              if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = 136446466;
              *&buf[4] = "nw_socket_copy_info";
              *&buf[12] = 1024;
              *&buf[14] = 102;
              v12 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d";
LABEL_115:
              v24 = v40;
              v25 = OS_LOG_TYPE_ERROR;
              v26 = 18;
              goto LABEL_50;
            }

            *buf = 136446466;
            *&buf[4] = "nw_socket_copy_info";
            *&buf[12] = 1024;
            *&buf[14] = v53;
            backtrace_string = _os_log_send_and_compose_impl();
            LOBYTE(v140[0]) = 16;
            LOBYTE(v139) = 0;
            if (__nwlog_fault(backtrace_string, v140, &v139))
            {
              if (LOBYTE(v140[0]) == 17)
              {
                v116 = __nwlog_obj();
                v117 = v140[0];
                if (!os_log_type_enabled(v116, v140[0]))
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v53;
                v118 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d";
                goto LABEL_315;
              }

              if (v139 != 1)
              {
                v116 = __nwlog_obj();
                v117 = v140[0];
                if (!os_log_type_enabled(v116, v140[0]))
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v53;
                v118 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_315;
              }

              v122 = __nw_create_backtrace_string();
              v116 = __nwlog_obj();
              v117 = v140[0];
              v125 = os_log_type_enabled(v116, v140[0]);
              if (!v122)
              {
                if (!v125)
                {
                  goto LABEL_316;
                }

                *buf = 136446466;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v53;
                v118 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, no backtrace";
                goto LABEL_315;
              }

              if (v125)
              {
                *buf = 136446722;
                *&buf[4] = "nw_socket_copy_info";
                *&buf[12] = 1024;
                *&buf[14] = v53;
                *&buf[18] = 2082;
                *&buf[20] = v122;
                v124 = "%{public}s getsockopt TCP_CONNECTION_INFO failed %{darwin.errno}d, dumping backtrace:%{public}s";
                goto LABEL_277;
              }

              goto LABEL_278;
            }

            goto LABEL_316;
          }

          goto LABEL_205;
        }

        if ((*(v8 + 413) & 0x80) != 0)
        {
          goto LABEL_53;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *buf = 136446466;
        *&buf[4] = "nw_socket_copy_info";
        *&buf[12] = 2082;
        *&buf[14] = v8 + 420;
        v17 = "%{public}s %{public}s Can't get TCP_CONNECTION_INFO on a multipath socket";
        break;
      case 3:
        *type = 0;
        if (*(v8 + 72) == 2)
        {
          if ((*(v8 + 415) & 2) != 0)
          {
            if (!copymptcpinfo(*(v8 + 71), type))
            {
              if (a3)
              {
                *a3 = 24;
              }

              result = *type;
              goto LABEL_54;
            }

            __nwlog_obj();
            *buf = 136446210;
            *&buf[4] = "nw_socket_copy_info";
            v9 = _os_log_send_and_compose_impl();
            LOBYTE(v140[0]) = 16;
            LOBYTE(v139) = 0;
            if (!__nwlog_fault(v9, v140, &v139))
            {
              goto LABEL_51;
            }

            if (LOBYTE(v140[0]) == 17)
            {
              v10 = __nwlog_obj();
              v11 = v140[0];
              if (!os_log_type_enabled(v10, v140[0]))
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed";
            }

            else if (v139 == 1)
            {
              v114 = __nw_create_backtrace_string();
              v10 = __nwlog_obj();
              v11 = v140[0];
              v115 = os_log_type_enabled(v10, v140[0]);
              if (v114)
              {
                if (v115)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_socket_copy_info";
                  *&buf[12] = 2082;
                  *&buf[14] = v114;
                  _os_log_impl(&dword_181A37000, v10, v11, "%{public}s copymptcpinfo failed, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v114);
                goto LABEL_51;
              }

              if (!v115)
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed, no backtrace";
            }

            else
            {
              v10 = __nwlog_obj();
              v11 = v140[0];
              if (!os_log_type_enabled(v10, v140[0]))
              {
                goto LABEL_51;
              }

              *buf = 136446210;
              *&buf[4] = "nw_socket_copy_info";
              v12 = "%{public}s copymptcpinfo failed, backtrace limit exceeded";
            }

LABEL_48:
            v24 = v10;
            v25 = v11;
LABEL_49:
            v26 = 12;
LABEL_50:
            _os_log_impl(&dword_181A37000, v24, v25, v12, buf, v26);
            goto LABEL_51;
          }

          if ((*(v8 + 413) & 0x80) != 0)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s Can't get MPTCP_INFO on a TCP socket";
        }

        else
        {
          if ((*(v8 + 413) & 0x80) != 0)
          {
            goto LABEL_53;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v16 = gconnectionLogObj;
          if (!os_log_type_enabled(gconnectionLogObj, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_53;
          }

          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v8 + 420;
          v17 = "%{public}s %{public}s Can't get MPTCP_INFO on a non-stream socket";
        }

        break;
      default:
        goto LABEL_54;
    }

    v57 = v16;
    v58 = OS_LOG_TYPE_ERROR;
    goto LABEL_188;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_socket_copy_info";
  v129 = _os_log_send_and_compose_impl();
  type[0] = 16;
  LOBYTE(v140[0]) = 0;
  if (__nwlog_fault(v129, type, v140))
  {
    if (type[0] == 17)
    {
      v130 = __nwlog_obj();
      v131 = type[0];
      if (os_log_type_enabled(v130, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v132 = "%{public}s called with null protocol";
LABEL_327:
        _os_log_impl(&dword_181A37000, v130, v131, v132, buf, 0xCu);
      }
    }

    else if (LOBYTE(v140[0]) == 1)
    {
      v133 = __nw_create_backtrace_string();
      v130 = __nwlog_obj();
      v131 = type[0];
      v134 = os_log_type_enabled(v130, type[0]);
      if (v133)
      {
        if (v134)
        {
          *buf = 136446466;
          *&buf[4] = "nw_socket_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v133;
          _os_log_impl(&dword_181A37000, v130, v131, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v133);
        goto LABEL_328;
      }

      if (v134)
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v132 = "%{public}s called with null protocol, no backtrace";
        goto LABEL_327;
      }
    }

    else
    {
      v130 = __nwlog_obj();
      v131 = type[0];
      if (os_log_type_enabled(v130, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_socket_copy_info";
        v132 = "%{public}s called with null protocol, backtrace limit exceeded";
        goto LABEL_327;
      }
    }
  }

LABEL_328:
  if (v129)
  {
    free(v129);
  }

  return 0;
}

uint64_t nw_protocol_http3_create(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_create";
    v23 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (__nwlog_fault(v23, &type, &v41))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v26 = "%{public}s called with null identifier";
LABEL_66:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }
      }

      else if (v41 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v24 = __nwlog_obj();
        v25 = type;
        v34 = os_log_type_enabled(v24, type);
        if (backtrace_string)
        {
          if (v34)
          {
            *buf = 136446466;
            *&buf[4] = "nw_protocol_http3_create";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v24, v25, "%{public}s called with null identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_67;
        }

        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v26 = "%{public}s called with null identifier, no backtrace";
          goto LABEL_66;
        }
      }

      else
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_protocol_http3_create";
          v26 = "%{public}s called with null identifier, backtrace limit exceeded";
          goto LABEL_66;
        }
      }
    }

LABEL_67:
    if (v23)
    {
      free(v23);
    }

    return 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x578uLL, 0x1F8C1217uLL);
  v8 = v7;
  if (v7)
  {
    bzero(v7, 0x578uLL);
    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  *&buf[4] = "nw_protocol_http3_create";
  *&buf[12] = 2048;
  *&buf[14] = 1;
  *&buf[22] = 2048;
  v44 = 1400;
  v9 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort(v9);
  if (!result)
  {
    free(v9);
    bzero(0, 0x578uLL);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_create";
    v11 = _os_log_send_and_compose_impl();
    result = __nwlog_should_abort(v11);
    if (!result)
    {
      free(v11);
LABEL_7:
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v44 = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 0x40000000;
      aBlock[2] = __nw_protocol_http3_create_block_invoke;
      aBlock[3] = &unk_1E6A388A0;
      aBlock[4] = buf;
      *(v8 + 132) = _Block_copy(aBlock);
      _Block_object_dispose(buf, 8);
      if (nw_protocol_http3_get_callbacks(void)::onceToken[0] != -1)
      {
        dispatch_once(nw_protocol_http3_get_callbacks(void)::onceToken, &__block_literal_global_60_63242);
      }

      *(v8 + 2) = a1;
      *(v8 + 3) = &nw_protocol_http3_get_callbacks(void)::protocol_callbacks;
      *(v8 + 5) = v8;
      *(v8 + 8) = 0;
      *(v8 + 9) = v8;
      v8[120] = 0;
      if (nw_protocol_http3_get_listen_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_get_listen_callbacks(void)::onceToken, &__block_literal_global_180);
      }

      *(v8 + 16) = &nw_protocol_http3_get_listen_callbacks(void)::listen_protocol_callbacks;
      *(v8 + 19) = v8;
      *(v8 + 20) = -1;
      *(v8 + 168) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 27) = v8 + 208;
      *(v8 + 14) = 0u;
      *(v8 + 120) = 0;
      *(v8 + 23) = v8;
      *(v8 + 24) = v8;
      *(v8 + 143) = 0;
      *(v8 + 1397) = *(v8 + 1397) & 0xFFFE | nw_parameters_get_server_mode(a4);
      v12 = nw_parameters_copy_context(a4);
      *(v8 + 248) = 0u;
      *(v8 + 159) = v12;
      *(v8 + 328) = 0u;
      *(v8 + 344) = 0u;
      *(v8 + 264) = 0u;
      *(v8 + 280) = 0u;
      *(v8 + 296) = 0u;
      *(v8 + 312) = 0u;
      *(v8 + 360) = 0u;
      *(v8 + 376) = 0u;
      *(v8 + 392) = 0u;
      *(v8 + 408) = 0u;
      *(v8 + 424) = 0u;
      *(v8 + 440) = 0u;
      *(v8 + 456) = 0u;
      *(v8 + 472) = 0u;
      *(v8 + 39) = v8 + 304;
      *(v8 + 42) = v8 + 328;
      *(v8 + 44) = v8 + 344;
      *(v8 + 46) = v8 + 360;
      *(v8 + 808) = 0u;
      *(v8 + 824) = 0u;
      *(v8 + 776) = 0u;
      *(v8 + 792) = 0u;
      *(v8 + 744) = 0u;
      *(v8 + 760) = 0u;
      *(v8 + 712) = 0u;
      *(v8 + 728) = 0u;
      *(v8 + 680) = 0u;
      *(v8 + 696) = 0u;
      *(v8 + 648) = 0u;
      *(v8 + 664) = 0u;
      *(v8 + 616) = 0u;
      *(v8 + 632) = 0u;
      *(v8 + 584) = 0u;
      *(v8 + 600) = 0u;
      *(v8 + 552) = 0u;
      *(v8 + 568) = 0u;
      *(v8 + 520) = 0u;
      *(v8 + 536) = 0u;
      *(v8 + 488) = 0u;
      *(v8 + 504) = 0u;
      *(v8 + 492) = 0x3FFF00003FFFLL;
      *(v8 + 65) = vdup_n_s32(0x3FDu);
      *(v8 + 63) = 0x1FF00000064;
      *(v8 + 66) = &nw_qpack_dec_callbacks;
      *(v8 + 72) = v8 + 568;
      *(v8 + 74) = v8 + 584;
      *(v8 + 76) = v8 + 600;
      *(v8 + 78) = v8 + 616;
      *(v8 + 80) = v8 + 632;
      *(v8 + 82) = v8 + 648;
      *(v8 + 84) = v8 + 664;
      *(v8 + 86) = v8 + 680;
      *(v8 + 88) = v8 + 696;
      *(v8 + 111) = 0;
      *(v8 + 112) = v8 + 888;
      *(v8 + 115) = 0;
      *(v8 + 116) = v8 + 920;
      *(v8 + 117) = 0;
      *(v8 + 118) = v8 + 936;
      *(v8 + 119) = 0;
      *(v8 + 120) = v8 + 952;
      *(v8 + 121) = 0;
      *(v8 + 122) = v8 + 968;
      *(v8 + 123) = 0;
      *(v8 + 124) = v8 + 984;
      *(v8 + 1016) = 0u;
      *(v8 + 129) = -1;
      *(v8 + 322) = 0;
      if (nw_parameters_get_logging_disabled(a4))
      {
        v13 = 32;
      }

      else
      {
        v13 = 0;
      }

      v8[1399] = v8[1399] & 0xDF | v13;
      *(v8 + 130) = 240000;
      if (a3)
      {
        *(v8 + 139) = os_retain(a3);
        if (a4)
        {
LABEL_16:
          v14 = os_retain(a4);
          goto LABEL_19;
        }
      }

      else
      {
        *(v8 + 139) = 0;
        if (a4)
        {
          goto LABEL_16;
        }
      }

      v14 = 0;
LABEL_19:
      *(v8 + 142) = v14;
      v15 = *(v8 + 159);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = __nw_protocol_http3_create_block_invoke_2;
      v39[3] = &__block_descriptor_tmp_6_63243;
      v39[4] = v8;
      metadata = nw_http_connection_create_metadata(v15, v39, 0);
      *(v8 + 158) = metadata;
      nw_http_connection_metadata_set_version(metadata, 5);
      v17 = *(v8 + 158);
      v18 = &__block_literal_global_63244;
      if (v17)
      {
        if (nw_protocol_copy_http_connection_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
        }

        if (nw_protocol_metadata_matches_definition(v17, nw_protocol_copy_http_connection_definition_definition))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __nw_http_connection_metadata_set_send_certificate_block_invoke;
          v44 = &unk_1E6A3AA28;
          v46 = v8;
          v19 = &__block_literal_global_63244;
          v45 = &__block_literal_global_63244;
          handle = _nw_protocol_metadata_get_handle(v17);
          if (handle)
          {
            (*&buf[16])(buf, handle);
          }

          goto LABEL_26;
        }

        v32 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
        v28 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (__nwlog_fault(v28, &type, &v41))
        {
          if (type == OS_LOG_TYPE_FAULT)
          {
            v29 = __nwlog_obj();
            v30 = type;
            if (os_log_type_enabled(v29, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v31 = "%{public}s metadata must be http_connection";
              goto LABEL_74;
            }
          }

          else
          {
            if (v41 == 1)
            {
              v37 = __nw_create_backtrace_string();
              v29 = __nwlog_obj();
              v30 = type;
              v38 = os_log_type_enabled(v29, type);
              if (v37)
              {
                if (v38)
                {
                  *buf = 136446466;
                  *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
                  *&buf[12] = 2082;
                  *&buf[14] = v37;
                  _os_log_impl(&dword_181A37000, v29, v30, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
                }

                free(v37);
                if (!v28)
                {
                  goto LABEL_26;
                }

LABEL_77:
                free(v28);
LABEL_26:

                if ((v8[1399] & 0x20) == 0)
                {
                  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
                  networkd_settings_init();
                  v21 = gLogObj;
                  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
                  {
                    v22 = *(v8 + 326);
                    *buf = 136447234;
                    *&buf[4] = "nw_protocol_http3_create";
                    *&buf[12] = 2082;
                    *&buf[14] = v8 + 1313;
                    *&buf[22] = 2080;
                    v44 = " ";
                    LOWORD(v45) = 1024;
                    *(&v45 + 2) = v22;
                    HIWORD(v45) = 2048;
                    v46 = v8;
                    _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created %p", buf, 0x30u);
                  }
                }

                return v8;
              }

              if (!v38)
              {
                goto LABEL_75;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v31 = "%{public}s metadata must be http_connection, no backtrace";
              goto LABEL_74;
            }

            v29 = __nwlog_obj();
            v30 = type;
            if (os_log_type_enabled(v29, type))
            {
              *buf = 136446210;
              *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
              v31 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
              goto LABEL_74;
            }
          }

          goto LABEL_75;
        }
      }

      else
      {
        v27 = __nwlog_obj();
        *buf = 136446210;
        *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
        v28 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v41 = 0;
        if (!__nwlog_fault(v28, &type, &v41))
        {
          goto LABEL_76;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v31 = "%{public}s called with null metadata";
LABEL_74:
            _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
          }

LABEL_75:

          goto LABEL_76;
        }

        if (v41 != 1)
        {
          v29 = __nwlog_obj();
          v30 = type;
          if (os_log_type_enabled(v29, type))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v31 = "%{public}s called with null metadata, backtrace limit exceeded";
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        v35 = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v30 = type;
        v36 = os_log_type_enabled(v29, type);
        if (!v35)
        {
          if (v36)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
            v31 = "%{public}s called with null metadata, no backtrace";
            goto LABEL_74;
          }

          goto LABEL_75;
        }

        if (v36)
        {
          *buf = 136446466;
          *&buf[4] = "nw_http_connection_metadata_set_send_certificate";
          *&buf[12] = 2082;
          *&buf[14] = v35;
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v35);
      }

LABEL_76:
      if (!v28)
      {
        goto LABEL_26;
      }

      goto LABEL_77;
    }
  }

  __break(1u);
  return result;
}

uint64_t nw_http_connection_create_metadata(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  singleton = _nw_protocol_metadata_create_singleton();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __nw_http_connection_create_metadata_block_invoke;
  v13[3] = &unk_1E6A3ACF8;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  nw_protocol_metadata_access_handle(singleton, v13);

  return singleton;
}

uint64_t nw_protocol_definition_get_metadata_initializer(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = v1[10];
    if (v2)
    {
      v3 = *(v2 + 240);
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_protocol_definition_get_metadata_initializer";
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
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null definition", buf, 0xCu);
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
          v16 = "nw_protocol_definition_get_metadata_initializer";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null definition, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_protocol_definition_get_metadata_initializer";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null definition, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
  v1 = 0;
LABEL_5:

  return v3;
}

uint64_t __nw_http_connection_create_metadata_block_invoke(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 104), *(a1 + 32));
  v4 = _Block_copy(*(a1 + 40));
  v5 = *(a2 + 112);
  *(a2 + 112) = v4;

  v6 = _Block_copy(*(a1 + 48));
  v7 = *(a2 + 136);
  *(a2 + 136) = v6;

  return 1;
}

void nw_http_connection_metadata_set_version(void *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v5 = __nwlog_obj();
    *buf = 136446210;
    v22 = "nw_http_connection_metadata_set_version";
    v6 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v6, &type, &v19))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v7, v8, v9, buf, 0xCu);
      }
    }

    else if (v19 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v8 = type;
      v12 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          v22 = "nw_http_connection_metadata_set_version";
          v23 = 2082;
          v24 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v6)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v6);
        goto LABEL_7;
      }

      if (v12)
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v22 = "nw_http_connection_metadata_set_version";
        v9 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_connection_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_connection_definition_onceToken, &__block_literal_global_106);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_connection_definition_definition))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = __nw_http_connection_metadata_set_version_block_invoke;
    v17 = &__block_descriptor_36_e9_B16__0_v8l;
    v18 = a2;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v16(v15, handle);
    }

    goto LABEL_7;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v22 = "nw_http_connection_metadata_set_version";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (!__nwlog_fault(v6, &type, &v19))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v19 != 1)
  {
    v7 = __nwlog_obj();
    v8 = type;
    if (os_log_type_enabled(v7, type))
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v13 = __nw_create_backtrace_string();
  v7 = __nwlog_obj();
  v8 = type;
  v14 = os_log_type_enabled(v7, type);
  if (!v13)
  {
    if (v14)
    {
      *buf = 136446210;
      v22 = "nw_http_connection_metadata_set_version";
      v9 = "%{public}s metadata must be http_connection, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v14)
  {
    *buf = 136446466;
    v22 = "nw_http_connection_metadata_set_version";
    v23 = 2082;
    v24 = v13;
    _os_log_impl(&dword_181A37000, v7, v8, "%{public}s metadata must be http_connection, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v6)
  {
    goto LABEL_38;
  }

LABEL_7:
}

uint64_t __nw_http_connection_metadata_set_send_certificate_block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = *(a1 + 40);
  if (*(a2 + 16))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136446210;
      v8 = "nw_http_connection_metadata_set_send_certificate_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Ignoring duplicate setting of nw_http_connection_metadata_set_send_certificate", &v7, 0xCu);
    }
  }

  else
  {
    v4 = _Block_copy(*(a1 + 32));
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  return 1;
}

uint64_t nw_protocol_http3_add_input_handler(nw_protocol *a1, nw_protocol *a2)
{
  v225 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v222[0] = 0;
    if (!__nwlog_fault(v150, type, v222))
    {
      goto LABEL_384;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null protocol";
      goto LABEL_383;
    }

    if (v222[0] != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null protocol, backtrace limit exceeded";
      goto LABEL_383;
    }

    backtrace_string = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v155 = os_log_type_enabled(v151, type[0]);
    if (!backtrace_string)
    {
      if (!v155)
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null protocol, no backtrace";
      goto LABEL_383;
    }

    if (!v155)
    {
      goto LABEL_309;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v156 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
LABEL_308:
    _os_log_impl(&dword_181A37000, v151, v152, v156, buf, 0x16u);
    goto LABEL_309;
  }

  v2 = a1;
  handle = a1->handle;
  if (!handle)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v222[0] = 0;
    if (!__nwlog_fault(v150, type, v222))
    {
      goto LABEL_384;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null http3";
      goto LABEL_383;
    }

    if (v222[0] != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null http3, backtrace limit exceeded";
      goto LABEL_383;
    }

    backtrace_string = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v157 = os_log_type_enabled(v151, type[0]);
    if (!backtrace_string)
    {
      if (!v157)
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null http3, no backtrace";
      goto LABEL_383;
    }

    if (!v157)
    {
      goto LABEL_309;
    }

    *buf = 136446466;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = backtrace_string;
    v156 = "%{public}s called with null http3, dumping backtrace:%{public}s";
    goto LABEL_308;
  }

  v215 = handle + 1397;
  if ((*(handle + 1397) & 8) == 0)
  {
    parameters = nw_protocol_get_parameters(a2);
    if (parameters)
    {
      v6 = parameters;
      v7 = _nw_parameters_copy_context(parameters);
      v213 = v2;
      if (nw_context_shares_workloop(*(handle + 159), v7))
      {
        goto LABEL_25;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = *(handle + 159);
      *buf = 136446978;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      *&buf[24] = v7;
      *&buf[32] = 2112;
      *&buf[34] = v8;
      v9 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v222[0] = 0;
      if (__nwlog_fault(v9, type, v222))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_23;
          }

          v12 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v12;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@";
          goto LABEL_22;
        }

        if (v222[0] != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v10 = gLogObj;
          v11 = type[0];
          if (!os_log_type_enabled(gLogObj, type[0]))
          {
            goto LABEL_23;
          }

          v20 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v20;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, backtrace limit exceeded";
          goto LABEL_22;
        }

        v17 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v10 = gLogObj;
        v11 = type[0];
        v18 = os_log_type_enabled(gLogObj, type[0]);
        if (v17)
        {
          if (v18)
          {
            v19 = *(handle + 159);
            *buf = 136447234;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2048;
            *&buf[14] = a2;
            *&buf[22] = 2112;
            *&buf[24] = v7;
            *&buf[32] = 2112;
            *&buf[34] = v19;
            *&buf[42] = 2082;
            *&buf[44] = v17;
            _os_log_impl(&dword_181A37000, v10, v11, "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, dumping backtrace:%{public}s", buf, 0x34u);
          }

          free(v17);
          v2 = v213;
          goto LABEL_23;
        }

        v2 = v213;
        if (v18)
        {
          v21 = *(handle + 159);
          *buf = 136446978;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2048;
          *&buf[14] = a2;
          *&buf[22] = 2112;
          *&buf[24] = v7;
          *&buf[32] = 2112;
          *&buf[34] = v21;
          v13 = "%{public}s Incoming stream %p has different workloop on context %@ than original one from protocol create, which had workloop %@, no backtrace";
LABEL_22:
          _os_log_impl(&dword_181A37000, v10, v11, v13, buf, 0x2Au);
        }
      }

LABEL_23:
      if (v9)
      {
        free(v9);
      }

LABEL_25:
      if (v7)
      {
        os_release(v7);
      }

      if (!*(handle + 140))
      {
        if (!a2)
        {
          v212 = (handle + 1128);
          goto LABEL_39;
        }

        callbacks = a2->callbacks;
        if (callbacks)
        {
          get_local_endpoint = callbacks->get_local_endpoint;
          if (get_local_endpoint)
          {
            v24 = get_local_endpoint(a2);
            if (v24)
            {
              *(handle + 140) = os_retain(v24);
            }
          }
        }
      }

      v212 = (handle + 1128);
      if (a2)
      {
        if (!*(handle + 141))
        {
          v25 = a2->callbacks;
          if (v25)
          {
            get_path = v25->get_path;
            if (get_path)
            {
              v27 = get_path(a2);
              if (v27)
              {
                *(handle + 141) = os_retain(v27);
              }
            }
          }
        }
      }

LABEL_39:
      v28 = *(handle + 4);
      v29 = *(handle + 111);
      v216 = (v29 | v28) == 0;
      if (v29)
      {
        v30 = v28 == 0;
      }

      else
      {
        v30 = 0;
      }

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = *(handle + 4);
      }

      if (v30)
      {
        while (1)
        {
          v31 = *(v29 + 32);
          if (v31)
          {
            break;
          }

          v29 = *(v29 + 536);
          if (!v29)
          {
            v31 = 0;
            break;
          }
        }
      }

      *v222 = 0;
      *&v222[8] = v222;
      *&v222[16] = 0x2000000000;
      v223 = 0;
      v32 = _nw_parameters_copy_default_protocol_stack(v6);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL43nw_http3_set_prohibit_joining_on_parametersP11nw_protocolP13nw_parameters_block_invoke;
      *&buf[24] = &unk_1E6A38D10;
      *&buf[32] = v222;
      *&buf[40] = v2;
      nw_protocol_stack_iterate_application_protocols(v32, buf);
      if (*(*&v222[8] + 24) == 1)
      {
        v33 = nw_protocol_stack_copy_transport_protocol(v32);
        if (v33)
        {
          v34 = v33;
          v35 = _nw_protocol_options_copy_definition(v33);
          identifier = nw_protocol_definition_get_identifier(v35);
          if (gLogDatapath == 1)
          {
            v187 = identifier;
            v188 = __nwlog_obj();
            if (os_log_type_enabled(v188, OS_LOG_TYPE_DEBUG))
            {
              name = v213->identifier->name;
              if (!name)
              {
                name = "invalid";
              }

              *type = 136446978;
              *&type[4] = "nw_http3_set_prohibit_joining_on_parameters";
              *&type[12] = 2080;
              *&type[14] = name;
              *&type[22] = 2048;
              *&type[24] = v213;
              *&type[32] = 2080;
              *&type[34] = v187;
              _os_log_impl(&dword_181A37000, v188, OS_LOG_TYPE_DEBUG, "%{public}s %s (%p) setting prohibit joining on %s", type, 0x2Au);
            }
          }

          if (v35)
          {
            os_release(v35);
          }

          _nw_protocol_options_set_prohibit_joining(v34, 1);
          *(*&v222[8] + 24) = 0;
          os_release(v34);
          v2 = v213;
        }
      }

      if (v32)
      {
        os_release(v32);
      }

      _Block_object_dispose(v222, 8);
      if (v216)
      {
        v37 = _nw_parameters_shallow_copy(v6, 1);
        v38 = nw_parameters_copy_protocol_options_legacy(v37, v2);
        if (v38)
        {
          v39 = v38;
          v40 = _nw_protocol_options_copy(v38);
          if (nw_protocol_copy_http3_definition_onceToken != -1)
          {
            dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
          }

          v41 = nw_protocol_copy_http3_definition_http3_definition;
          nw_parameters_set_protocol_instance(v40, v42, handle);
          if (v41)
          {
            os_release(v41);
          }

          v43 = nw_parameters_copy_default_protocol_stack(v37);
          nw_protocol_stack_replace_protocol_with_handle(v43, v2, v40);
          if (v43)
          {
            os_release(v43);
          }

          if (v40)
          {
            os_release(v40);
          }

          os_release(v39);
        }

        else if ((handle[1399] & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v45 = *(handle + 326);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 1313;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v45;
            *&buf[38] = 2048;
            *&buf[40] = v37;
            *&buf[48] = 2048;
            *&buf[50] = v6;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u> failed to find http3 options in new parameters %p, copy of %p", buf, 0x3Au);
          }
        }

        v46 = *(handle + 142);
        if (v46)
        {
          os_release(v46);
        }

        *(handle + 142) = v37;
      }

      v47 = *(handle + 2);
      v48 = *(handle + 139);
      v49 = malloc_type_calloc(1uLL, 0x2E0uLL, 0x1BA78196uLL);
      v50 = v49;
      v214 = a2;
      if (v49)
      {
        bzero(v49, 0x2E0uLL);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_http3_stream_create";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *&buf[24] = 736;
        v51 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v51);
        if (result)
        {
          goto LABEL_403;
        }

        free(v51);
        bzero(0, 0x2E0uLL);
        MEMORY[0x118] = 0;
        MEMORY[0x120] = 0;
        MEMORY[0x128] = 0;
        MEMORY[0x130] = 0;
        MEMORY[0x138] = 0;
        MEMORY[0x140] = 0;
        MEMORY[0x148] = 0;
        MEMORY[0x149] = 0;
        MEMORY[0x198] = 0;
        MEMORY[0x1A0] &= ~1u;
        MEMORY[0x1F0] = 0;
        MEMORY[0x1F8] &= ~1u;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "nw_http3_stream_create";
        v52 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort(v52);
        if (result)
        {
          goto LABEL_403;
        }

        free(v52);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      *&buf[24] = v50;
      *type = MEMORY[0x1E69E9820];
      *&type[8] = 0x40000000;
      *&type[16] = ___ZL22nw_http3_stream_createPK22nw_protocol_identifierP17nw_protocol_http3P11nw_endpointP13nw_parametersb_block_invoke;
      *&type[24] = &unk_1E6A38D38;
      *&type[32] = buf;
      *(v50 + 336) = _Block_copy(type);
      _Block_object_dispose(buf, 8);
      *(v50 + 16) = v47;
      if (nw_protocol_http3_stream_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_stream_get_callbacks(void)::onceToken, &__block_literal_global_95);
      }

      *(v50 + 24) = &nw_protocol_http3_stream_get_callbacks(void)::protocol_callbacks;
      *(v50 + 40) = v50;
      if (nw_protocol_http3_identifier::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_identifier::onceToken, &__block_literal_global_13_64572);
      }

      *(v50 + 80) = &nw_protocol_http3_identifier::http3_protocol_identifier;
      if (nw_protocol_http3_stream_get_callbacks(void)::onceToken != -1)
      {
        dispatch_once(&nw_protocol_http3_stream_get_callbacks(void)::onceToken, &__block_literal_global_95);
      }

      *(v50 + 88) = &nw_protocol_http3_stream_get_callbacks(void)::protocol_callbacks;
      *(v50 + 104) = v50;
      *(v50 + 344) = handle;
      *(v50 + 128) = -1;
      *(v50 + 136) = 0;
      *(v50 + 144) = 0;
      *(v50 + 152) = v50;
      *(v50 + 160) = 0;
      *(v50 + 168) = 0;
      *(v50 + 176) = 0;
      *(v50 + 192) = 0;
      *(v50 + 200) = 0;
      *(v50 + 184) = v50 + 176;
      *(v50 + 208) = 0;
      if (v48)
      {
        v53 = os_retain(v48);
      }

      else
      {
        v53 = 0;
      }

      *(v50 + 352) = v53;
      *(v50 + 360) = os_retain(v6);
      *(v50 + 376) = 0;
      *(v50 + 272) = -1;
      v54 = nw_frame_create(0, 0, 0, 0, 0);
      *(v50 + 216) = 0;
      *(v50 + 392) = v54;
      *(v50 + 224) = v50 + 216;
      *(v50 + 480) = 0;
      *(v50 + 488) = 0;
      *(v50 + 732) |= 0x10u;
      if (_nw_parameters_get_logging_disabled(v6))
      {
        v55 = 0x2000;
      }

      else
      {
        v55 = 0;
      }

      *(v50 + 732) = *(v50 + 732) & 0xDFFF | v55;
      *(v50 + 328) = *v215 & 1;
      *(v50 + 240) = -1;
      *(v50 + 264) = -1;
      v56 = v6;
      v57 = _nw_parameters_copy_protocol_options_with_level(v56, handle);

      if (!v57 || (singleton = nw_http_messaging_options_copy_transaction_metadata(v57), os_release(v57), !singleton))
      {
        if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
        {
          dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
        }

        singleton = _nw_protocol_metadata_create_singleton();
      }

      *(v50 + 400) = singleton;
      v59 = *(v50 + 732);
      if (v216)
      {
        v60 = 2;
      }

      else
      {
        v60 = 0;
      }

      *(v50 + 732) = v59 & 0xFFFD | v60;
      if ((v59 & 0x2000) == 0 && gLogDatapath == 1)
      {
        v162 = __nwlog_obj();
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
        {
          v163 = *(*(v50 + 344) + 1304);
          v164 = *(v50 + 240);
          *buf = 136447490;
          *&buf[4] = "nw_http3_stream_create";
          *&buf[12] = 2082;
          *&buf[14] = v50 + 632;
          *&buf[22] = 2080;
          *&buf[24] = " ";
          *&buf[32] = 1024;
          *&buf[34] = v163;
          *&buf[38] = 2048;
          *&buf[40] = v164;
          *&buf[48] = 2048;
          *&buf[50] = v50;
          _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> created HTTP/3 stream %p", buf, 0x3Au);
        }
      }

      if (a2)
      {
        nw_protocol_set_input_handler(v50, a2);
        *v50 = *a2->flow_id;
        nw_protocol_set_output_handler(a2, v50);
        *(v50 + 152) = v50;
        v61 = a2->callbacks;
        if (v61)
        {
          supports_external_data = v61->supports_external_data;
          if (supports_external_data)
          {
            *(v50 + 732) = *(v50 + 732) & 0xFFFE | supports_external_data(a2);
          }
        }

        v63 = *(v50 + 360);
        v64 = nw_protocol_get_parameters(a2);
        if (!v64)
        {
          v165 = v56;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_add_input_handler";
          v166 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v222[0] = 0;
          if (!__nwlog_fault(v166, type, v222))
          {
            goto LABEL_351;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v167 = __nwlog_obj();
            v168 = type[0];
            if (!os_log_type_enabled(v167, type[0]))
            {
              goto LABEL_351;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v169 = "%{public}s called with null parameters";
LABEL_349:
            v192 = v167;
            v193 = v168;
LABEL_350:
            _os_log_impl(&dword_181A37000, v192, v193, v169, buf, 0xCu);
            goto LABEL_351;
          }

          if (v222[0] != 1)
          {
            v167 = __nwlog_obj();
            v168 = type[0];
            if (!os_log_type_enabled(v167, type[0]))
            {
              goto LABEL_351;
            }

            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v169 = "%{public}s called with null parameters, backtrace limit exceeded";
            goto LABEL_349;
          }

          v180 = __nw_create_backtrace_string();
          v181 = __nwlog_obj();
          v182 = type[0];
          v183 = os_log_type_enabled(v181, type[0]);
          if (v180)
          {
            if (v183)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v180;
              _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v180);
          }

          else if (v183)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v169 = "%{public}s called with null parameters, no backtrace";
LABEL_393:
            v192 = v181;
            v193 = v182;
            goto LABEL_350;
          }

LABEL_351:
          if (!v166)
          {
LABEL_353:
            v80 = v214;
            v56 = v165;
            goto LABEL_137;
          }

LABEL_352:
          free(v166);
          goto LABEL_353;
        }

        v65 = v64;
        *(v50 + 360) = os_retain(v64);
        v66 = nw_parameters_copy_context(v63);
        v67 = _nw_parameters_copy_context(v65);
        if (nw_context_shares_workloop(v66, v67))
        {
LABEL_125:
          if (v66)
          {
            os_release(v66);
          }

          if (v67)
          {
            os_release(v67);
          }

          if (v63)
          {
            os_release(v63);
          }

          v79 = *(v50 + 344);
          v80 = v214;
          if (v79)
          {
            nw_http3_stream_replace_protocol_instance(v50, *(v50 + 360), v79, v50);
            v81 = v65;
            v82 = _nw_parameters_copy_protocol_options_with_level(v81, v50);

            if (v82)
            {
              v84 = v82;
              _nw_protocol_options_get_log_id_str(v84, (v50 + 632));

              *(v50 + 628) = _nw_protocol_options_get_log_id_num(v84);
              *(v50 + 624) = nw_http3_get_stream_mode(v84);
              *(v50 + 264) = nw_http3_get_webtransport_session_id(v84);
              os_release(v84);
            }

            else if ((*(v50 + 732) & 0x2000) == 0)
            {
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v85 = gLogObj;
              if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
              {
                v86 = *(*(v50 + 344) + 1304);
                v87 = *(v50 + 240);
                v88 = *(v50 + 360);
                *buf = 136447746;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v50 + 632;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v86;
                *&buf[38] = 2048;
                *&buf[40] = v87;
                *&buf[48] = 2048;
                *&buf[50] = v50;
                *&buf[58] = 2048;
                *&buf[60] = v88;
                _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_ERROR, "%{public}s %{public}s%s<i%u:s%llu> Failed to access options for protocol %p, parameters %p", buf, 0x44u);
              }
            }

            goto LABEL_137;
          }

          v165 = v56;
          __nwlog_obj();
          *buf = 136446210;
          *&buf[4] = "nw_http3_stream_add_input_handler";
          v166 = _os_log_send_and_compose_impl();
          type[0] = OS_LOG_TYPE_ERROR;
          v222[0] = 0;
          if (__nwlog_fault(v166, type, v222))
          {
            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v167 = __nwlog_obj();
              v168 = type[0];
              if (!os_log_type_enabled(v167, type[0]))
              {
                goto LABEL_351;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v169 = "%{public}s called with null options_protocol";
              goto LABEL_349;
            }

            if (v222[0] != 1)
            {
              v167 = __nwlog_obj();
              v168 = type[0];
              if (!os_log_type_enabled(v167, type[0]))
              {
                goto LABEL_351;
              }

              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v169 = "%{public}s called with null options_protocol, backtrace limit exceeded";
              goto LABEL_349;
            }

            v184 = __nw_create_backtrace_string();
            v181 = __nwlog_obj();
            v182 = type[0];
            v185 = os_log_type_enabled(v181, type[0]);
            if (v184)
            {
              if (v185)
              {
                *buf = 136446466;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = v184;
                _os_log_impl(&dword_181A37000, v181, v182, "%{public}s called with null options_protocol, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v184);
              if (!v166)
              {
                goto LABEL_353;
              }

              goto LABEL_352;
            }

            if (v185)
            {
              *buf = 136446210;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              v169 = "%{public}s called with null options_protocol, no backtrace";
              goto LABEL_393;
            }
          }

          goto LABEL_351;
        }

        v210 = v56;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446978;
        *&buf[4] = "nw_http3_stream_add_input_handler";
        *&buf[12] = 2048;
        *&buf[14] = v214;
        *&buf[22] = 2112;
        *&buf[24] = v67;
        *&buf[32] = 2112;
        *&buf[34] = v66;
        v68 = _os_log_send_and_compose_impl();
        type[0] = OS_LOG_TYPE_ERROR;
        v222[0] = 0;
        if (__nwlog_fault(v68, type, v222))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v69 = gLogObj;
            v70 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v214;
              *&buf[22] = 2112;
              *&buf[24] = v67;
              *&buf[32] = 2112;
              *&buf[34] = v66;
              v71 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@";
              v72 = v69;
              v73 = v70;
LABEL_121:
              _os_log_impl(&dword_181A37000, v72, v73, v71, buf, 0x2Au);
            }
          }

          else if (v222[0] == 1)
          {
            v74 = __nw_create_backtrace_string();
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v75 = gLogObj;
            v209 = type[0];
            v76 = os_log_type_enabled(gLogObj, type[0]);
            if (v74)
            {
              if (v76)
              {
                *buf = 136447234;
                *&buf[4] = "nw_http3_stream_add_input_handler";
                *&buf[12] = 2048;
                *&buf[14] = v214;
                *&buf[22] = 2112;
                *&buf[24] = v67;
                *&buf[32] = 2112;
                *&buf[34] = v66;
                *&buf[42] = 2082;
                *&buf[44] = v74;
                _os_log_impl(&dword_181A37000, v75, v209, "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, dumping backtrace:%{public}s", buf, 0x34u);
              }

              free(v74);
              goto LABEL_122;
            }

            if (v76)
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v214;
              *&buf[22] = 2112;
              *&buf[24] = v67;
              *&buf[32] = 2112;
              *&buf[34] = v66;
              v71 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, no backtrace";
              v72 = v75;
              v73 = v209;
              goto LABEL_121;
            }
          }

          else
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v77 = gLogObj;
            v78 = type[0];
            if (os_log_type_enabled(gLogObj, type[0]))
            {
              *buf = 136446978;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2048;
              *&buf[14] = v214;
              *&buf[22] = 2112;
              *&buf[24] = v67;
              *&buf[32] = 2112;
              *&buf[34] = v66;
              v71 = "%{public}s Incoming http3 stream %p has different workloop on context %@ than original one from http3_stream, which had workloop %@, backtrace limit exceeded";
              v72 = v77;
              v73 = v78;
              goto LABEL_121;
            }
          }
        }

LABEL_122:
        if (v68)
        {
          free(v68);
        }

        v56 = v210;
        goto LABEL_125;
      }

      v211 = v56;
      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "nw_http3_stream_add_input_handler";
      v158 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v222[0] = 0;
      if (__nwlog_fault(v158, type, v222))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v159 = __nwlog_obj();
          v160 = type[0];
          if (os_log_type_enabled(v159, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v161 = "%{public}s called with null input_protocol";
LABEL_340:
            v190 = v159;
            v191 = v160;
LABEL_341:
            _os_log_impl(&dword_181A37000, v190, v191, v161, buf, 0xCu);
          }
        }

        else if (v222[0] == 1)
        {
          v173 = __nw_create_backtrace_string();
          v174 = __nwlog_obj();
          v175 = type[0];
          v176 = os_log_type_enabled(v174, type[0]);
          if (v173)
          {
            if (v176)
            {
              *buf = 136446466;
              *&buf[4] = "nw_http3_stream_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = v173;
              _os_log_impl(&dword_181A37000, v174, v175, "%{public}s called with null input_protocol, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v173);
            goto LABEL_342;
          }

          if (v176)
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v161 = "%{public}s called with null input_protocol, no backtrace";
            v190 = v174;
            v191 = v175;
            goto LABEL_341;
          }
        }

        else
        {
          v159 = __nwlog_obj();
          v160 = type[0];
          if (os_log_type_enabled(v159, type[0]))
          {
            *buf = 136446210;
            *&buf[4] = "nw_http3_stream_add_input_handler";
            v161 = "%{public}s called with null input_protocol, backtrace limit exceeded";
            goto LABEL_340;
          }
        }
      }

LABEL_342:
      if (v158)
      {
        free(v158);
      }

      v80 = 0;
      v56 = v211;
LABEL_137:
      v89 = *(handle + 111);
      *(v50 + 536) = v89;
      if (v89)
      {
        v90 = (v89 + 544);
      }

      else
      {
        v90 = handle + 896;
      }

      *v90 = v50 + 536;
      *(handle + 111) = v50;
      *(v50 + 544) = handle + 888;
      v91 = *(handle + 162);
      if (v91)
      {
        nw_protocol_replace_input_handler(*(v91 + 32), *(handle + 162), v50);
        v92 = *(v91 + 64);
        if (v92)
        {
          v93 = *(v50 + 184);
          *v93 = v92;
          *(*(v91 + 64) + 40) = v93;
          *(v50 + 184) = *(v91 + 72);
          *(v91 + 64) = 0;
          *(v91 + 72) = v91 + 64;
        }

        *(v50 + 264) = *(v91 + 96);
        *(v50 + 732) = *(v50 + 732) & 0xFBFF | (((*(v91 + 188) & 4) != 0) << 10);
        nw_protocol_http3_untyped_stream_destroy(v91);
        *(handle + 162) = 0;
      }

      if (*(v50 + 624))
      {
        if (nw_http3_passthrough_stream_get_callbacks(void)::onceToken != -1)
        {
          dispatch_once(&nw_http3_passthrough_stream_get_callbacks(void)::onceToken, &__block_literal_global_158);
        }

        *(v50 + 24) = &nw_http3_passthrough_stream_get_callbacks(void)::protocol_callbacks;
        if ((*(v50 + 732) & 0x400) != 0)
        {
          v94 = *(v50 + 336);
          v95 = *(*(v50 + 344) + 1272);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 0x40000000;
          *&buf[16] = ___ZL43nw_http3_stream_reinitialize_as_passthroughP24nw_protocol_http3_stream_block_invoke;
          *&buf[24] = &unk_1E6A391E0;
          *&buf[32] = v94;
          *&buf[40] = v50;
          nw_queue_context_async(v95, buf);
        }
      }

      if (*(handle + 6))
      {
        if (v216)
        {
LABEL_151:
          *handle = *v80->flow_id;
          if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
          {
            v177 = __nwlog_obj();
            if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
            {
              v178 = *(handle + 326);
              v179 = *(handle + 6);
              *buf = 136447746;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v178;
              *&buf[38] = 2048;
              *&buf[40] = handle;
              *&buf[48] = 2048;
              *&buf[50] = v179;
              *&buf[58] = 2048;
              *&buf[60] = v80;
              _os_log_impl(&dword_181A37000, v177, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> protocol %p protocol->default_input_handler %p input_protocol %p", buf, 0x44u);
            }
          }

          if (!*(handle + 154))
          {
            v114 = _nw_parameters_copy_context(v56);
            v115 = *(handle + 153);
            if (v115)
            {
              os_release(v115);
              *(handle + 153) = 0;
            }

            v116 = nw_path_copy_flow_registration(v114, handle);
            *(handle + 153) = v116;
            if (v114)
            {
              os_release(v114);
              v116 = *(handle + 153);
            }

            if (v116)
            {
              v117 = nw_path_flow_registration_copy_endpoint(v116);
              v118 = nw_path_flow_registration_copy_parameters(*(handle + 153));
              v119 = nw_endpoint_copy_association_with_evaluator(v117, v118, 0);
              *(handle + 154) = v119;
              if (v117)
              {
                os_release(v117);
                v119 = *(handle + 154);
              }

              if (v119)
              {
                v120 = nw_protocol_instance_stub_create(handle);
                *(handle + 155) = v120;
                nw_association_register_internal(*(handle + 154), v56, v120, 0, 0, &__block_literal_global_164);
                v121 = nw_association_copy_current_path(*(handle + 154), v118);
                if (v121)
                {
                  v122 = v121;
                  v123 = nw_path_copy_for_flow_registration(v121, *(handle + 153));
                  if (v123)
                  {
                    v124 = v123;
                    v125 = *v212;
                    if (*v212 != v124)
                    {
                      if (v125)
                      {
                        os_release(v125);
                        *v212 = 0;
                      }

                      *v212 = os_retain(v124);
                    }

                    if (nw_path_has_flows(v124))
                    {
                      v126 = 64;
                    }

                    else
                    {
                      v126 = 0;
                    }

                    handle[1399] = handle[1399] & 0xBF | v126;
                    v127 = _nw_parameters_copy_effective_proxy_config(v56);
                    if (v127)
                    {
                      v128 = v127;
                      if (nw_path_has_proxy_config(v122, v127))
                      {
                        v129 = *(handle + 156);
                        if (v129)
                        {
                          os_release(v129);
                        }

                        *(handle + 156) = v128;
                      }

                      else
                      {
                        os_release(v128);
                      }
                    }

                    os_release(v122);
                  }

                  else
                  {
                    v124 = v122;
                  }

                  os_release(v124);
                }
              }

              if (v118)
              {
                os_release(v118);
              }
            }
          }

          v96 = v56;
          v97 = _nw_parameters_copy_protocol_options_with_level(v96, v50);

          if (!v97)
          {
            goto LABEL_244;
          }

          v98 = v97;
          _nw_protocol_options_get_log_id_str(v98, handle + 1313);

          *(handle + 655) = _nw_protocol_options_get_log_id_num(v98);
          *(handle + 130) = 1000 * nw_http3_get_idle_timeout(v98);
          *(handle + 323) = nw_http3_get_keepalive_mode(v98);
          if (nw_http3_get_0rtt_enabled(v98))
          {
            v99 = 32;
          }

          else
          {
            v99 = 0;
          }

          *v215 = *v215 & 0xFFDF | v99;
          handle[1312] = nw_http3_get_sessions_to_request(v98);
          nw_http3_get_resumable_session_agent(v98, (handle + 840));
          *(handle + 326) = nw_protocol_get_next_instance_id();
          top_id = _nw_protocol_options_get_top_id(v98);
          if ((handle[1399] & 0x20) == 0)
          {
            v101 = top_id;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v102 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
            {
              v103 = *(handle + 326);
              *buf = 136447490;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v103;
              *&buf[38] = 1024;
              *&buf[40] = v103;
              *&buf[44] = 1024;
              *&buf[46] = v101;
              _os_log_impl(&dword_181A37000, v102, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> created HTTP/3 and assigned instance ID: %u from C%u", buf, 0x32u);
            }
          }

          v104 = *(handle + 107);
          if (v104)
          {
            _Block_release(v104);
            *(handle + 107) = 0;
          }

          v105 = *(handle + 108);
          if (v105)
          {
            dispatch_release(v105);
            *(handle + 108) = 0;
          }

          v106 = *(handle + 109);
          if (v106)
          {
            _Block_release(v106);
            *(handle + 109) = 0;
          }

          v107 = *(handle + 110);
          if (v107)
          {
            dispatch_release(v107);
            *(handle + 110) = 0;
          }

          *(handle + 107) = nw_http3_copy_resumable_session_handler(v98);
          *(handle + 108) = nw_http3_copy_resumable_session_handler_queue(v98);
          *(handle + 109) = nw_http3_copy_remote_settings_handler(v98);
          *(handle + 110) = nw_http3_copy_remote_settings_handler_queue(v98);
          v218 = 0;
          v219 = 0;
          v217 = 0;
          if (!nw_http3_get_initial_remote_settings(v98, &v219, &v218, &v217))
          {
            v130 = nw_http3_copy_initial_remote_settings_data(v98);
            if (!v130)
            {
              goto LABEL_241;
            }

            goto LABEL_240;
          }

          memset(type, 0, 63);
          v108 = v218;
          v109 = v219;
          v110 = v217;
          memset(buf, 0, 63);
          if (v219 == -1)
          {
            v131 = 0;
          }

          else
          {
            __src = 6;
            buf[0] = 6;
            if (v219 > 0x3F)
            {
              if (v219 >> 14)
              {
                if (v219 >> 30)
                {
                  if (v219 >> 62)
                  {
                    v132 = __nwlog_obj();
                    os_log_type_enabled(v132, OS_LOG_TYPE_ERROR);
                    *v222 = 136446466;
                    *&v222[4] = "_http_vle_encode";
                    *&v222[12] = 2048;
                    *&v222[14] = v109;
                    v133 = _os_log_send_and_compose_impl();
                    result = __nwlog_should_abort(v133);
                    if (result)
                    {
                      goto LABEL_403;
                    }

                    free(v133);
                    v111 = 0;
                  }

                  else
                  {
                    __src = bswap64(v219 | 0xC000000000000000);
                    v111 = 8;
                  }
                }

                else
                {
                  __src = bswap32(v219 | 0x80000000);
                  v111 = 4;
                }
              }

              else
              {
                __src = bswap32(v219 | 0x4000) >> 16;
                v111 = 2;
              }
            }

            else
            {
              __src = v219;
              v111 = 1;
            }

            memcpy(&buf[1], &__src, v111);
            v131 = v111 + 1;
          }

          __src = 1;
          buf[v131] = 1;
          if (v108 > 0x3F)
          {
            if (v108 >> 14)
            {
              if (v108 >> 30)
              {
                if (v108 >> 62)
                {
                  v135 = __nwlog_obj();
                  os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
                  *v222 = 136446466;
                  *&v222[4] = "_http_vle_encode";
                  *&v222[12] = 2048;
                  *&v222[14] = v108;
                  v136 = _os_log_send_and_compose_impl();
                  result = __nwlog_should_abort(v136);
                  if (result)
                  {
                    goto LABEL_403;
                  }

                  free(v136);
                  v134 = 0;
                }

                else
                {
                  __src = bswap64(v108 | 0xC000000000000000);
                  v134 = 8;
                }
              }

              else
              {
                __src = bswap32(v108 | 0x80000000);
                v134 = 4;
              }
            }

            else
            {
              __src = bswap32(v108 | 0x4000) >> 16;
              v134 = 2;
            }
          }

          else
          {
            __src = v108;
            v134 = 1;
          }

          memcpy(&buf[v131 + 1], &__src, v134);
          v137 = v134 + v131 + 1;
          __src = 7;
          buf[v137] = 7;
          if (v110 <= 0x3F)
          {
            __src = v110;
            v138 = 1;
LABEL_239:
            memcpy(&buf[v137 + 1], &__src, v138);
            memcpy(type, buf, v138 + v137 + 1);
            v130 = dispatch_data_create(type, v138 + v137 + 1, 0, 0);
LABEL_240:
            *(handle + 146) = v130;
            *v215 |= 0x40u;
LABEL_241:
            max_webtransport_sessions = nw_http3_get_max_webtransport_sessions(v98);
            if (max_webtransport_sessions)
            {
              v142 = max_webtransport_sessions;
              webtransport_state = nw_http_connection_metadata_get_webtransport_state(*(handle + 158));
              nw_webtransport_connection_state_set_max_sessions(webtransport_state, v142);
            }

            os_release(v98);
            goto LABEL_244;
          }

          if (!(v110 >> 14))
          {
            __src = bswap32(v110 | 0x4000) >> 16;
            v138 = 2;
            goto LABEL_239;
          }

          if (!(v110 >> 30))
          {
            __src = bswap32(v110 | 0x80000000);
            v138 = 4;
            goto LABEL_239;
          }

          if (!(v110 >> 62))
          {
            __src = bswap64(v110 | 0xC000000000000000);
            v138 = 8;
            goto LABEL_239;
          }

          v139 = __nwlog_obj();
          os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
          *v222 = 136446466;
          *&v222[4] = "_http_vle_encode";
          *&v222[12] = 2048;
          *&v222[14] = v110;
          v140 = _os_log_send_and_compose_impl();
          result = __nwlog_should_abort(v140);
          if (!result)
          {
            free(v140);
            v138 = 0;
            goto LABEL_239;
          }

LABEL_403:
          __break(1u);
          return result;
        }
      }

      else
      {
        nw_protocol_set_input_handler(handle, v80);
        if (v216)
        {
          goto LABEL_151;
        }
      }

      if (*(v50 + 32))
      {
LABEL_244:
        if (*(handle + 160))
        {
          if ((handle[1399] & 0x20) == 0 && gLogDatapath == 1)
          {
            v170 = __nwlog_obj();
            if (os_log_type_enabled(v170, OS_LOG_TYPE_DEBUG))
            {
              v171 = *(handle + 326);
              *buf = 136446978;
              *&buf[4] = "nw_protocol_http3_add_input_handler";
              *&buf[12] = 2082;
              *&buf[14] = handle + 1313;
              *&buf[22] = 2080;
              *&buf[24] = " ";
              *&buf[32] = 1024;
              *&buf[34] = v171;
              _os_log_impl(&dword_181A37000, v170, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> deactivating destroy timer because we are active again", buf, 0x26u);
            }
          }

          nw_queue_cancel_source(*(handle + 160), v83);
          *(handle + 160) = 0;
        }

        v144 = handle[1399];
        if ((v144 & 0x10) != 0)
        {
          handle[1399] = v144 & 0xEF;
          if (*(handle + 157) && *(handle + 323) == 2)
          {
            if ((v144 & 0x20) == 0 && gLogDatapath == 1)
            {
              v204 = __nwlog_obj();
              if (os_log_type_enabled(v204, OS_LOG_TYPE_DEBUG))
              {
                v205 = *(handle + 326);
                *buf = 136446978;
                *&buf[4] = "nw_protocol_http3_add_input_handler";
                *&buf[12] = 2082;
                *&buf[14] = handle + 1313;
                *&buf[22] = 2080;
                *&buf[24] = " ";
                *&buf[32] = 1024;
                *&buf[34] = v205;
                _os_log_impl(&dword_181A37000, v204, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u> re-enabling QUIC keepalives", buf, 0x26u);
              }
            }

            nw_quic_connection_set_keepalive(*(handle + 157), 0xFFFFu);
          }

          buf[0] = 0;
          output_handler = v213->output_handler;
          if (output_handler)
          {
            v146 = output_handler->callbacks;
            if (v146)
            {
              notify = v146->notify;
              if (notify)
              {
                notify(output_handler, v213);
              }
            }
          }

          v144 = handle[1399];
        }

        if ((v144 & 0x20) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v148 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
          {
            v149 = *(handle + 326);
            *buf = 136447490;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = handle + 1313;
            *&buf[22] = 2080;
            *&buf[24] = " ";
            *&buf[32] = 1024;
            *&buf[34] = v149;
            *&buf[38] = 2048;
            *&buf[40] = v80;
            *&buf[48] = 2082;
            *&buf[50] = v50 + 632;
            _os_log_impl(&dword_181A37000, v148, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s%s<i%u> added input handler %p from %{public}s", buf, 0x3Au);
          }
        }

        return 1;
      }

      if (v31)
      {
        v112 = *(v31 + 24);
        if (v112)
        {
          v113 = *v112;
          if (v113)
          {
            v113(v31, v50);
            goto LABEL_244;
          }
        }

        __nwlog_obj();
        v186 = *(v31 + 16);
        if (!v186)
        {
          v186 = "invalid";
        }
      }

      else
      {
        __nwlog_obj();
        v186 = "invalid";
      }

      *buf = 136446466;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      *&buf[12] = 2082;
      *&buf[14] = v186;
      v194 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v222[0] = 0;
      if (!__nwlog_fault(v194, type, v222))
      {
LABEL_401:
        if (v194)
        {
          free(v194);
        }

        goto LABEL_244;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v195 = __nwlog_obj();
        v196 = type[0];
        if (os_log_type_enabled(v195, type[0]))
        {
          v197 = "invalid";
          if (v31 && *(v31 + 16))
          {
            v197 = *(v31 + 16);
          }

          *buf = 136446466;
          *&buf[4] = "nw_protocol_http3_add_input_handler";
          *&buf[12] = 2082;
          *&buf[14] = v197;
          _os_log_impl(&dword_181A37000, v195, v196, "%{public}s protocol %{public}s has invalid add_input_handler callback", buf, 0x16u);
        }

        goto LABEL_401;
      }

      v198 = v80;
      if (v222[0] == 1)
      {
        v199 = __nw_create_backtrace_string();
        v200 = __nwlog_obj();
        v201 = type[0];
        v202 = os_log_type_enabled(v200, type[0]);
        if (v199)
        {
          if (v202)
          {
            v203 = "invalid";
            if (v31 && *(v31 + 16))
            {
              v203 = *(v31 + 16);
            }

            *buf = 136446722;
            *&buf[4] = "nw_protocol_http3_add_input_handler";
            *&buf[12] = 2082;
            *&buf[14] = v203;
            *&buf[22] = 2082;
            *&buf[24] = v199;
            _os_log_impl(&dword_181A37000, v200, v201, "%{public}s protocol %{public}s has invalid add_input_handler callback, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v199);
          goto LABEL_400;
        }

        v80 = v198;
        if (!v202)
        {
          goto LABEL_401;
        }

        v208 = "invalid";
        if (v31 && *(v31 + 16))
        {
          v208 = *(v31 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v208;
        v207 = "%{public}s protocol %{public}s has invalid add_input_handler callback, no backtrace";
      }

      else
      {
        v200 = __nwlog_obj();
        v201 = type[0];
        if (!os_log_type_enabled(v200, type[0]))
        {
          goto LABEL_401;
        }

        v206 = "invalid";
        if (v31 && *(v31 + 16))
        {
          v206 = *(v31 + 16);
        }

        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = v206;
        v207 = "%{public}s protocol %{public}s has invalid add_input_handler callback, backtrace limit exceeded";
      }

      _os_log_impl(&dword_181A37000, v200, v201, v207, buf, 0x16u);
LABEL_400:
      v80 = v198;
      goto LABEL_401;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v150 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v222[0] = 0;
    if (!__nwlog_fault(v150, type, v222))
    {
      goto LABEL_384;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null parameters";
      goto LABEL_383;
    }

    if (v222[0] != 1)
    {
      v151 = __nwlog_obj();
      v152 = type[0];
      if (!os_log_type_enabled(v151, type[0]))
      {
        goto LABEL_384;
      }

      *buf = 136446210;
      *&buf[4] = "nw_protocol_http3_add_input_handler";
      v153 = "%{public}s called with null parameters, backtrace limit exceeded";
      goto LABEL_383;
    }

    backtrace_string = __nw_create_backtrace_string();
    v151 = __nwlog_obj();
    v152 = type[0];
    v172 = os_log_type_enabled(v151, type[0]);
    if (backtrace_string)
    {
      if (v172)
      {
        *buf = 136446466;
        *&buf[4] = "nw_protocol_http3_add_input_handler";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v156 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
        goto LABEL_308;
      }

LABEL_309:
      free(backtrace_string);
      goto LABEL_384;
    }

    if (!v172)
    {
      goto LABEL_384;
    }

    *buf = 136446210;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    v153 = "%{public}s called with null parameters, no backtrace";
LABEL_383:
    _os_log_impl(&dword_181A37000, v151, v152, v153, buf, 0xCu);
LABEL_384:
    if (v150)
    {
      free(v150);
    }

    return 0;
  }

  if ((handle[1399] & 0x20) != 0)
  {
    return 0;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  result = os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO);
  if (result)
  {
    v16 = *(handle + 326);
    *buf = 136446978;
    *&buf[4] = "nw_protocol_http3_add_input_handler";
    *&buf[12] = 2082;
    *&buf[14] = handle + 1313;
    *&buf[22] = 2080;
    *&buf[24] = " ";
    *&buf[32] = 1024;
    *&buf[34] = v16;
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s%s<i%u> cannot add input handler to closed connection", buf, 0x26u);
    return 0;
  }

  return result;
}

void ___ZL43nw_http3_set_prohibit_joining_on_parametersP11nw_protocolP13nw_parameters_block_invoke(uint64_t a1, NSObject *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  protocol_handle = nw_protocol_options_get_protocol_handle(a2);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5 = nw_protocol_options_copy_definition(a2);
    identifier = nw_protocol_definition_get_identifier(v5);
    if (gLogDatapath == 1)
    {
      v7 = identifier;
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 40);
        v10 = "invalid";
        if (v9 && *(v9 + 16))
        {
          v10 = *(v9 + 16);
        }

        v11 = 136446978;
        v12 = "nw_http3_set_prohibit_joining_on_parameters_block_invoke";
        v13 = 2080;
        v14 = v10;
        v15 = 2048;
        v16 = v9;
        v17 = 2080;
        v18 = v7;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %s (%p) setting prohibit joining on %s", &v11, 0x2Au);
      }
    }

    if (v5)
    {
      os_release(v5);
    }

    nw_protocol_options_set_prohibit_joining(a2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if (*(a1 + 40) == protocol_handle)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t _nw_protocol_options_set_prohibit_joining(uint64_t a1, char a2)
{
  v4 = *(*a1 + 184);

  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_181D384EC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = (v1 + 16);
  *(v1 + 32) = 0;
  *(v1 + 40) = xmmword_182AE3C80;
  *(v1 + 56) = xmmword_182AE6A00;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_182AE3C90;
  *(v1 + 104) = 0xF000000000000007;
  v5 = sub_181AC9084();
  v6 = v5;
  v7 = v5[4];
  v8 = v5[3] + v7;
  if (v5[2] < v8)
  {
    v8 = v5[2];
  }

  v66 = v5;
  v67 = v7;
  v68 = v8;
  if (v7 == v8)
  {
LABEL_4:
    if (sub_181AC81FC(v5))
    {
      v6 = v66;
      v7 = v67;
      goto LABEL_6;
    }

    v26 = sub_181A54748();
    v27 = v26;
    v28 = v26[4];
    v29 = v26[3] + v28;
    if (v26[2] < v29)
    {
      v29 = v26[2];
    }

    v66 = v26;
    v67 = v28;
    v68 = v29;
    if (v28 == v29)
    {
LABEL_24:
      if (sub_181AC81FC(v26))
      {
        v27 = v66;
        v28 = v67;
        goto LABEL_26;
      }

      ProtocolStack.transport.getter(&v66);
      v46 = v67;
      if ((~v67 & 0xF000000000000007) != 0)
      {
        v47 = v2[4];
        v48 = v2[5];
        v2[4] = v66;
        v2[5] = v46;
        sub_181A5301C(v47, v48);
      }

      v49 = a1[13];
      if ((~v49 & 0xF000000000000007) != 0)
      {
        v50 = a1[12];
        v51 = v2[12];
        v52 = v2[13];
        v2[12] = v50;
        v2[13] = v49;
        sub_181AACFF4(v50, v49);
        sub_181A53008(v51, v52);
      }

      v53 = a1[11];
      if ((~v53 & 0xF000000000000007) != 0)
      {
        v54 = a1[10];
        v55 = v2[10];
        v56 = v2[11];
        v2[10] = v54;
        v2[11] = v53;
        sub_181AACFF4(v54, v53);
        sub_181A53008(v55, v56);
      }

      swift_beginAccess();
      v57 = a1[7];
      if ((~v57 & 0xF000000000000007) != 0)
      {
        v58 = a1[6];
        swift_beginAccess();
        v59 = v2[6];
        v60 = v2[7];
        v2[6] = v58;
        v2[7] = v57;
        sub_181B2C3E0(v58, v57);
        sub_181A52FE0(v59, v60);
      }

      ProtocolStack.link.getter(v65);

      if (v65[0] != 1)
      {
        v61 = v65[1];
        v62 = v2[8];
        v2[8] = v65[0];
        v2[9] = v61;
        sub_181AC3890(v62);
      }

      return v2;
    }

LABEL_26:
    while (1)
    {
      v30 = v28 + 1;
      v67 = v28 + 1;
      v31 = v27 + 16 * v28;
      v32 = *(v31 + 40);
      v33 = *(v31 + 48);
      sub_181B2C3E0(v32, v33);
      result = sub_181A54748();
      v64 = result;
      v34 = *(result + 24);
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v36 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v36[2] < v35 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v35);
        v36 = v64;
      }

      v37 = v36[3];
      v38 = v36[4];
      v21 = __OFADD__(v38, v37);
      v39 = v38 + v37;
      if (v21)
      {
        goto LABEL_56;
      }

      if (v37 < 0)
      {
        if (v39 < 0)
        {
          v43 = v36[2];
          v21 = __OFADD__(v39, v43);
          v39 += v43;
          if (v21)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        v40 = v36[2];
        v41 = __OFSUB__(v39, v40);
        v42 = v39 - v40;
        if (v42 < 0 == v41)
        {
          v39 = v42;
          if (v41)
          {
            goto LABEL_59;
          }
        }
      }

      v44 = &v36[2 * v39];
      v44[5] = v32;
      v44[6] = v33;
      v21 = __OFADD__(v37, 1);
      v45 = v37 + 1;
      if (v21)
      {
        goto LABEL_57;
      }

      v36[3] = v45;
      v2[3] = v36;

      v28 = v30;
      if (v30 == v68)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v9 = v7 + 1;
      v67 = v7 + 1;
      v10 = v6 + 16 * v7;
      v11 = *(v10 + 40);
      v12 = *(v10 + 48);
      sub_181B2C3E0(v11, v12);
      result = sub_181AC9084();
      v63 = result;
      v14 = *(result + 24);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v16 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v16[2] < v15 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v15);
        v16 = v63;
      }

      v17 = v16[3];
      v18 = v16[4];
      v21 = __OFADD__(v18, v17);
      v19 = v18 + v17;
      if (v21)
      {
        goto LABEL_53;
      }

      if (v17 < 0)
      {
        if (v19 < 0)
        {
          v23 = v16[2];
          v21 = __OFADD__(v19, v23);
          v19 += v23;
          if (v21)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v20 = v16[2];
        v21 = __OFSUB__(v19, v20);
        v22 = v19 - v20;
        if (v22 < 0 == v21)
        {
          v19 = v22;
          if (v21)
          {
            goto LABEL_58;
          }
        }
      }

      v24 = &v16[2 * v19];
      v24[5] = v11;
      v24[6] = v12;
      v21 = __OFADD__(v17, 1);
      v25 = v17 + 1;
      if (v21)
      {
        goto LABEL_54;
      }

      v16[3] = v25;
      *v4 = v16;

      v7 = v9;
      if (v9 == v68)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void nw_parameters_set_protocol_instance(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = v4;
  if (v4)
  {
    _nw_protocol_options_set_instance(v4, a3);
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_parameters_set_protocol_instance";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "nw_parameters_set_protocol_instance";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null protocol_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "nw_parameters_set_protocol_instance";
        v10 = "%{public}s called with null protocol_parameters, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

void nw_protocol_stack_replace_protocol_with_handle(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_stack_replace_protocol_with_handle";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v9, &type, &v18))
    {
      goto LABEL_34;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack";
LABEL_32:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v11 = type;
      v15 = os_log_type_enabled(v10, type);
      if (backtrace_string)
      {
        if (v15)
        {
          *buf = 136446466;
          v21 = "nw_protocol_stack_replace_protocol_with_handle";
          v22 = 2082;
          v23 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null stack, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v9);
        goto LABEL_4;
      }

      if (v15)
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v21 = "nw_protocol_stack_replace_protocol_with_handle";
        v12 = "%{public}s called with null stack, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v6)
  {
    _nw_protocol_stack_replace_protocol_with_handle(v5, a2, v6);
    goto LABEL_4;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v21 = "nw_protocol_stack_replace_protocol_with_handle";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v9, &type, &v18))
  {
    goto LABEL_34;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v18 != 1)
  {
    v10 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v10, type))
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v16 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v11 = type;
  v17 = os_log_type_enabled(v10, type);
  if (!v16)
  {
    if (v17)
    {
      *buf = 136446210;
      v21 = "nw_protocol_stack_replace_protocol_with_handle";
      v12 = "%{public}s called with null new_options, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v17)
  {
    *buf = 136446466;
    v21 = "nw_protocol_stack_replace_protocol_with_handle";
    v22 = 2082;
    v23 = v16;
    _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null new_options, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v9)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t sub_181D38F90(uint64_t a1, uint64_t a2, uint64_t ObjectType)
{
  v111 = sub_182AD2388();
  v6 = *v111;
  v121 = *v111;

  v112 = v3;
  result = sub_181AC9084();
  v8 = result;
  v9 = *(result + 32);
  v10 = *(result + 24) + v9;
  if (*(result + 16) < v10)
  {
    v10 = *(result + 16);
  }

  v118 = result;
  v119 = v9;
  v120 = v10;
  v110 = ObjectType;
  v113 = ObjectType | 0x4000000000000000;
  while (1)
  {
    if (v9 != v10)
    {
      goto LABEL_8;
    }

    if ((sub_181AC81FC(result) & 1) == 0)
    {
      break;
    }

    v8 = v118;
    v9 = v119;
LABEL_8:
    v11 = v9 + 1;
    v119 = v9 + 1;
    v12 = *(v8 + 16 * v9 + 40);
    v115 = v12;
    v13 = *(v8 + 16 * v9 + 48);
    if (*(&v12 + 1) >> 62)
    {
      if (*(&v12 + 1) >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v14(a1, ObjectType, v13 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v15 = *(v12 + 56);
      v16 = ~v15 & 0x1000000000000007;
      v17 = v15 & 0x1000000000000000;
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
      }

      else
      {
        v19 = *(v12 + 48);

        if (v19 == a1)
        {
LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
          v29 = swift_dynamicCastClass();
          if (v29)
          {
            ObjectType = v29;
          }

          else
          {
            ObjectType = a2;
          }

          if (v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = v113;
          }

          v31 = v6[3];
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_153;
          }

          swift_unknownObjectRetain();
          result = swift_isUniquelyReferenced_nonNull_native();
          if (v6[2] < v32 || (result & 1) == 0)
          {
            result = sub_181B2C3FC(result, v32);
            v6 = v121;
          }

          v33 = v6[3];
          v34 = v6[4];
          v25 = __OFADD__(v34, v33);
          v35 = v34 + v33;
          if (v25)
          {
            goto LABEL_154;
          }

          if (v33 < 0)
          {
            if (v35 < 0)
            {
              v39 = v6[2];
              v25 = __OFADD__(v35, v39);
              v35 += v39;
              if (v25)
              {
                goto LABEL_170;
              }
            }
          }

          else
          {
            v36 = v6[2];
            v37 = __OFSUB__(v35, v36);
            v38 = v35 - v36;
            if (v38 < 0 == v37)
            {
              v35 = v38;
              if (v37)
              {
                goto LABEL_168;
              }
            }
          }

          v40 = &v6[2 * v35];
          v40[5] = ObjectType;
          v40[6] = v30;
          v25 = __OFADD__(v33, 1);
          v41 = v33 + 1;
          if (v25)
          {
            goto LABEL_155;
          }

          v6[3] = v41;
          swift_unknownObjectRetain();
          sub_181AAD084(v115, v13);
          result = swift_unknownObjectRelease();
          goto LABEL_4;
        }
      }
    }

    v20 = v6[3];
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
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
      __break(1u);
      goto LABEL_122;
    }

    v6 = v121;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (v121[2] < v13 || (result & 1) == 0)
    {
      result = sub_181B2C3FC(result, v13);
      v6 = v121;
    }

    v21 = v6[3];
    v22 = v6[4];
    v25 = __OFADD__(v22, v21);
    v23 = v22 + v21;
    if (v25)
    {
      goto LABEL_117;
    }

    if (v21 < 0)
    {
      if (v23 < 0)
      {
        v27 = v6[2];
        v25 = __OFADD__(v23, v27);
        v23 += v27;
        if (v25)
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v24 = v6[2];
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (v26 < 0 == v25)
      {
        v23 = v26;
        if (v25)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
          v78 = swift_dynamicCastClass();
          swift_unknownObjectRetain();
          sub_181A53008(v6, v13);
          if (v78)
          {
            v79 = 0x8000000000000000;
          }

          else
          {
            v78 = a2;
            v79 = v110 | 0xA000000000000000;
          }

          goto LABEL_125;
        }
      }
    }

    *&v6[2 * v23 + 5] = v115;
    v25 = __OFADD__(v21, 1);
    v28 = v21 + 1;
    if (v25)
    {
      goto LABEL_118;
    }

    v6[3] = v28;
LABEL_4:
    v10 = v120;
    v9 = v11;
  }

  ObjectType = v112[2];
  v112[2] = v6;

  v42 = *v111;

  v121 = v42;
  result = sub_181A54748();
  v6 = result;
  v43 = *(result + 32);
  v44 = *(result + 24) + v43;
  if (*(result + 16) < v44)
  {
    v44 = *(result + 16);
  }

  v118 = result;
  v119 = v43;
  v120 = v44;
  while (2)
  {
    if (v43 != v44)
    {
LABEL_63:
      v46 = v43 + 1;
      v119 = v43 + 1;
      v47 = *&v6[2 * v43 + 5];
      v116 = v47;
      v48 = v6[2 * v43 + 6];
      if (*(&v47 + 1) >> 62)
      {
        if (*(&v47 + 1) >> 62 == 1)
        {
          ObjectType = *(&v47 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v49 = swift_getObjectType();
          v50 = *((v48 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          swift_unknownObjectRetain();
          if (v50(a1, v49, v48 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_84;
          }
        }
      }

      else
      {
        v51 = *(v47 + 56);
        v52 = ~v51 & 0x1000000000000007;
        v53 = v51 & 0x1000000000000000;
        if (v52)
        {
          v54 = v53 == 0;
        }

        else
        {
          v54 = 1;
        }

        if (v54)
        {
        }

        else
        {
          v55 = *(v47 + 48);

          if (v55 == a1)
          {
LABEL_84:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
            v63 = swift_dynamicCastClass();
            if (v63)
            {
              ObjectType = v63;
            }

            else
            {
              ObjectType = a2;
            }

            if (v63)
            {
              v64 = 0;
            }

            else
            {
              v64 = v113;
            }

            v65 = v42[3];
            v13 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_157;
            }

            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if (v42[2] < v13 || (result & 1) == 0)
            {
              result = sub_181B2C3FC(result, v13);
              v42 = v121;
            }

            v66 = v42[3];
            v67 = v42[4];
            v25 = __OFADD__(v67, v66);
            v68 = v67 + v66;
            if (v25)
            {
              goto LABEL_158;
            }

            if (v66 < 0)
            {
              if (v68 < 0)
              {
                v73 = v42[2];
                v25 = __OFADD__(v68, v73);
                v68 += v73;
                if (v25)
                {
                  goto LABEL_171;
                }
              }
            }

            else
            {
              v69 = v42[2];
              v70 = __OFSUB__(v68, v69);
              v71 = v68 - v69;
              if (v71 < 0 == v70)
              {
                v68 = v71;
                if (v70)
                {
                  goto LABEL_169;
                }
              }
            }

            v74 = &v42[2 * v68];
            v74[5] = ObjectType;
            v74[6] = v64;
            v25 = __OFADD__(v66, 1);
            v75 = v66 + 1;
            if (v25)
            {
              goto LABEL_159;
            }

            v42[3] = v75;
            swift_unknownObjectRetain();
            sub_181AAD084(v116, v48);
            result = swift_unknownObjectRelease();
            goto LABEL_59;
          }
        }
      }

      v56 = v42[3];
      v13 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_119;
      }

      v42 = v121;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (v121[2] < v13 || (result & 1) == 0)
      {
        result = sub_181B2C3FC(result, v13);
        v42 = v121;
      }

      v57 = v42[3];
      v58 = v42[4];
      v25 = __OFADD__(v58, v57);
      v59 = v58 + v57;
      if (v25)
      {
        goto LABEL_120;
      }

      if (v57 < 0)
      {
        if (v59 < 0)
        {
          v72 = v42[2];
          v25 = __OFADD__(v59, v72);
          v59 += v72;
          if (v25)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        v60 = v42[2];
        v61 = __OFSUB__(v59, v60);
        v62 = v59 - v60;
        if (v62 < 0 == v61)
        {
          v59 = v62;
          if (v61)
          {
            goto LABEL_156;
          }
        }
      }

      *&v42[2 * v59 + 5] = v116;
      v25 = __OFADD__(v57, 1);
      v45 = v57 + 1;
      if (v25)
      {
        goto LABEL_121;
      }

      v42[3] = v45;
LABEL_59:
      v44 = v120;
      v43 = v46;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(result))
  {
    v6 = v118;
    v43 = v119;
    goto LABEL_63;
  }

  v76 = v112;
  v112[3] = v42;

  ProtocolStack.transport.getter(&v118);
  v13 = v119;
  ObjectType = 0xF000000000000007;
  if ((~v119 & 0xF000000000000007) == 0)
  {
    goto LABEL_126;
  }

  v6 = v118;
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v6, v13);
    v76 = v112;
    goto LABEL_126;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
  v77 = swift_dynamicCastClass();
  if (v77)
  {
    v78 = v77;
    v79 = 0;
    goto LABEL_124;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  v80 = swift_dynamicCastClass();
  if (v80)
  {
    v78 = v80;
    v79 = 0x2000000000000000;
    goto LABEL_124;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v81 = swift_dynamicCastClass();
  if (v81)
  {
    v78 = v81;
    v79 = 0x4000000000000000;
    goto LABEL_124;
  }

LABEL_122:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
    goto LABEL_160;
  }

  v78 = v82;
  v79 = 0x6000000000000000;
LABEL_124:
  swift_unknownObjectRetain();
  sub_181A53008(v6, v13);
LABEL_125:
  v76 = v112;
  v83 = v112[4];
  v84 = v112[5];
  v112[4] = v78;
  v112[5] = v79;
  sub_181A5301C(v83, v84);
LABEL_126:
  v85 = v76[13];
  if ((ObjectType & ~v85) != 0)
  {
    v86 = v76[12];
    v118 = v86;
    v119 = v85;
    sub_181AACFF4(v86, v85);
    if (sub_181BACEAC(a1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
      v87 = swift_dynamicCastClass();
      if (v87)
      {
        v88 = v87;
        v89 = 0;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
      v90 = swift_dynamicCastClass();
      if (v90)
      {
        v88 = v90;
        v89 = 0x2000000000000000;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
      v91 = swift_dynamicCastClass();
      if (v91)
      {
        v88 = v91;
        v89 = 0x4000000000000000;
        goto LABEL_137;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
      v92 = swift_dynamicCastClass();
      if (v92)
      {
        v88 = v92;
        v89 = 0x6000000000000000;
LABEL_137:
        swift_unknownObjectRetain();
        sub_181A53008(v86, v85);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
        v88 = swift_dynamicCastClass();
        swift_unknownObjectRetain();
        sub_181A53008(v86, v85);
        if (v88)
        {
          v89 = 0x8000000000000000;
        }

        else
        {
          v88 = a2;
          v89 = v110 | 0xA000000000000000;
        }
      }

      v76 = v112;
      v93 = v112[12];
      v94 = v112[13];
      v112[12] = v88;
      v112[13] = v89;
      sub_181A53008(v93, v94);
    }

    else
    {
      sub_181A53008(v86, v85);
      v76 = v112;
    }
  }

  swift_beginAccess();
  v95 = v76[7];
  if ((~v95 & 0xF000000000000007) != 0)
  {
    v96 = v76[6];
    if (v95 >> 62)
    {
      if (v95 >> 62 == 1)
      {
        v97 = swift_getObjectType();
        v98 = *((v95 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        sub_181B2C3E0(v96, v95);
        v99 = v97;
        v76 = v112;
        if (v98(a1, v99, v95 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_143;
        }

LABEL_147:
        v101 = v96;
        v102 = v95;
        goto LABEL_148;
      }
    }

    else
    {
      v103 = *(v96 + 56);
      if ((~v103 & 0x1000000000000007) != 0 && (v103 & 0x1000000000000000) != 0)
      {
        v104 = *(v96 + 48);
        sub_181B2C3E0(v76[6], v76[7]);
        if (v104 != a1)
        {
          goto LABEL_147;
        }

LABEL_143:
        v100 = swift_unknownObjectRetain();
        sub_181F61FE0(v100, v110, &v117);
        sub_181A52FE0(v96, v95);
        v101 = v76[6];
        v102 = v76[7];
        *(v76 + 3) = v117;
LABEL_148:
        sub_181A52FE0(v101, v102);
      }
    }
  }

  ProtocolStack.link.getter(&v117);
  v105 = v117;
  if (v117 >= 2)
  {
    v106 = *(&v117 + 1);
    v107 = swift_getObjectType();
    v108 = (*(v106 + 56))(a1, v107, v106);
    sub_181B03DAC(v105);
    if (v108)
    {
      v109 = v76[8];
      v76[8] = a2;
      v76[9] = v110;
      swift_unknownObjectRetain();
      sub_181AC3890(v109);
    }
  }
}

uint64_t _nw_protocol_stack_replace_protocol_with_handle(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_181AA847C(a3);
  sub_181D38F90(a2, v5, v6);

  return swift_unknownObjectRelease();
}

id nw_http_messaging_options_copy_transaction_metadata(void *a1)
{
  v1 = a1;
  v2 = nw_protocol_copy_http_messaging_definition_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
  }

  v4 = nw_protocol_options_matches_definition(v3, nw_protocol_copy_http_messaging_definition_definition);

  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__75915;
    v12 = __Block_byref_object_dispose__75916;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __nw_http_messaging_options_copy_transaction_metadata_block_invoke;
    v7[3] = &unk_1E6A3A858;
    v7[4] = &v8;
    nw_protocol_options_access_handle(v3, v7);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_181D39BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http_transaction_initialize_metadata(uint64_t a1, uint64_t a2)
{
  result = mach_continuous_time();
  if (result <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  *(a2 + 48) = v4;
  *(a2 + 96) = -1;
  *(a2 + 156) = 0;
  return result;
}

void nw_http_transaction_metadata_set_first_on_connection(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v3 = __nwlog_obj();
    *buf = 136446210;
    v16 = "nw_http_transaction_metadata_set_first_on_connection";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v13 = 0;
    if (!__nwlog_fault(v4, &type, &v13))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata";
LABEL_35:
        _os_log_impl(&dword_181A37000, v5, v6, v7, buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v6 = type;
      v10 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v16 = "nw_http_transaction_metadata_set_first_on_connection";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_37:
        if (!v4)
        {
          goto LABEL_7;
        }

LABEL_38:
        free(v4);
        goto LABEL_7;
      }

      if (v10)
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_35;
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v16 = "nw_http_transaction_metadata_set_first_on_connection";
        v7 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v1, nw_protocol_copy_http_transaction_definition_definition))
  {
    handle = _nw_protocol_metadata_get_handle(v1);
    if (handle)
    {
      __nw_http_transaction_metadata_set_first_on_connection_block_invoke(&__block_literal_global_104, handle);
    }

    goto LABEL_7;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_http_transaction_metadata_set_first_on_connection";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (!__nwlog_fault(v4, &type, &v13))
  {
    goto LABEL_37;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v13 != 1)
  {
    v5 = __nwlog_obj();
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  v11 = __nw_create_backtrace_string();
  v5 = __nwlog_obj();
  v6 = type;
  v12 = os_log_type_enabled(v5, type);
  if (!v11)
  {
    if (v12)
    {
      *buf = 136446210;
      v16 = "nw_http_transaction_metadata_set_first_on_connection";
      v7 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v12)
  {
    *buf = 136446466;
    v16 = "nw_http_transaction_metadata_set_first_on_connection";
    v17 = 2082;
    v18 = v11;
    _os_log_impl(&dword_181A37000, v5, v6, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v11);
  if (v4)
  {
    goto LABEL_38;
  }

LABEL_7:
}

void nw_http_transaction_metadata_set_connection_metadata(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v23 = "nw_http_transaction_metadata_set_connection_metadata";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata";
LABEL_36:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v20 == 1)
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
          v23 = "nw_http_transaction_metadata_set_connection_metadata";
          v24 = 2082;
          v25 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_39:
        free(v7);
        goto LABEL_8;
      }

      if (v13)
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v23 = "nw_http_transaction_metadata_set_connection_metadata";
        v10 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (nw_protocol_copy_http_transaction_definition_onceToken != -1)
  {
    dispatch_once(&nw_protocol_copy_http_transaction_definition_onceToken, &__block_literal_global_98);
  }

  if (nw_protocol_metadata_matches_definition(v3, nw_protocol_copy_http_transaction_definition_definition))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __nw_http_transaction_metadata_set_connection_metadata_block_invoke;
    v18 = &unk_1E6A3A950;
    v19 = v4;
    handle = _nw_protocol_metadata_get_handle(v3);
    if (handle)
    {
      v17(v16, handle);
    }

    goto LABEL_8;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v23 = "nw_http_transaction_metadata_set_connection_metadata";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v9 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction, backtrace limit exceeded";
      goto LABEL_36;
    }

    goto LABEL_37;
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
      v23 = "nw_http_transaction_metadata_set_connection_metadata";
      v10 = "%{public}s metadata must be http_transaction, no backtrace";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    *buf = 136446466;
    v23 = "nw_http_transaction_metadata_set_connection_metadata";
    v24 = 2082;
    v25 = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s metadata must be http_transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v14);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_8:
}

uint64_t __nw_http_transaction_metadata_set_connection_metadata_block_invoke(uint64_t a1, os_unfair_lock_s *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __nw_http_transaction_metadata_set_connection_metadata_block_invoke_2;
  v4[3] = &unk_1E6A3AC58;
  v6 = a2;
  v5 = *(a1 + 32);
  os_unfair_lock_lock(a2 + 39);
  __nw_http_transaction_metadata_set_connection_metadata_block_invoke_2(v4);
  os_unfair_lock_unlock(a2 + 39);

  return 1;
}

void nw_http3_stream_replace_protocol_instance(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream";
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v25 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v35 = "nw_http3_stream_replace_protocol_instance";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null http3_stream, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_68:
        if (!v12)
        {
          return;
        }

        goto LABEL_69;
      }

      if (!v25)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream, no backtrace";
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null http3_stream, backtrace limit exceeded";
    }

    goto LABEL_67;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_68;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v32 != 1)
      {
        v13 = __nwlog_obj();
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        v35 = "nw_http3_stream_replace_protocol_instance";
        v15 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_67;
      }

      v26 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = type;
      v27 = os_log_type_enabled(v13, type);
      if (!v26)
      {
        if (!v27)
        {
          goto LABEL_68;
        }

        *buf = 136446210;
        v35 = "nw_http3_stream_replace_protocol_instance";
        v15 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_67;
      }

      if (v27)
      {
        *buf = 136446466;
        v35 = "nw_http3_stream_replace_protocol_instance";
        v36 = 2082;
        v37 = v26;
        v28 = "%{public}s called with null parameters, dumping backtrace:%{public}s";
LABEL_45:
        _os_log_impl(&dword_181A37000, v13, v14, v28, buf, 0x16u);
      }

LABEL_46:
      free(v26);
      if (!v12)
      {
        return;
      }

LABEL_69:
      free(v12);
      return;
    }

    v13 = __nwlog_obj();
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_68;
    }

    *buf = 136446210;
    v35 = "nw_http3_stream_replace_protocol_instance";
    v15 = "%{public}s called with null parameters";
LABEL_67:
    _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
    goto LABEL_68;
  }

  if (!a4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_http3_stream_replace_protocol_instance";
    v12 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v12, &type, &v32))
    {
      goto LABEL_68;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance";
      goto LABEL_67;
    }

    if (v32 != 1)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (!os_log_type_enabled(v13, type))
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance, backtrace limit exceeded";
      goto LABEL_67;
    }

    v26 = __nw_create_backtrace_string();
    v13 = __nwlog_obj();
    v14 = type;
    v29 = os_log_type_enabled(v13, type);
    if (!v26)
    {
      if (!v29)
      {
        goto LABEL_68;
      }

      *buf = 136446210;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v15 = "%{public}s called with null new_instance, no backtrace";
      goto LABEL_67;
    }

    if (v29)
    {
      *buf = 136446466;
      v35 = "nw_http3_stream_replace_protocol_instance";
      v36 = 2082;
      v37 = v26;
      v28 = "%{public}s called with null new_instance, dumping backtrace:%{public}s";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v9 = _nw_parameters_copy_protocol_options_with_level(v7, a3);

    if (v9)
    {
      if ((*(a1 + 732) & 0x2000) == 0 && gLogDatapath == 1)
      {
        v21 = __nwlog_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*(a1 + 344) + 1304);
          v23 = *(a1 + 240);
          *buf = 136448514;
          v35 = "nw_http3_stream_replace_protocol_instance";
          v36 = 2082;
          v37 = (a1 + 632);
          v38 = 2080;
          v39 = " ";
          v40 = 1024;
          v41 = v22;
          v42 = 2048;
          v43 = v23;
          v44 = 2048;
          v45 = a1;
          v46 = 2048;
          v47 = a4;
          v48 = 2048;
          v49 = a3;
          v50 = 2048;
          v51 = v8;
          v52 = 2048;
          v53 = v9;
          _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s%s<i%u:s%llu> http3_stream protocol %p, set protocol instance to %p instead of %p in parameters %p options %p", buf, 0x62u);
        }
      }

      if (nw_protocol_copy_http3_definition_onceToken != -1)
      {
        dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
      }

      v10 = nw_protocol_copy_http3_definition_http3_definition;
      v11 = v9;
      _nw_protocol_options_set_instance(v11, a4);

      if (v10)
      {
        os_release(v10);
      }

      os_release(v11);
    }

    return;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v35 = "nw_parameters_copy_protocol_options_legacy";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v17, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "nw_parameters_copy_protocol_options_legacy";
        v20 = "%{public}s called with null protocol_handle";
LABEL_72:
        _os_log_impl(&dword_181A37000, v18, v19, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        v19 = type;
        v31 = os_log_type_enabled(v18, type);
        if (v30)
        {
          if (v31)
          {
            *buf = 136446466;
            v35 = "nw_parameters_copy_protocol_options_legacy";
            v36 = 2082;
            v37 = v30;
            _os_log_impl(&dword_181A37000, v18, v19, "%{public}s called with null protocol_handle, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v30);
          goto LABEL_74;
        }

        if (!v31)
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v35 = "nw_parameters_copy_protocol_options_legacy";
        v20 = "%{public}s called with null protocol_handle, no backtrace";
        goto LABEL_72;
      }

      v18 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v35 = "nw_parameters_copy_protocol_options_legacy";
        v20 = "%{public}s called with null protocol_handle, backtrace limit exceeded";
        goto LABEL_72;
      }
    }

LABEL_73:
  }

LABEL_74:
  if (v17)
  {
    free(v17);
  }
}

uint64_t nw_http3_get_stream_mode(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    stream_mode = nw_http3_get_stream_mode();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_stream_mode_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    stream_mode = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_stream_mode";
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
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_stream_mode";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_stream_mode";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  stream_mode = 0;
LABEL_5:

  return stream_mode;
}

void sub_181D3B1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_protocol_options_is_http_messaging(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http_messaging_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http_messaging_definition_onceToken, &__block_literal_global_94);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http_messaging_definition_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http_messaging";
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
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options";
LABEL_19:
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
            v14 = "nw_protocol_options_is_http_messaging";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http_messaging";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_protocol_options_is_http3(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    if (nw_protocol_copy_http3_definition_onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_http3_definition_onceToken, &__block_literal_global_14_76056);
    }

    v2 = nw_protocol_options_matches_definition(v1, nw_protocol_copy_http3_definition_http3_definition);
    goto LABEL_5;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_protocol_options_is_http3";
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
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options";
LABEL_19:
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
            v14 = "nw_protocol_options_is_http3";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null options, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (!v10)
        {
          goto LABEL_20;
        }

        *buf = 136446210;
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options, no backtrace";
        goto LABEL_19;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v14 = "nw_protocol_options_is_http3";
        v8 = "%{public}s called with null options, backtrace limit exceeded";
        goto LABEL_19;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (v5)
  {
    free(v5);
  }

  v2 = 0;
LABEL_5:

  return v2;
}

uint64_t nw_http3_get_webtransport_session_id(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    webtransport_session_id = nw_http3_get_webtransport_session_id();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = -1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_webtransport_session_id_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    webtransport_session_id = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_webtransport_session_id";
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
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_webtransport_session_id";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_webtransport_session_id";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  webtransport_session_id = -1;
LABEL_5:

  return webtransport_session_id;
}

void sub_181D3BAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void nw_protocol_establishment_report_set_client_accurate_ecn_state(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[6] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
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
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_client_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

id nw_path_flow_registration_copy_endpoint(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_path_flow_registration_copy_endpoint";
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
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null flow_registration", buf, 0xCu);
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
          v19 = "nw_path_flow_registration_copy_endpoint";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_endpoint";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void nw_protocol_establishment_report_set_server_accurate_ecn_state(void *a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[7] = a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
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
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_server_accurate_ecn_state";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

void nw_protocol_establishment_report_set_l4s_enabled(void *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v3[40] = v3[40] & 0xFE | a2;
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_protocol_establishment_report_set_l4s_enabled";
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
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null report", buf, 0xCu);
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
          v15 = "nw_protocol_establishment_report_set_l4s_enabled";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null report, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_protocol_establishment_report_set_l4s_enabled";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null report, backtrace limit exceeded", buf, 0xCu);
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

id nw_path_flow_registration_copy_parameters(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = nw_path_flow_registration_copy_parent_evaluator(v1);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 1);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    goto LABEL_6;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_path_flow_registration_copy_parameters";
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
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null flow_registration", buf, 0xCu);
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
          v19 = "nw_path_flow_registration_copy_parameters";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_23;
      }

      if (v14)
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null flow_registration, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v19 = "nw_path_flow_registration_copy_parameters";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null flow_registration, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_23:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

NWConcrete_nw_protocol_instance_stub *nw_protocol_instance_stub_create(nw_protocol *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [NWConcrete_nw_protocol_instance_stub alloc];
  if (!result)
  {
    return result;
  }

  v13.receiver = result;
  v13.super_class = NWConcrete_nw_protocol_instance_stub;
  result = [(nw_protocol *)&v13 init];
  if (result)
  {
    result->protocol = a1;
    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
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
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [super init] failed", buf, 0xCu);
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
          v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v9)
      {
        *buf = 136446210;
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v15 = "[NWConcrete_nw_protocol_instance_stub initWithProtocol:]";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v4)
  {
    free(v4);
  }

  return 0;
}

BOOL nw_path_has_flows(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = _nw_path_copy_flows(v1);
    v4 = v3 != 0;

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "nw_path_has_flows";
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
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null path", buf, 0xCu);
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
          v17 = "nw_path_has_flows";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null path, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "nw_path_has_flows";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null path, backtrace limit exceeded", buf, 0xCu);
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

  return v4;
}

uint64_t nw_path_has_proxy_config(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      has_proxy_config = _nw_path_has_proxy_config(v3, v4);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null proxy_config", buf, 0xCu);
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null proxy_config, backtrace limit exceeded", buf, 0xCu);
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null proxy_config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v24 = "nw_path_has_proxy_config";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null proxy_config, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
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
          v24 = "nw_path_has_proxy_config";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null path, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v24 = "nw_path_has_proxy_config";
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

  has_proxy_config = 0;
LABEL_4:

  return has_proxy_config;
}

uint64_t _nw_path_has_proxy_config(char *a1, void *a2)
{
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_182266ACC(a1, a2);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t nw_http3_get_idle_timeout(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    idle_timeout = nw_http3_get_idle_timeout();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_idle_timeout_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    idle_timeout = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_idle_timeout";
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
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_idle_timeout";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_idle_timeout";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  idle_timeout = 0;
LABEL_5:

  return idle_timeout;
}

void sub_181D3D638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_keepalive_mode(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    keepalive_mode = nw_http3_get_keepalive_mode();

    goto LABEL_14;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __nw_http3_get_keepalive_mode_block_invoke;
    v14[3] = &unk_1E6A3A858;
    v14[4] = buf;
    nw_protocol_options_access_handle(v1, v14);
    v4 = *&buf[8];
    if (*(*&buf[8] + 24) == 1)
    {
      if (nw_utilities_get_self_is_daemon::onceToken != -1)
      {
        dispatch_once(&nw_utilities_get_self_is_daemon::onceToken, &__block_literal_global_49);
      }

      if (nw_utilities_get_self_is_daemon::is_daemon)
      {
        if (nw_http3_self_is_media_daemon_onceToken != -1)
        {
          dispatch_once(&nw_http3_self_is_media_daemon_onceToken, &__block_literal_global_136);
        }

        v4 = *&buf[8];
        if ((nw_http3_self_is_media_daemon_is_media_daemon & 1) == 0)
        {
          *(*&buf[8] + 24) = 2;
        }
      }

      else
      {
        v4 = *&buf[8];
      }
    }

    keepalive_mode = *(v4 + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_14;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_keepalive_mode";
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
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_keepalive_mode";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_31;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_keepalive_mode";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_31:
  if (v7)
  {
    free(v7);
  }

  keepalive_mode = 0;
LABEL_14:

  return keepalive_mode;
}

void sub_181D3DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nw_http3_get_0rtt_enabled(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (nw_protocol_options_is_http_messaging(v1))
  {
    v2 = nw_http_messaging_options_copy_http3_options(v1);
    _0rtt_enabled = nw_http3_get_0rtt_enabled();

    goto LABEL_5;
  }

  if (nw_protocol_options_is_http3(v1))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_http3_get_0rtt_enabled_block_invoke;
    v13[3] = &unk_1E6A3A858;
    v13[4] = buf;
    nw_protocol_options_access_handle(v1, v13);
    _0rtt_enabled = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    goto LABEL_5;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_http3_get_0rtt_enabled";
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
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null nw_protocol_options_is_http3(options)", buf, 0xCu);
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
          *&buf[4] = "nw_http3_get_0rtt_enabled";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_22;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null nw_protocol_options_is_http3(options), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http3_get_0rtt_enabled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null nw_protocol_options_is_http3(options), backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_22:
  if (v6)
  {
    free(v6);
  }

  _0rtt_enabled = 0;
LABEL_5:

  return _0rtt_enabled & 1;
}
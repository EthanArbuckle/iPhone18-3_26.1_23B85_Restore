@interface NWConcrete_nw_socks5_server
- (NSString)description;
- (id)initWithParameters:(void *)parameters clientQueue:;
- (void)dealloc;
@end

@implementation NWConcrete_nw_socks5_server

- (NSString)description
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v4 = __nwlog_obj();
    *cStr = 136446210;
    *&cStr[4] = "nw_socks5_server_copy_description";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v12 = 0;
    if (!__nwlog_fault(v5, &type, &v12))
    {
      goto LABEL_22;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *cStr = 136446210;
        *&cStr[4] = "nw_socks5_server_copy_description";
        v8 = "%{public}s called with null server";
LABEL_20:
        _os_log_impl(&dword_181A37000, v6, v7, v8, cStr, 0xCu);
      }
    }

    else
    {
      if (v12 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v6 = __nwlog_obj();
        v7 = type;
        v10 = os_log_type_enabled(v6, type);
        if (backtrace_string)
        {
          if (v10)
          {
            *cStr = 136446466;
            *&cStr[4] = "nw_socks5_server_copy_description";
            v15 = 2082;
            v16 = backtrace_string;
            _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null server, dumping backtrace:%{public}s", cStr, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v10)
        {
          goto LABEL_21;
        }

        *cStr = 136446210;
        *&cStr[4] = "nw_socks5_server_copy_description";
        v8 = "%{public}s called with null server, no backtrace";
        goto LABEL_20;
      }

      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *cStr = 136446210;
        *&cStr[4] = "nw_socks5_server_copy_description";
        v8 = "%{public}s called with null server, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:

LABEL_22:
    if (v5)
    {
      free(v5);
    }

    goto LABEL_24;
  }

  *cStr = 0;
  if (*(self + 136))
  {
    v2 = "SHOES";
  }

  else
  {
    v2 = "SOCKS";
  }

  asprintf(cStr, "[SP%llu %s]", self->ss_id, v2);
  if (*cStr)
  {
    v3 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], *cStr, 0x8000100u, *MEMORY[0x1E695E488]);
    goto LABEL_25;
  }

LABEL_24:
  v3 = 0;
LABEL_25:

  return v3;
}

- (void)dealloc
{
  v34 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v27 = "[NWConcrete_nw_socks5_server dealloc]";
    v28 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_INFO, "%{public}s %{public}@", buf, 0x16u);
  }

  ss_assertion = self->ss_assertion;
  if (ss_assertion)
  {
    IOPMAssertionRelease(ss_assertion);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->ss_assertion;
      ss_assertion_toggle_mach_time = self->ss_assertion_toggle_mach_time;
      v8 = mach_continuous_time();
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = nw_delta_nanos(ss_assertion_toggle_mach_time, v9);
      v27 = "[NWConcrete_nw_socks5_server dealloc]";
      v28 = 2112;
      *buf = 136446978;
      selfCopy2 = self;
      v30 = 1024;
      v31 = v6;
      v32 = 2048;
      v33 = v10 / 0x3B9ACA00;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %@ released power assertion: %u after %llus", buf, 0x26u);
    }

    self->ss_assertion = 0;
  }

  if (self->ss_internally_retained_object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    *buf = 136446210;
    v27 = "[NWConcrete_nw_socks5_server dealloc]";
    v22 = 12;
    v21 = buf;
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (__nwlog_fault(v12, &type, &v24))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v27 = "[NWConcrete_nw_socks5_server dealloc]";
        v15 = "%{public}s over-release of nw_socks5_server. Object should not be internally retained while deallocating";
LABEL_25:
        v19 = v13;
        v20 = v14;
        goto LABEL_26;
      }

      if (v24 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type;
        if (!os_log_type_enabled(v13, type))
        {
          goto LABEL_27;
        }

        *buf = 136446210;
        v27 = "[NWConcrete_nw_socks5_server dealloc]";
        v15 = "%{public}s over-release of nw_socks5_server. Object should not be internally retained while deallocating, backtrace limit exceeded";
        goto LABEL_25;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v13, type);
      if (!backtrace_string)
      {
        if (!v18)
        {
LABEL_27:

          if (!v12)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446210;
        v27 = "[NWConcrete_nw_socks5_server dealloc]";
        v15 = "%{public}s over-release of nw_socks5_server. Object should not be internally retained while deallocating, no backtrace";
        v19 = v13;
        v20 = v17;
LABEL_26:
        _os_log_impl(&dword_181A37000, v19, v20, v15, buf, 0xCu);
        goto LABEL_27;
      }

      if (v18)
      {
        *buf = 136446466;
        v27 = "[NWConcrete_nw_socks5_server dealloc]";
        v28 = 2082;
        selfCopy2 = backtrace_string;
        _os_log_impl(&dword_181A37000, v13, v17, "%{public}s over-release of nw_socks5_server. Object should not be internally retained while deallocating, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (v12)
    {
LABEL_21:
      free(v12);
    }
  }

LABEL_22:
  v23.receiver = self;
  v23.super_class = NWConcrete_nw_socks5_server;
  [(NWConcrete_nw_socks5_server *)&v23 dealloc:v21];
}

- (id)initWithParameters:(void *)parameters clientQueue:
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = a2;
  parametersCopy = parameters;
  if (!self)
  {
LABEL_106:
    v23 = 0;
    goto LABEL_71;
  }

  v59.receiver = self;
  v59.super_class = NWConcrete_nw_socks5_server;
  v7 = objc_msgSendSuper2(&v59, sel_init);
  if (!v7)
  {
    v50 = __nwlog_obj();
    *label = 136446210;
    *&label[4] = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
    v51 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v51, buf, &type))
    {
      goto LABEL_104;
    }

    if (buf[0] == 17)
    {
      v52 = __nwlog_obj();
      v53 = buf[0];
      if (os_log_type_enabled(v52, buf[0]))
      {
        *label = 136446210;
        *&label[4] = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v54 = "%{public}s [super init] failed";
LABEL_102:
        _os_log_impl(&dword_181A37000, v52, v53, v54, label, 0xCu);
      }
    }

    else
    {
      if (type == OS_LOG_TYPE_INFO)
      {
        backtrace_string = __nw_create_backtrace_string();
        v52 = __nwlog_obj();
        v53 = buf[0];
        v56 = os_log_type_enabled(v52, buf[0]);
        if (backtrace_string)
        {
          if (v56)
          {
            *label = 136446466;
            *&label[4] = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
            *&label[12] = 2082;
            *&label[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v52, v53, "%{public}s [super init] failed, dumping backtrace:%{public}s", label, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_104;
        }

        if (!v56)
        {
          goto LABEL_103;
        }

        *label = 136446210;
        *&label[4] = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v54 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_102;
      }

      v52 = __nwlog_obj();
      v53 = buf[0];
      if (os_log_type_enabled(v52, buf[0]))
      {
        *label = 136446210;
        *&label[4] = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v54 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_102;
      }
    }

LABEL_103:

LABEL_104:
    if (v51)
    {
      free(v51);
    }

    goto LABEL_106;
  }

  v8 = v7;
  v7[1] = atomic_fetch_add(&s_last_server_id, 1uLL);
  *(v7 + 6) = 0;
  strcpy(label, "com.apple.networking.nw_socks5_server");
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(label, v9);
  v11 = *(v8 + 4);
  *(v8 + 4) = v10;

  if (*(v8 + 4))
  {
    v12 = _nw_parameters_create();
    v13 = v12;
    if (v12)
    {
      _nw_parameters_set_data_mode(v12, 2);
      _nw_parameters_set_tfo(v13, 1);
      _nw_parameters_set_fast_open_force_enable(v13, 1);
      if (v5)
      {
        v14 = _nw_parameters_copy(v5);
        v15 = *(v8 + 5);
        *(v8 + 5) = v14;

        if (!*(v8 + 5))
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v44 = gLogObj;
          *buf = 136446210;
          v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
          v30 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v57 = 0;
          if (!__nwlog_fault(v30, &type, &v57))
          {
            goto LABEL_66;
          }

          if (type == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = type;
            if (!os_log_type_enabled(v31, type))
            {
              goto LABEL_80;
            }

            *buf = 136446210;
            v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
            v33 = "%{public}s nw_parameters_copy failed";
            goto LABEL_78;
          }

          if (v57 != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v31 = gLogObj;
            v32 = type;
            if (!os_log_type_enabled(v31, type))
            {
              goto LABEL_80;
            }

            *buf = 136446210;
            v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
            v33 = "%{public}s nw_parameters_copy failed, backtrace limit exceeded";
            goto LABEL_78;
          }

          v37 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v31 = gLogObj;
          v38 = type;
          v46 = os_log_type_enabled(v31, type);
          if (v37)
          {
            if (v46)
            {
              *buf = 136446466;
              v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
              v62 = 2082;
              v63 = v37;
              v40 = "%{public}s nw_parameters_copy failed, dumping backtrace:%{public}s";
              goto LABEL_64;
            }

            goto LABEL_65;
          }

          if (v46)
          {
            *buf = 136446210;
            v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
            v33 = "%{public}s nw_parameters_copy failed, no backtrace";
            goto LABEL_88;
          }

          goto LABEL_80;
        }

        v16 = _nw_parameters_copy_local_endpoint(v5);
        if (v16)
        {
          _nw_parameters_set_local_endpoint(v13, v16);
        }

        v17 = _nw_parameters_copy_required_interface(v5);
        if (v17)
        {
          nw_parameters_require_interface(v13, v17);
        }

        required_interface_subtype = _nw_parameters_get_required_interface_subtype(v5);
        if (required_interface_subtype)
        {
          _nw_parameters_set_required_interface_subtype(v13, required_interface_subtype);
        }

        if (_nw_parameters_get_always_open_listener_socket(v5))
        {
          _nw_parameters_set_always_open_listener_socket(v13, 1);
        }

        if (_nw_parameters_get_use_awdl(v5))
        {
          _nw_parameters_set_use_awdl(v13, 1);
        }
      }

      v19 = nw_listener_create(v13);
      v20 = *(v8 + 9);
      *(v8 + 9) = v19;

      if (*(v8 + 9))
      {
        objc_storeStrong(v8 + 6, parameters);
        v21 = _nw_array_create();
        v22 = *(v8 + 10);
        *(v8 + 10) = v21;

        v23 = v8;
LABEL_69:

        goto LABEL_70;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v41 = gLogObj;
      *buf = 136446210;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v30 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v30, &type, &v57))
      {
LABEL_66:
        if (!v30)
        {
LABEL_68:
          v23 = 0;
          goto LABEL_69;
        }

LABEL_67:
        free(v30);
        goto LABEL_68;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_listener_create failed";
        goto LABEL_78;
      }

      if (v57 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_listener_create failed, backtrace limit exceeded";
        goto LABEL_78;
      }

      v37 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v38 = type;
      v45 = os_log_type_enabled(v31, type);
      if (v37)
      {
        if (v45)
        {
          *buf = 136446466;
          v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
          v62 = 2082;
          v63 = v37;
          v40 = "%{public}s nw_listener_create failed, dumping backtrace:%{public}s";
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      if (v45)
      {
        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_listener_create failed, no backtrace";
        goto LABEL_88;
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v29 = gLogObj;
      *buf = 136446210;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v30 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v30, &type, &v57))
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_parameters_create failed";
LABEL_78:
        v48 = v31;
        v49 = v32;
LABEL_79:
        _os_log_impl(&dword_181A37000, v48, v49, v33, buf, 0xCu);
        goto LABEL_80;
      }

      if (v57 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v31 = gLogObj;
        v32 = type;
        if (!os_log_type_enabled(v31, type))
        {
          goto LABEL_80;
        }

        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_parameters_create failed, backtrace limit exceeded";
        goto LABEL_78;
      }

      v37 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v31 = gLogObj;
      v38 = type;
      v39 = os_log_type_enabled(v31, type);
      if (v37)
      {
        if (v39)
        {
          *buf = 136446466;
          v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
          v62 = 2082;
          v63 = v37;
          v40 = "%{public}s nw_parameters_create failed, dumping backtrace:%{public}s";
LABEL_64:
          _os_log_impl(&dword_181A37000, v31, v38, v40, buf, 0x16u);
        }

LABEL_65:

        free(v37);
        goto LABEL_66;
      }

      if (v39)
      {
        *buf = 136446210;
        v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
        v33 = "%{public}s nw_parameters_create failed, no backtrace";
LABEL_88:
        v48 = v31;
        v49 = v38;
        goto LABEL_79;
      }
    }

LABEL_80:

    if (!v30)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  *buf = 136446210;
  v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
  v25 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v57 = 0;
  if (__nwlog_fault(v25, &type, &v57))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v28 = "%{public}s dispatch_queue_create failed";
LABEL_46:
      v42 = v26;
      v43 = v27;
      goto LABEL_47;
    }

    if (v57 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (!os_log_type_enabled(v26, type))
      {
        goto LABEL_48;
      }

      *buf = 136446210;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v28 = "%{public}s dispatch_queue_create failed, backtrace limit exceeded";
      goto LABEL_46;
    }

    v34 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v26 = gLogObj;
    v35 = type;
    v36 = os_log_type_enabled(v26, type);
    if (!v34)
    {
      if (!v36)
      {
LABEL_48:

        if (!v25)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      *buf = 136446210;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v28 = "%{public}s dispatch_queue_create failed, no backtrace";
      v42 = v26;
      v43 = v35;
LABEL_47:
      _os_log_impl(&dword_181A37000, v42, v43, v28, buf, 0xCu);
      goto LABEL_48;
    }

    if (v36)
    {
      *buf = 136446466;
      v61 = "[NWConcrete_nw_socks5_server initWithParameters:clientQueue:]";
      v62 = 2082;
      v63 = v34;
      _os_log_impl(&dword_181A37000, v26, v35, "%{public}s dispatch_queue_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v34);
  }

  if (v25)
  {
LABEL_34:
    free(v25);
  }

LABEL_35:
  v23 = 0;
LABEL_70:

LABEL_71:
  return v23;
}

@end
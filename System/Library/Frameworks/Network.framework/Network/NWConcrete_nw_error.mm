@interface NWConcrete_nw_error
- (NSString)description;
- (_DWORD)initWithDomain:(int)domain code:;
@end

@implementation NWConcrete_nw_error

- (NSString)description
{
  *&v44[61] = *MEMORY[0x1E69E9840];
  domain = self->domain;
  if (domain > 1)
  {
    if (domain == 2)
    {
      string_for_dns_service_error = nwlog_get_string_for_dns_service_error(self->code);
      v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"DNS Error: %s", string_for_dns_service_error);
      if (v9)
      {
        goto LABEL_24;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      *__strerrbuf = 136446210;
      v42 = "[NWConcrete_nw_error description]";
      v11 = _os_log_send_and_compose_impl();

      buf[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v11, buf, &type))
      {
        if (buf[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v13 = buf[0];
          if (os_log_type_enabled(v12, buf[0]))
          {
            *__strerrbuf = 136446210;
            v42 = "[NWConcrete_nw_error description]";
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s CFStringCreateWithFormat failed", __strerrbuf, 0xCu);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          backtrace_string = __nw_create_backtrace_string();
          v12 = __nwlog_obj();
          v20 = buf[0];
          v21 = os_log_type_enabled(v12, buf[0]);
          if (backtrace_string)
          {
            if (v21)
            {
              *__strerrbuf = 136446466;
              v42 = "[NWConcrete_nw_error description]";
              v43 = 2082;
              *v44 = backtrace_string;
              _os_log_impl(&dword_181A37000, v12, v20, "%{public}s CFStringCreateWithFormat failed, dumping backtrace:%{public}s", __strerrbuf, 0x16u);
            }

            free(backtrace_string);
            if (!v11)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          if (v21)
          {
            *__strerrbuf = 136446210;
            v42 = "[NWConcrete_nw_error description]";
            _os_log_impl(&dword_181A37000, v12, v20, "%{public}s CFStringCreateWithFormat failed, no backtrace", __strerrbuf, 0xCu);
          }
        }

        else
        {
          v12 = __nwlog_obj();
          v29 = buf[0];
          if (os_log_type_enabled(v12, buf[0]))
          {
            *__strerrbuf = 136446210;
            v42 = "[NWConcrete_nw_error description]";
            _os_log_impl(&dword_181A37000, v12, v29, "%{public}s CFStringCreateWithFormat failed, backtrace limit exceeded", __strerrbuf, 0xCu);
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (domain != 3)
      {
        if (domain == 4)
        {
          v3 = @"Wi-Fi Aware";
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_67;
      }

      v9 = SecCopyErrorMessageString(self->code, 0);
      if (v9)
      {
LABEL_24:
        v3 = v9;
        goto LABEL_67;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      code = self->code;
      *__strerrbuf = 136446466;
      v42 = "[NWConcrete_nw_error description]";
      v43 = 1024;
      *v44 = code;
      v11 = _os_log_send_and_compose_impl();

      buf[0] = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v11, buf, &type))
      {
        if (buf[0] == 17)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v12 = gLogObj;
          v17 = buf[0];
          if (os_log_type_enabled(v12, buf[0]))
          {
            v18 = self->code;
            *__strerrbuf = 136446466;
            v42 = "[NWConcrete_nw_error description]";
            v43 = 1024;
            *v44 = v18;
            _os_log_impl(&dword_181A37000, v12, v17, "%{public}s SecCopyErrorMessageString(%d, NULL) failed", __strerrbuf, 0x12u);
          }
        }

        else if (type == OS_LOG_TYPE_INFO)
        {
          v22 = __nw_create_backtrace_string();
          v12 = __nwlog_obj();
          v23 = buf[0];
          v24 = os_log_type_enabled(v12, buf[0]);
          if (v22)
          {
            if (v24)
            {
              v25 = self->code;
              *__strerrbuf = 136446722;
              v42 = "[NWConcrete_nw_error description]";
              v43 = 1024;
              *v44 = v25;
              v44[2] = 2082;
              *&v44[3] = v22;
              _os_log_impl(&dword_181A37000, v12, v23, "%{public}s SecCopyErrorMessageString(%d, NULL) failed, dumping backtrace:%{public}s", __strerrbuf, 0x1Cu);
            }

            free(v22);
            if (!v11)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          if (v24)
          {
            v33 = self->code;
            *__strerrbuf = 136446466;
            v42 = "[NWConcrete_nw_error description]";
            v43 = 1024;
            *v44 = v33;
            _os_log_impl(&dword_181A37000, v12, v23, "%{public}s SecCopyErrorMessageString(%d, NULL) failed, no backtrace", __strerrbuf, 0x12u);
          }
        }

        else
        {
          v12 = __nwlog_obj();
          v30 = buf[0];
          if (os_log_type_enabled(v12, buf[0]))
          {
            v31 = self->code;
            *__strerrbuf = 136446466;
            v42 = "[NWConcrete_nw_error description]";
            v43 = 1024;
            *v44 = v31;
            _os_log_impl(&dword_181A37000, v12, v30, "%{public}s SecCopyErrorMessageString(%d, NULL) failed, backtrace limit exceeded", __strerrbuf, 0x12u);
          }
        }

LABEL_63:
      }
    }

    if (!v11)
    {
LABEL_66:
      v3 = 0;
      goto LABEL_67;
    }

LABEL_65:
    free(v11);
    goto LABEL_66;
  }

  if (!domain)
  {
    v3 = @"Invalid";
    goto LABEL_67;
  }

  if (domain != 1)
  {
    goto LABEL_66;
  }

  if (strerror_r(self->code, __strerrbuf, 0x80uLL))
  {
    __strerrbuf[0] = 0;
  }

  v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], __strerrbuf, 0x8000100u);
  if (!v3)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    *buf = 136446210;
    v38 = "[NWConcrete_nw_error description]";
    v5 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v35 = 0;
    if (!__nwlog_fault(v5, &type, &v35))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v6 = gLogObj;
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v38 = "[NWConcrete_nw_error description]";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s CFStringCreateWithCString failed", buf, 0xCu);
      }

LABEL_72:

LABEL_73:
      if (!v5)
      {
        goto LABEL_67;
      }

      goto LABEL_74;
    }

    if (v35 != 1)
    {
      v6 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v38 = "[NWConcrete_nw_error description]";
        _os_log_impl(&dword_181A37000, v6, v32, "%{public}s CFStringCreateWithCString failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_72;
    }

    v26 = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v6, type);
    if (!v26)
    {
      if (v28)
      {
        *buf = 136446210;
        v38 = "[NWConcrete_nw_error description]";
        _os_log_impl(&dword_181A37000, v6, v27, "%{public}s CFStringCreateWithCString failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_72;
    }

    if (v28)
    {
      *buf = 136446466;
      v38 = "[NWConcrete_nw_error description]";
      v39 = 2082;
      v40 = v26;
      _os_log_impl(&dword_181A37000, v6, v27, "%{public}s CFStringCreateWithCString failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v26);
    if (v5)
    {
LABEL_74:
      free(v5);
    }
  }

LABEL_67:

  return v3;
}

- (_DWORD)initWithDomain:(int)domain code:
{
  v20 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v15.receiver = result;
  v15.super_class = NWConcrete_nw_error;
  result = objc_msgSendSuper2(&v15, sel_init);
  if (result)
  {
    result[2] = a2;
    result[3] = domain;
    return result;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v17 = "[NWConcrete_nw_error initWithDomain:code:]";
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
        v17 = "[NWConcrete_nw_error initWithDomain:code:]";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s [super init] failed", buf, 0xCu);
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
          v17 = "[NWConcrete_nw_error initWithDomain:code:]";
          v18 = 2082;
          v19 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_21;
      }

      if (v11)
      {
        *buf = 136446210;
        v17 = "[NWConcrete_nw_error initWithDomain:code:]";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v17 = "[NWConcrete_nw_error initWithDomain:code:]";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_21:
  if (v6)
  {
    free(v6);
  }

  return 0;
}

@end
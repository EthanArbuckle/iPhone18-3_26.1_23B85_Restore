@interface NWConcrete_nw_authentication_credential
- (_DWORD)initWithType:(_DWORD *)result;
- (void)dealloc;
@end

@implementation NWConcrete_nw_authentication_credential

- (void)dealloc
{
  username = self->username;
  if (username)
  {
    free(username);
    self->username = 0;
  }

  selfCopy = self;
  v5 = selfCopy;
  password = selfCopy->password;
  if (password)
  {
    v7 = strlen(selfCopy->password);
    bzero(password, v7);
    v8 = v5->password;
    if (v8)
    {
      free(v8);
      v5->password = 0;
    }
  }

  v9.receiver = v5;
  v9.super_class = NWConcrete_nw_authentication_credential;
  [(NWConcrete_nw_authentication_credential *)&v9 dealloc];
}

- (_DWORD)initWithType:(_DWORD *)result
{
  v18 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v13.receiver = result;
  v13.super_class = NWConcrete_nw_authentication_credential;
  result = objc_msgSendSuper2(&v13, sel_init);
  if (result)
  {
    result[2] = a2;
    return result;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v15 = "[NWConcrete_nw_authentication_credential initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_credential initWithType:]";
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
          v15 = "[NWConcrete_nw_authentication_credential initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_credential initWithType:]";
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
        v15 = "[NWConcrete_nw_authentication_credential initWithType:]";
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

@end
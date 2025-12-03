@interface NWConcrete_nw_pac_resolver
- (NWConcrete_nw_pac_resolver)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_pac_resolver

- (void)dealloc
{
  selfCopy = self;
  v3 = *(selfCopy + 3);
  if (v3)
  {
    CFRelease(v3);
    *(selfCopy + 3) = 0;
  }

  v4 = *(selfCopy + 4);
  if (v4)
  {
    CFRelease(v4);
    *(selfCopy + 4) = 0;
  }

  v5 = *(selfCopy + 5);
  if (v5)
  {
    CFRelease(v5);
    *(selfCopy + 5) = 0;
  }

  v6.receiver = selfCopy;
  v6.super_class = NWConcrete_nw_pac_resolver;
  [(NWConcrete_nw_pac_resolver *)&v6 dealloc];
}

- (NWConcrete_nw_pac_resolver)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_pac_resolver;
  v2 = [(NWConcrete_nw_pac_resolver *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_pac_resolver init]";
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
        v18 = "[NWConcrete_nw_pac_resolver init]";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
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
          v18 = "[NWConcrete_nw_pac_resolver init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_pac_resolver init]";
        _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_pac_resolver init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

@end
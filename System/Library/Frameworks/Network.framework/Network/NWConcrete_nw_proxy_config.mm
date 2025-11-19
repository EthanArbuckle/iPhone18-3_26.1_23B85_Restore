@interface NWConcrete_nw_proxy_config
- (NSString)description;
- (NWConcrete_nw_proxy_config)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_proxy_config

- (NWConcrete_nw_proxy_config)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_proxy_config;
  v2 = [(NWConcrete_nw_proxy_config *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_proxy_config init]";
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
        v18 = "[NWConcrete_nw_proxy_config init]";
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
          v18 = "[NWConcrete_nw_proxy_config init]";
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
        v18 = "[NWConcrete_nw_proxy_config init]";
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
        v18 = "[NWConcrete_nw_proxy_config init]";
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

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_proxy_config;
  [(NWConcrete_nw_proxy_config *)&v2 dealloc];
}

- (NSString)description
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  mode = self->mode;
  if (mode > 1)
  {
    if (mode == 2)
    {
      endpoint = self->endpoint;
    }

    else
    {
      if (mode != 3)
      {
        if (mode == 4)
        {
          CFStringAppendFormat(Mutable, 0, @"No Proxy");
        }

        goto LABEL_17;
      }

      endpoint = self->pac_script;
    }

    CFStringAppendFormat(Mutable, 0, @"PAC: %@", endpoint);
    goto LABEL_17;
  }

  if (mode)
  {
    if (mode == 1)
    {
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      if (nw_dictionary_get_count(self->stacks))
      {
        stacks = self->stacks;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __41__NWConcrete_nw_proxy_config_description__block_invoke;
        v9[3] = &unk_1E6A32340;
        v9[4] = self;
        v9[5] = v14;
        v9[6] = &v10;
        v9[7] = v4;
        nw_dictionary_apply(stacks, v9);
      }

      if ((v11[3] & 1) == 0)
      {
        CFStringAppendFormat(v4, 0, @"%@", self->endpoint);
      }

      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(v14, 8);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"Invalid Proxy");
  }

LABEL_17:

  return v4;
}

@end
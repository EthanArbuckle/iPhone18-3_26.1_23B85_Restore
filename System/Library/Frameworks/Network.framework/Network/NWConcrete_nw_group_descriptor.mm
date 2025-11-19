@interface NWConcrete_nw_group_descriptor
- (NSString)description;
- (uint64_t)initWithType:(void *)a3 member:(_OWORD *)a4 groupID:;
- (void)dealloc;
@end

@implementation NWConcrete_nw_group_descriptor

- (NSString)description
{
  type = self->type;
  if (type > 4)
  {
    v4 = "unknown";
  }

  else
  {
    v4 = off_1E6A2CCD0[type];
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %@>", v4, self->members);

  return v5;
}

- (void)dealloc
{
  members = self->members;
  self->members = 0;

  specific_source = self->specific_source;
  self->specific_source = 0;

  v5.receiver = self;
  v5.super_class = NWConcrete_nw_group_descriptor;
  [(NWConcrete_nw_group_descriptor *)&v5 dealloc];
}

- (uint64_t)initWithType:(void *)a3 member:(_OWORD *)a4 groupID:
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!a1)
  {
    goto LABEL_20;
  }

  v35.receiver = a1;
  v35.super_class = NWConcrete_nw_group_descriptor;
  v8 = objc_msgSendSuper2(&v35, sel_init);
  if (!v8)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v18, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v26, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v27)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, v26, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v31 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, v31, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_50:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_19;
  }

  a1 = v8;
  if (!a2)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (__nwlog_fault(v22, &type, &v33))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null _type", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v23, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
            v38 = 2082;
            v39 = v28;
            _os_log_impl(&dword_181A37000, v23, v29, "%{public}s called with null _type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          goto LABEL_55;
        }

        if (v30)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, v29, "%{public}s called with null _type, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v32 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null _type, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_55:
    if (v22)
    {
      free(v22);
    }

    goto LABEL_19;
  }

  if (a4)
  {
    *(v8 + 1) = *a4;
  }

  else
  {
    uuid_generate_random(v8 + 16);
  }

  *(a1 + 2) = a2;
  if (v7 && !nw_group_descriptor_allows_endpoint(a1, v7))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 2);
      if (v14 > 4)
      {
        v15 = "unknown";
      }

      else
      {
        v15 = off_1E6A2CCD0[v14];
      }

      *buf = 136446466;
      v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
      v38 = 2080;
      v39 = v15;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s Invalid endpoint type specified for group descriptor of type %s", buf, 0x16u);
    }

LABEL_19:
    a1 = 0;
    goto LABEL_20;
  }

  v9 = _nw_array_create();
  v10 = a1[4];
  a1[4] = v9;

  if (v7)
  {
    v11 = a1[4];
    if (v11)
    {
      _nw_array_append(v11, v7);
    }
  }

  v12 = a1[5];
  a1[5] = 0;

  *(a1 + 48) &= ~1u;
LABEL_20:

  return a1;
}

@end
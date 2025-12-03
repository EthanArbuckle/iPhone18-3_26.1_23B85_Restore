@interface NWConcrete_nw_group_descriptor
- (NSString)description;
- (uint64_t)initWithType:(void *)type member:(_OWORD *)member groupID:;
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

- (uint64_t)initWithType:(void *)type member:(_OWORD *)member groupID:
{
  v40 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!self)
  {
    goto LABEL_20;
  }

  v35.receiver = self;
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
        typeCopy2 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, typeCopy2, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        typeCopy3 = type;
        v27 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
            v38 = 2082;
            v39 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, typeCopy3, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_50;
        }

        if (v27)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, typeCopy3, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        typeCopy4 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v19, typeCopy4, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
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

  self = v8;
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
        typeCopy5 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, typeCopy5, "%{public}s called with null _type", buf, 0xCu);
        }
      }

      else if (v33 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        typeCopy6 = type;
        v30 = os_log_type_enabled(v23, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
            v38 = 2082;
            v39 = v28;
            _os_log_impl(&dword_181A37000, v23, typeCopy6, "%{public}s called with null _type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          goto LABEL_55;
        }

        if (v30)
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, typeCopy6, "%{public}s called with null _type, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        typeCopy7 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v37 = "[NWConcrete_nw_group_descriptor initWithType:member:groupID:]";
          _os_log_impl(&dword_181A37000, v23, typeCopy7, "%{public}s called with null _type, backtrace limit exceeded", buf, 0xCu);
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

  if (member)
  {
    *(v8 + 1) = *member;
  }

  else
  {
    uuid_generate_random(v8 + 16);
  }

  *(self + 2) = a2;
  if (typeCopy && !nw_group_descriptor_allows_endpoint(self, typeCopy))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(self + 2);
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
    self = 0;
    goto LABEL_20;
  }

  v9 = _nw_array_create();
  v10 = self[4];
  self[4] = v9;

  if (typeCopy)
  {
    v11 = self[4];
    if (v11)
    {
      _nw_array_append(v11, typeCopy);
    }
  }

  v12 = self[5];
  self[5] = 0;

  *(self + 48) &= ~1u;
LABEL_20:

  return self;
}

@end
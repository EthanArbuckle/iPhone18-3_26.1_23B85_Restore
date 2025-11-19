@interface NWConcrete_nw_quic_migration_info
- (NWConcrete_nw_quic_migration_info)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_quic_migration_info

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NWConcrete_nw_quic_migration_info;
  [(NWConcrete_nw_quic_migration_info *)&v2 dealloc];
}

- (NWConcrete_nw_quic_migration_info)init
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NWConcrete_nw_quic_migration_info;
  v2 = [(NWConcrete_nw_quic_migration_info *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v17 = "[NWConcrete_nw_quic_migration_info init]";
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
        v17 = "[NWConcrete_nw_quic_migration_info init]";
        v10 = "%{public}s [super init] failed";
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
            v17 = "[NWConcrete_nw_quic_migration_info init]";
            v18 = 2082;
            v19 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v17 = "[NWConcrete_nw_quic_migration_info init]";
        v10 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v17 = "[NWConcrete_nw_quic_migration_info init]";
        v10 = "%{public}s [super init] failed, backtrace limit exceeded";
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

  return v3;
}

@end
@interface NWConcrete_nw_nat64_prefixes_resolver
- (void)dealloc;
@end

@implementation NWConcrete_nw_nat64_prefixes_resolver

- (void)dealloc
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(self + 4))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
    v22 = 12;
    v21 = buf;
    v4 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v4, &v26, &v25))
    {
      goto LABEL_7;
    }

    if (v26 == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = v26;
      if (os_log_type_enabled(v5, v26))
      {
        *buf = 136446210;
        v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not be internally retained and deallocating", buf, 0xCu);
      }

LABEL_6:

LABEL_7:
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v25 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v19 = v26;
      if (os_log_type_enabled(v5, v26))
      {
        *buf = 136446210;
        v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
        _os_log_impl(&dword_181A37000, v5, v19, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_6;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v14 = v26;
    v15 = os_log_type_enabled(v5, v26);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
        _os_log_impl(&dword_181A37000, v5, v14, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not be internally retained and deallocating, no backtrace", buf, 0xCu);
      }

      goto LABEL_6;
    }

    if (v15)
    {
      *buf = 136446466;
      v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v14, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v4)
    {
LABEL_8:
      free(v4);
    }
  }

LABEL_9:
  if (*(self + 6))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
    v22 = 12;
    v21 = buf;
    v8 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v8, &v26, &v25))
    {
      if (v26 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = v26;
        if (os_log_type_enabled(v9, v26))
        {
          *buf = 136446210;
          v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not still have a DNS service", buf, 0xCu);
        }
      }

      else if (v25 == 1)
      {
        v16 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v17 = v26;
        v18 = os_log_type_enabled(v9, v26);
        if (v16)
        {
          if (v18)
          {
            *buf = 136446466;
            v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
            v29 = 2082;
            v30 = v16;
            _os_log_impl(&dword_181A37000, v9, v17, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not still have a DNS service, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v16);
          if (!v8)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v18)
        {
          *buf = 136446210;
          v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not still have a DNS service, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v20 = v26;
        if (os_log_type_enabled(v9, v26))
        {
          *buf = 136446210;
          v28 = "[NWConcrete_nw_nat64_prefixes_resolver dealloc]";
          _os_log_impl(&dword_181A37000, v9, v20, "%{public}s over-release of nw_nat64_prefixes_resolver_t! Object should not still have a DNS service, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
LABEL_17:
      v11 = *(self + 6);
      *(self + 6) = 0;
      v12 = *(self + 3);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __48__NWConcrete_nw_nat64_prefixes_resolver_dealloc__block_invoke;
      v24[3] = &__block_descriptor_40_e5_v8__0l;
      v24[4] = v11;
      nw_queue_context_async_if_needed(v12, v24);
      goto LABEL_18;
    }

LABEL_16:
    free(v8);
    goto LABEL_17;
  }

LABEL_18:
  v23.receiver = self;
  v23.super_class = NWConcrete_nw_nat64_prefixes_resolver;
  [(NWConcrete_nw_nat64_prefixes_resolver *)&v23 dealloc:v21];
}

@end
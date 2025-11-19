@interface NWConcrete_nw_resolver
- (NSString)description;
- (id)initWithEndpoint:(void *)a3 parameters:(void *)a4 path:(unsigned __int8 *)a5 log_str:;
- (void)dealloc;
@end

@implementation NWConcrete_nw_resolver

- (void)dealloc
{
  v61 = *MEMORY[0x1E69E9840];
  if (!*(self + 30) || (*(self + 370) & 0x20) != 0)
  {
    goto LABEL_50;
  }

  if (!*(self + 280))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v8 = *(self + 91);
    *buf = 136446466;
    v58 = "[NWConcrete_nw_resolver dealloc]";
    v59 = 1024;
    *v60 = v8;
    v52 = 18;
    v51 = buf;
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v4, &type, &v55))
    {
      goto LABEL_48;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v9 = type;
      if (os_log_type_enabled(v5, type))
      {
        v10 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v10;
        _os_log_impl(&dword_181A37000, v5, v9, "%{public}s [R%u] over-release of nw_resolver_t! Object should not be internally retained and deallocating", buf, 0x12u);
      }

      goto LABEL_47;
    }

    if (v55 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v5, type))
      {
        v21 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v21;
        _os_log_impl(&dword_181A37000, v5, v20, "%{public}s [R%u] over-release of nw_resolver_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0x12u);
      }

      goto LABEL_47;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v16 = type;
    v17 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        v23 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v23;
        _os_log_impl(&dword_181A37000, v5, v16, "%{public}s [R%u] over-release of nw_resolver_t! Object should not be internally retained and deallocating, no backtrace", buf, 0x12u);
      }

      goto LABEL_47;
    }

    if (v17)
    {
      v18 = *(self + 91);
      *buf = 136446722;
      v58 = "[NWConcrete_nw_resolver dealloc]";
      v59 = 1024;
      *v60 = v18;
      *&v60[4] = 2082;
      *&v60[6] = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v16, "%{public}s [R%u] over-release of nw_resolver_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(backtrace_string);
    if (!v4)
    {
      goto LABEL_50;
    }

LABEL_49:
    free(v4);
    goto LABEL_50;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v3 = gconnectionLogObj;
  *buf = 136446466;
  v58 = "[NWConcrete_nw_resolver dealloc]";
  v59 = 2082;
  *v60 = self + 280;
  v52 = 22;
  v51 = buf;
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (!__nwlog_fault(v4, &type, &v55))
  {
LABEL_48:
    if (!v4)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    v6 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446466;
      v58 = "[NWConcrete_nw_resolver dealloc]";
      v59 = 2082;
      *v60 = self + 280;
      _os_log_impl(&dword_181A37000, v5, v6, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not be internally retained and deallocating", buf, 0x16u);
    }

LABEL_47:

    goto LABEL_48;
  }

  if (v55 != 1)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    v19 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446466;
      v58 = "[NWConcrete_nw_resolver dealloc]";
      v59 = 2082;
      *v60 = self + 280;
      _os_log_impl(&dword_181A37000, v5, v19, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0x16u);
    }

    goto LABEL_47;
  }

  v11 = __nw_create_backtrace_string();
  if (!v11)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    v22 = type;
    if (os_log_type_enabled(v5, type))
    {
      *buf = 136446466;
      v58 = "[NWConcrete_nw_resolver dealloc]";
      v59 = 2082;
      *v60 = self + 280;
      _os_log_impl(&dword_181A37000, v5, v22, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not be internally retained and deallocating, no backtrace", buf, 0x16u);
    }

    goto LABEL_47;
  }

  v12 = v11;
  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v13 = gconnectionLogObj;
  v14 = type;
  if (os_log_type_enabled(v13, type))
  {
    *buf = 136446722;
    v58 = "[NWConcrete_nw_resolver dealloc]";
    v59 = 2082;
    *v60 = self + 280;
    *&v60[8] = 2082;
    *&v60[10] = v12;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x20u);
  }

  free(v12);
  if (v4)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (!*(self + 8))
  {
    goto LABEL_100;
  }

  if ((*(self + 370) & 0x20) != 0)
  {
    goto LABEL_99;
  }

  if (!*(self + 280))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v28 = gLogObj;
    v29 = *(self + 91);
    *buf = 136446466;
    v58 = "[NWConcrete_nw_resolver dealloc]";
    v59 = 1024;
    *v60 = v29;
    v52 = 18;
    v51 = buf;
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v25, &type, &v55))
    {
      goto LABEL_97;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v30 = type;
      if (os_log_type_enabled(v26, type))
      {
        v31 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v31;
        _os_log_impl(&dword_181A37000, v26, v30, "%{public}s [R%u] over-release of nw_resolver_t! Object should not still have a DNS service", buf, 0x12u);
      }
    }

    else if (v55 == 1)
    {
      v36 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v37 = type;
      v38 = os_log_type_enabled(v26, type);
      if (v36)
      {
        if (v38)
        {
          v39 = *(self + 91);
          *buf = 136446722;
          v58 = "[NWConcrete_nw_resolver dealloc]";
          v59 = 1024;
          *v60 = v39;
          *&v60[4] = 2082;
          *&v60[6] = v36;
          _os_log_impl(&dword_181A37000, v26, v37, "%{public}s [R%u] over-release of nw_resolver_t! Object should not still have a DNS service, dumping backtrace:%{public}s", buf, 0x1Cu);
        }

        free(v36);
        if (!v25)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (v38)
      {
        v44 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v44;
        _os_log_impl(&dword_181A37000, v26, v37, "%{public}s [R%u] over-release of nw_resolver_t! Object should not still have a DNS service, no backtrace", buf, 0x12u);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v41 = type;
      if (os_log_type_enabled(v26, type))
      {
        v42 = *(self + 91);
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 1024;
        *v60 = v42;
        _os_log_impl(&dword_181A37000, v26, v41, "%{public}s [R%u] over-release of nw_resolver_t! Object should not still have a DNS service, backtrace limit exceeded", buf, 0x12u);
      }
    }

    goto LABEL_96;
  }

  if (__nwlog_connection_log::onceToken[0] != -1)
  {
    dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
  }

  v24 = gconnectionLogObj;
  *buf = 136446466;
  v58 = "[NWConcrete_nw_resolver dealloc]";
  v59 = 2082;
  *v60 = self + 280;
  v52 = 22;
  v51 = buf;
  v25 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v25, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v26 = gconnectionLogObj;
      v27 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 2082;
        *v60 = self + 280;
        _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not still have a DNS service", buf, 0x16u);
      }
    }

    else if (v55 == 1)
    {
      v32 = __nw_create_backtrace_string();
      if (v32)
      {
        v33 = v32;
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v34 = gconnectionLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446722;
          v58 = "[NWConcrete_nw_resolver dealloc]";
          v59 = 2082;
          *v60 = self + 280;
          *&v60[8] = 2082;
          *&v60[10] = v33;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not still have a DNS service, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v33);
        if (!v25)
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v26 = gconnectionLogObj;
      v43 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 2082;
        *v60 = self + 280;
        _os_log_impl(&dword_181A37000, v26, v43, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not still have a DNS service, no backtrace", buf, 0x16u);
      }
    }

    else
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v26 = gconnectionLogObj;
      v40 = type;
      if (os_log_type_enabled(v26, type))
      {
        *buf = 136446466;
        v58 = "[NWConcrete_nw_resolver dealloc]";
        v59 = 2082;
        *v60 = self + 280;
        _os_log_impl(&dword_181A37000, v26, v40, "%{public}s [C%{public}s] over-release of nw_resolver_t! Object should not still have a DNS service, backtrace limit exceeded", buf, 0x16u);
      }
    }

LABEL_96:
  }

LABEL_97:
  if (v25)
  {
LABEL_98:
    free(v25);
  }

LABEL_99:
  v45 = *(self + 8);
  v46 = *(self + 4);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __33__NWConcrete_nw_resolver_dealloc__block_invoke;
  v54[3] = &__block_descriptor_40_e5_v8__0l;
  v54[4] = v45;
  nw_queue_context_async_if_needed(v46, v54);
LABEL_100:
  v47 = *(self + 18);
  if (v47)
  {
    _nw_array_apply(v47, &__block_literal_global_6253);
  }

  nw_path_evaluator_cancel(*(self + 16));
  v49 = *(self + 23);
  if (v49)
  {
    nw_queue_cancel_source(v49, v48);
    *(self + 23) = 0;
  }

  v50 = *(self + 31);
  if (v50)
  {
    free(v50);
    *(self + 31) = 0;
  }

  v53.receiver = self;
  v53.super_class = NWConcrete_nw_resolver;
  [(NWConcrete_nw_resolver *)&v53 dealloc:v51];
}

- (NSString)description
{
  v3 = *(self + 280);
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    v5 = CFStringCreateWithFormat(v4, 0, @"[C%s]", self + 280);
  }

  else
  {
    v5 = CFStringCreateWithFormat(v4, 0, @"[R%u]", *(self + 91));
  }

  return v5;
}

- (id)initWithEndpoint:(void *)a3 parameters:(void *)a4 path:(unsigned __int8 *)a5 log_str:
{
  v83 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (!a1)
  {
    goto LABEL_34;
  }

  v13 = nw_endpoint_get_type(v10);
  v16 = v13 - 4 < 0xFFFFFFFE && v13 - 7 < 0xFFFFFFFE && v13 != nw_endpoint_type_address;
  if (v13 <= (nw_endpoint_type_url|nw_endpoint_type_host))
  {
    if (((1 << v13) & 0x6E) != 0)
    {
      goto LABEL_13;
    }

    if (v13 == nw_endpoint_type_invalid)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
        *&buf[12] = 1024;
        *&buf[14] = 0;
        _os_log_impl(&dword_181A37000, v30, OS_LOG_TYPE_ERROR, "%{public}s nw_resolver_create_with_endpoint failed due to unsupported endpoint type %d", buf, 0x12u);
      }

      goto LABEL_33;
    }
  }

  v35 = v13;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v36 = gLogObj;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446466;
    *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
    *&buf[12] = 1024;
    *&buf[14] = v35;
    _os_log_impl(&dword_181A37000, v36, OS_LOG_TYPE_DEBUG, "%{public}s Creating resolver with custom endpoint type %u", buf, 0x12u);
  }

LABEL_13:
  v81.receiver = a1;
  v81.super_class = NWConcrete_nw_resolver;
  v17 = objc_msgSendSuper2(&v81, sel_init);
  v18 = v17;
  if (!v17)
  {
    v67 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
    v68 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v68, type, &v80))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v69 = __nwlog_obj();
        v70 = type[0];
        if (os_log_type_enabled(v69, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v69, v70, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v80 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v69 = __nwlog_obj();
        v72 = type[0];
        v73 = os_log_type_enabled(v69, type[0]);
        if (backtrace_string)
        {
          if (v73)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v69, v72, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_119;
        }

        if (v73)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v69, v72, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v69 = __nwlog_obj();
        v74 = type[0];
        if (os_log_type_enabled(v69, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v69, v74, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_119:
    if (v68)
    {
      free(v68);
    }

    goto LABEL_33;
  }

  a1 = v17;
  *(v17 + 21) = 0;
  *(v17 + 2) = 0;
  objc_storeStrong(v17 + 3, a2);
  if (v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = _nw_parameters_create();
  }

  v20 = v18[2];
  v18[2] = v19;

  v21 = nw_parameters_copy_context(v18[2]);
  v22 = v18[4];
  v18[4] = v21;

  if (nw_context_is_inline(v18[4]))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v23 = gLogObj;
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
    v24 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v80 = 0;
    if (__nwlog_fault(v24, type, &v80))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v26 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v25, v26, "%{public}s Cannot use nw_resolver on inline contexts", buf, 0xCu);
        }
      }

      else if (v80 == 1)
      {
        v32 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v33 = type[0];
        v34 = os_log_type_enabled(v25, type[0]);
        if (v32)
        {
          if (v34)
          {
            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
            *&buf[12] = 2082;
            *&buf[14] = v32;
            _os_log_impl(&dword_181A37000, v25, v33, "%{public}s Cannot use nw_resolver on inline contexts, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v32);
          if (!v24)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (v34)
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v25, v33, "%{public}s Cannot use nw_resolver on inline contexts, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        v59 = type[0];
        if (os_log_type_enabled(v25, type[0]))
        {
          *buf = 136446210;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          _os_log_impl(&dword_181A37000, v25, v59, "%{public}s Cannot use nw_resolver on inline contexts, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v24)
    {
LABEL_25:

LABEL_33:
      a1 = 0;
      goto LABEL_34;
    }

LABEL_24:
    free(v24);
    goto LABEL_25;
  }

  objc_storeStrong(v18 + 28, a4);
  v27 = v18[28];
  if (v27)
  {
    v28 = v27;
    if (_nw_path_may_span_multiple_interfaces(v28))
    {
      v29 = 0;
    }

    else
    {
      v29 = _nw_path_copy_scoped_interface(v28);
    }

    v37 = v18[29];
    v18[29] = v29;
  }

  v38 = _nw_array_create();
  v39 = v18[21];
  v18[21] = v38;

  v40 = *(v18 + 370) & 0xFE | v16;
  *(v18 + 370) = v40;
  v41 = v18[28];
  if (v41)
  {
    *(v18 + 14) = nw_path_get_dns_service_id(v41, 1);
    if (nw_path_has_unsatisfied_route(v18[28]))
    {
      v42 = 16 * (nw_endpoint_get_type(v18[3]) == nw_endpoint_type_host);
    }

    else
    {
      v42 = 0;
    }

    *(v18 + 370) = *(v18 + 370) & 0xEF | v42;
    if (nw_path_has_ipv4(v18[28]))
    {
      v43 = 64;
    }

    else
    {
      v43 = 0;
    }

    *(v18 + 370) = *(v18 + 370) & 0xBF | v43;
    if (nw_path_has_ipv6(v18[28]))
    {
      v44 = 0x80;
    }

    else
    {
      v44 = 0;
    }

    *(v18 + 370) = v44 & 0x80 | *(v18 + 370) & 0x7F;
    v45 = nw_path_has_nat64_prefixes(v18[28]);
    *(v18 + 371) = *(v18 + 371) & 0xFE | v45;
    if ((*&v45 & ((*(v18 + 370) & 0x10) >> 4)) == 1 && nw_parameters_get_required_address_family(v18[2]) == 2)
    {
      *(v18 + 370) &= ~0x10u;
    }

    if (nw_parameters_get_is_encrypted_dns_resolver_connection(v18[2]))
    {
      v46 = 64;
    }

    else
    {
      v46 = 0;
    }

    *(v18 + 371) = *(v18 + 371) & 0xBF | v46;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = __Block_byref_object_copy__6340;
    *&buf[32] = __Block_byref_object_dispose__6341;
    *&buf[40] = 0;
    *type = 0;
    v77 = type;
    v78 = 0x2020000000;
    v79 = 0;
    v47 = v18[28];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __67__NWConcrete_nw_resolver_initWithEndpoint_parameters_path_log_str___block_invoke;
    v75[3] = &unk_1E6A2C238;
    v75[4] = type;
    v75[5] = buf;
    nw_path_enumerate_resolver_configs(v47, v75);
    v48 = *&buf[8];
    v49 = *(*&buf[8] + 40);
    if (v49)
    {
      if (*(v77 + 6) == 4)
      {
        *(v18 + 371) |= 0x20u;
        v49 = *(v48 + 40);
      }

      if (nw_resolver_config_get_allow_failover(v49))
      {
        v50 = 0x80;
      }

      else
      {
        v50 = 0;
      }

      *(v18 + 371) = v50 & 0x80 | *(v18 + 371) & 0x7F;
      nw_resolver_config_get_identifier(*(*&buf[8] + 40), v18 + 16);
    }

    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    *(v18 + 370) = v40 | 0xC0;
    *(v18 + 371) &= ~1u;
  }

  *(v18 + 68) = 0;
  if (nw_parameters_get_logging_disabled(v18[2]))
  {
    v51 = 32;
  }

  else
  {
    v51 = 0;
  }

  *(v18 + 370) = *(v18 + 370) & 0xDF | v51;
  *(v18 + 372) = *(v18 + 372) & 0xFB | (4 * (nw_parameters_get_expired_dns_behavior(v18[2]) == (nw_parameters_expired_dns_behavior_prohibit|nw_parameters_expired_dns_behavior_allow)));
  if (a5)
  {
    v52 = v18 + 35;
    v53 = 84;
    while (1)
    {
      v54 = *a5;
      *v52 = v54;
      if (!v54)
      {
        break;
      }

      ++v52;
      ++a5;
      if (--v53 <= 1)
      {
        *v52 = 0;
        break;
      }
    }
  }

  else
  {
    if ((nw_parameters_get_sensitive_redacted(v18[2]) & 1) == 0)
    {
      nw_endpoint_set_do_not_redact(v18[3]);
    }

    *(v18 + 91) = nw_resolver_get_next_log_id();
    *(v18 + 371) |= 0x10u;
    if ((*(v18 + 370) & 0x20) == 0)
    {
      if (*(v18 + 280))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v55 = gconnectionLogObj;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v18[3];
          v57 = v56;
          if (v56)
          {
            logging_description = _nw_endpoint_get_logging_description(v56);
          }

          else
          {
            logging_description = "<NULL>";
          }

          v65 = v18[2];
          *buf = 136446978;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          *&buf[12] = 2082;
          *&buf[14] = v18 + 35;
          *&buf[22] = 2082;
          *&buf[24] = logging_description;
          *&buf[32] = 2112;
          *&buf[34] = v65;
          _os_log_impl(&dword_181A37000, v55, OS_LOG_TYPE_DEFAULT, "%{public}s [C%{public}s] created for %{public}s using: %@", buf, 0x2Au);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v60 = gLogObj;
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = *(a1 + 91);
          v62 = a1[3];
          v63 = v62;
          if (v62)
          {
            v64 = _nw_endpoint_get_logging_description(v62);
          }

          else
          {
            v64 = "<NULL>";
          }

          v66 = a1[2];
          *buf = 136446978;
          *&buf[4] = "[NWConcrete_nw_resolver initWithEndpoint:parameters:path:log_str:]";
          *&buf[12] = 1024;
          *&buf[14] = v61;
          *&buf[18] = 2082;
          *&buf[20] = v64;
          *&buf[28] = 2112;
          *&buf[30] = v66;
          _os_log_impl(&dword_181A37000, v60, OS_LOG_TYPE_DEFAULT, "%{public}s [R%u] created for %{public}s using: %@", buf, 0x26u);
        }
      }
    }
  }

LABEL_34:

  return a1;
}

@end
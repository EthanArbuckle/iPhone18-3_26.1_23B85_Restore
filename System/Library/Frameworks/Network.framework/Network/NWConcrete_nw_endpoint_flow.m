@interface NWConcrete_nw_endpoint_flow
- (NWConcrete_nw_endpoint_flow)init;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NWConcrete_nw_endpoint_flow

- (NWConcrete_nw_endpoint_flow)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_endpoint_flow;
  v2 = [(NWConcrete_nw_endpoint_flow *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->pre_connected_fd = -1;
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_endpoint_flow init]";
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
        v18 = "[NWConcrete_nw_endpoint_flow init]";
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
          v18 = "[NWConcrete_nw_endpoint_flow init]";
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
        v18 = "[NWConcrete_nw_endpoint_flow init]";
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
        v18 = "[NWConcrete_nw_endpoint_flow init]";
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

- (id).cxx_construct
{
  *(self + 616) = 0u;
  *(self + 632) = 0u;
  *(self + 584) = 0u;
  *(self + 600) = 0u;
  *(self + 552) = 0u;
  *(self + 568) = 0u;
  *(self + 536) = 0u;
  *(self + 43) = 0u;
  *(self + 90) = 0;
  *(self + 728) &= ~1u;
  *(self + 97) = 0;
  *(self + 784) &= ~1u;
  return self;
}

- (void)dealloc
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->internally_retained_object)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v4, &type, &v32))
    {
      goto LABEL_7;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s over-release of nw_endpoint_flow_t! Object should not be internally retained and deallocating", buf, 0xCu);
      }

LABEL_6:

LABEL_7:
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v32 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
        _os_log_impl(&dword_181A37000, v5, v28, "%{public}s over-release of nw_endpoint_flow_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_6;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v20 = type;
    v21 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v21)
      {
        *buf = 136446210;
        v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
        _os_log_impl(&dword_181A37000, v5, v20, "%{public}s over-release of nw_endpoint_flow_t! Object should not be internally retained and deallocating, no backtrace", buf, 0xCu);
      }

      goto LABEL_6;
    }

    if (v21)
    {
      *buf = 136446466;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v20, "%{public}s over-release of nw_endpoint_flow_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v4)
    {
LABEL_8:
      free(v4);
    }
  }

LABEL_9:
  if (!self->shared_protocol.read_requests)
  {
    goto LABEL_17;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446210;
  v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v8, &type, &v32))
  {
LABEL_15:
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s read requests not drained", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v32 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v29 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v9, v29, "%{public}s read requests not drained, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v22 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v23 = type;
  v24 = os_log_type_enabled(v9, type);
  if (!v22)
  {
    if (v24)
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v9, v23, "%{public}s read requests not drained, no backtrace", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v24)
  {
    *buf = 136446466;
    v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
    v36 = 2082;
    v37 = v22;
    _os_log_impl(&dword_181A37000, v9, v23, "%{public}s read requests not drained, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v22);
  if (v8)
  {
LABEL_16:
    free(v8);
  }

LABEL_17:
  if (!self->shared_protocol.write_requests)
  {
    goto LABEL_25;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *buf = 136446210;
  v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (!__nwlog_fault(v12, &type, &v32))
  {
LABEL_23:
    if (!v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v13, v14, "%{public}s write requests not drained", buf, 0xCu);
    }

LABEL_22:

    goto LABEL_23;
  }

  if (v32 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v30 = type;
    if (os_log_type_enabled(v13, type))
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v13, v30, "%{public}s write requests not drained, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v25 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v26 = type;
  v27 = os_log_type_enabled(v13, type);
  if (!v25)
  {
    if (v27)
    {
      *buf = 136446210;
      v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
      _os_log_impl(&dword_181A37000, v13, v26, "%{public}s write requests not drained, no backtrace", buf, 0xCu);
    }

    goto LABEL_22;
  }

  if (v27)
  {
    *buf = 136446466;
    v35 = "[NWConcrete_nw_endpoint_flow dealloc]";
    v36 = 2082;
    v37 = v25;
    _os_log_impl(&dword_181A37000, v13, v26, "%{public}s write requests not drained, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v25);
  if (v12)
  {
LABEL_24:
    free(v12);
  }

LABEL_25:
  tcp_info = self->tcp_info;
  if (tcp_info)
  {
    free(tcp_info);
    self->tcp_info = 0;
  }

  tcp_connection_info = self->tcp_connection_info;
  if (tcp_connection_info)
  {
    free(tcp_connection_info);
    self->tcp_connection_info = 0;
  }

  data_transfer_snapshot = self->data_transfer_snapshot;
  if (data_transfer_snapshot)
  {
    free(data_transfer_snapshot);
    self->data_transfer_snapshot = 0;
  }

  context = self->shared_protocol.context;
  self->shared_protocol.context = 0;

  v31.receiver = self;
  v31.super_class = NWConcrete_nw_endpoint_flow;
  [(NWConcrete_nw_endpoint_flow *)&v31 dealloc];
}

@end
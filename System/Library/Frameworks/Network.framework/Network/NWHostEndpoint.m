@interface NWHostEndpoint
+ (NWHostEndpoint)endpointWithHostname:(NSString *)hostname port:(NSString *)port;
- (NSString)hostname;
- (NSString)port;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
@end

@implementation NWHostEndpoint

+ (NWHostEndpoint)endpointWithHostname:(NSString *)hostname port:(NSString *)port
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = port;
  v6 = hostname;
  host = nw_endpoint_create_host([(NSString *)v6 UTF8String], [(NSString *)v5 UTF8String]);
  if (host)
  {
    v8 = [NWEndpoint endpointWithInternalEndpoint:host];
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  v23 = "+[NWHostEndpoint endpointWithHostname:port:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v10, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v23 = "+[NWHostEndpoint endpointWithHostname:port:]";
      v13 = "%{public}s nw_endpoint_create_host failed";
LABEL_20:
      v18 = v11;
      v19 = v12;
      goto LABEL_21;
    }

    if (v20 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v23 = "+[NWHostEndpoint endpointWithHostname:port:]";
      v13 = "%{public}s nw_endpoint_create_host failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v15 = type;
    v16 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v16)
      {
LABEL_22:

        if (!v10)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v23 = "+[NWHostEndpoint endpointWithHostname:port:]";
      v13 = "%{public}s nw_endpoint_create_host failed, no backtrace";
      v18 = v11;
      v19 = v15;
LABEL_21:
      _os_log_impl(&dword_181A37000, v18, v19, v13, buf, 0xCu);
      goto LABEL_22;
    }

    if (v16)
    {
      *buf = 136446466;
      v23 = "+[NWHostEndpoint endpointWithHostname:port:]";
      v24 = 2082;
      v25 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v15, "%{public}s nw_endpoint_create_host failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v10)
  {
LABEL_13:
    free(v10);
  }

LABEL_14:
  v8 = 0;
LABEL_15:

  return v8;
}

- (NSString)port
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWEndpoint *)self internalEndpoint];
  v3 = nw_endpoint_copy_port_string(v2);

  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    free(v3);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWHostEndpoint port]";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWHostEndpoint port]";
      v9 = "%{public}s nw_endpoint_copy_port_string failed";
LABEL_20:
      v14 = v7;
      v15 = v8;
      goto LABEL_21;
    }

    if (v16 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v7 = gLogObj;
      v8 = type;
      if (!os_log_type_enabled(v7, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v19 = "[NWHostEndpoint port]";
      v9 = "%{public}s nw_endpoint_copy_port_string failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    v11 = type;
    v12 = os_log_type_enabled(v7, type);
    if (!backtrace_string)
    {
      if (!v12)
      {
LABEL_22:

        if (!v6)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v19 = "[NWHostEndpoint port]";
      v9 = "%{public}s nw_endpoint_copy_port_string failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWHostEndpoint port]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_endpoint_copy_port_string failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v6)
  {
LABEL_13:
    free(v6);
  }

LABEL_14:
  v4 = 0;
LABEL_15:

  return v4;
}

- (NSString)hostname
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(NWEndpoint *)self internalEndpoint];
  v4 = nw_endpoint_get_type(v3);

  v5 = [(NWEndpoint *)self internalEndpoint];
  v6 = v5;
  if (v4 == nw_endpoint_type_address)
  {
    address = nw_endpoint_get_address(v5);
    if (address)
    {
      v8 = getnameinfo(address, address->sa_len, buf, 0x46u, 0, 0, 10);
      v9 = 0;
      if (!v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;
    goto LABEL_27;
  }

  hostname = nw_endpoint_get_hostname(v5);

  if (hostname)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:hostname];
    goto LABEL_27;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  *buf = 136446210;
  v27 = "[NWHostEndpoint hostname]";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v14, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "[NWHostEndpoint hostname]";
        v17 = "%{public}s nw_endpoint_get_hostname failed";
LABEL_21:
        v21 = v15;
        v22 = v16;
LABEL_22:
        _os_log_impl(&dword_181A37000, v21, v22, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v15 = gLogObj;
        v19 = type;
        v20 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v27 = "[NWHostEndpoint hostname]";
            v28 = 2082;
            v29 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v19, "%{public}s nw_endpoint_get_hostname failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v20)
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v27 = "[NWHostEndpoint hostname]";
        v17 = "%{public}s nw_endpoint_get_hostname failed, no backtrace";
        v21 = v15;
        v22 = v19;
        goto LABEL_22;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v27 = "[NWHostEndpoint hostname]";
        v17 = "%{public}s nw_endpoint_get_hostname failed, backtrace limit exceeded";
        goto LABEL_21;
      }
    }

LABEL_23:
  }

LABEL_24:
  if (v14)
  {
    free(v14);
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = [(NWEndpoint *)self txtRecord];
  if (v7)
  {

LABEL_4:
    v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v10 = [(NWHostEndpoint *)self hostname];
    [v9 appendPrettyObject:v10 withName:@"hostname" indent:v5 showFullContent:1];

    v11 = [(NWHostEndpoint *)self port];
    [v9 appendPrettyObject:v11 withName:@"port" indent:v5 showFullContent:1];

    v12 = [(NWEndpoint *)self interface];
    [v9 appendPrettyObject:v12 withName:@"interface" indent:v5 showFullContent:v4];

    v13 = [(NWEndpoint *)self txtRecord];
    [v9 appendPrettyObject:v13 withName:@"txtRecord" indent:v5 showFullContent:v4];

    v14 = [(NWEndpoint *)self parentEndpointDomain];
    [v9 appendPrettyObject:v14 withName:@"parentEndpointDomain" indent:v5 showFullContent:1];
    goto LABEL_5;
  }

  v8 = [(NWEndpoint *)self parentEndpointDomain];

  if (v8)
  {
    goto LABEL_4;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = [(NWEndpoint *)self internalEndpoint];
  v14 = v17;
  if (v17)
  {
    description = _nw_endpoint_get_description(v17);
  }

  else
  {
    description = "<NULL>";
  }

  v9 = [v16 stringWithUTF8String:description];
LABEL_5:

  return v9;
}

@end
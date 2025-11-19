@interface NWBonjourServiceEndpoint
+ (NWBonjourServiceEndpoint)endpointWithName:(NSString *)name type:(NSString *)type domain:(NSString *)domain;
- (NSString)domain;
- (NSString)name;
- (NSString)type;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
@end

@implementation NWBonjourServiceEndpoint

+ (NWBonjourServiceEndpoint)endpointWithName:(NSString *)name type:(NSString *)type domain:(NSString *)domain
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = domain;
  v8 = type;
  v9 = name;
  bonjour_service = nw_endpoint_create_bonjour_service([(NSString *)v9 UTF8String], [(NSString *)v8 UTF8String], [(NSString *)v7 UTF8String]);
  v11 = bonjour_service;
  if (!bonjour_service)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    *buf = 136446210;
    v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
    v16 = _os_log_send_and_compose_impl();

    typea = OS_LOG_TYPE_ERROR;
    v29 = 0;
    if (!__nwlog_fault(v16, &typea, &v29))
    {
      goto LABEL_37;
    }

    if (typea == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v18 = typea;
      if (os_log_type_enabled(v17, typea))
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v18, "%{public}s nw_endpoint_create_bonjour_service failed", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v26 = typea;
      if (os_log_type_enabled(v17, typea))
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v26, "%{public}s nw_endpoint_create_bonjour_service failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v22 = typea;
    v23 = os_log_type_enabled(v17, typea);
    if (!backtrace_string)
    {
      if (v23)
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v22, "%{public}s nw_endpoint_create_bonjour_service failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v23)
    {
      *buf = 136446466;
      v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v22, "%{public}s nw_endpoint_create_bonjour_service failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v12 = bonjour_service;
  v13 = _nw_endpoint_get_type(v12);

  if (v13 == 3)
  {
    v14 = [NWEndpoint endpointWithInternalEndpoint:v12];
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v19 = gLogObj;
  *buf = 136446210;
  v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
  v16 = _os_log_send_and_compose_impl();

  typea = OS_LOG_TYPE_ERROR;
  v29 = 0;
  if (__nwlog_fault(v16, &typea, &v29))
  {
    if (typea == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v20 = typea;
      if (os_log_type_enabled(v17, typea))
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v20, "%{public}s NWBonjourServiceEndpoint created endpoint of wrong type", buf, 0xCu);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v29 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      v27 = typea;
      if (os_log_type_enabled(v17, typea))
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v27, "%{public}s NWBonjourServiceEndpoint created endpoint of wrong type, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    v24 = typea;
    v25 = os_log_type_enabled(v17, typea);
    if (!backtrace_string)
    {
      if (v25)
      {
        *buf = 136446210;
        v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
        _os_log_impl(&dword_181A37000, v17, v24, "%{public}s NWBonjourServiceEndpoint created endpoint of wrong type, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v25)
    {
      *buf = 136446466;
      v32 = "+[NWBonjourServiceEndpoint endpointWithName:type:domain:]";
      v33 = 2082;
      v34 = backtrace_string;
      _os_log_impl(&dword_181A37000, v17, v24, "%{public}s NWBonjourServiceEndpoint created endpoint of wrong type, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_23:

    free(backtrace_string);
    if (!v16)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (v16)
  {
LABEL_38:
    free(v16);
  }

LABEL_39:
  v14 = 0;
LABEL_40:

  return v14;
}

- (NSString)domain
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWEndpoint *)self internalEndpoint];
  bonjour_service_domain = nw_endpoint_get_bonjour_service_domain(v2);

  if (bonjour_service_domain)
  {
    v4 = nw_nsstring(bonjour_service_domain);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWBonjourServiceEndpoint domain]";
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
      v19 = "[NWBonjourServiceEndpoint domain]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_domain failed";
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
      v19 = "[NWBonjourServiceEndpoint domain]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_domain failed, backtrace limit exceeded";
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
      v19 = "[NWBonjourServiceEndpoint domain]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_domain failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWBonjourServiceEndpoint domain]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_endpoint_get_bonjour_service_domain failed, dumping backtrace:%{public}s", buf, 0x16u);
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

- (NSString)type
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWEndpoint *)self internalEndpoint];
  bonjour_service_type = nw_endpoint_get_bonjour_service_type(v2);

  if (bonjour_service_type)
  {
    v4 = nw_nsstring(bonjour_service_type);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWBonjourServiceEndpoint type]";
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
      v19 = "[NWBonjourServiceEndpoint type]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_type failed";
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
      v19 = "[NWBonjourServiceEndpoint type]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_type failed, backtrace limit exceeded";
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
      v19 = "[NWBonjourServiceEndpoint type]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_type failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWBonjourServiceEndpoint type]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_endpoint_get_bonjour_service_type failed, dumping backtrace:%{public}s", buf, 0x16u);
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

- (NSString)name
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWEndpoint *)self internalEndpoint];
  bonjour_service_name = nw_endpoint_get_bonjour_service_name(v2);

  if (bonjour_service_name)
  {
    v4 = nw_nsstring(bonjour_service_name);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWBonjourServiceEndpoint name]";
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
      v19 = "[NWBonjourServiceEndpoint name]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_name failed";
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
      v19 = "[NWBonjourServiceEndpoint name]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_name failed, backtrace limit exceeded";
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
      v19 = "[NWBonjourServiceEndpoint name]";
      v9 = "%{public}s nw_endpoint_get_bonjour_service_name failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWBonjourServiceEndpoint name]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_endpoint_get_bonjour_service_name failed, dumping backtrace:%{public}s", buf, 0x16u);
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

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = *&a3;
  v6 = [(NWEndpoint *)self parentEndpointDomain:*&a3];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8 = [(NWBonjourServiceEndpoint *)self name];
    [v7 appendPrettyObject:v8 withName:@"name" indent:v4 showFullContent:1];

    v9 = [(NWBonjourServiceEndpoint *)self type];
    [v7 appendPrettyObject:v9 withName:@"type" indent:v4 showFullContent:1];

    v10 = [(NWBonjourServiceEndpoint *)self domain];
    [v7 appendPrettyObject:v10 withName:@"domain" indent:v4 showFullContent:1];

    v11 = [(NWEndpoint *)self interface];
    [v7 appendPrettyObject:v11 withName:@"interface" indent:v4 showFullContent:1];

    v12 = [(NWEndpoint *)self parentEndpointDomain];
    [v7 appendPrettyObject:v12 withName:@"parentEndpointDomain" indent:v4 showFullContent:1];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(NWEndpoint *)self internalEndpoint];
    v12 = v14;
    if (v14)
    {
      description = _nw_endpoint_get_description(v14);
    }

    else
    {
      description = "<NULL>";
    }

    v7 = [v13 stringWithUTF8String:description];
  }

  return v7;
}

@end
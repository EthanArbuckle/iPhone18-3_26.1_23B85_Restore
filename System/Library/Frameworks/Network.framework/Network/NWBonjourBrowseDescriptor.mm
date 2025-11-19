@interface NWBonjourBrowseDescriptor
+ (id)descriptorWithType:(id)a3 domain:(id)a4;
- (NSString)domain;
- (NSString)type;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
@end

@implementation NWBonjourBrowseDescriptor

- (NSString)domain
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [(NWBrowseDescriptor *)self internalDescriptor];
  bonjour_service_domain = nw_browse_descriptor_get_bonjour_service_domain(v2);

  if (bonjour_service_domain)
  {
    v4 = nw_nsstring(bonjour_service_domain);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWBonjourBrowseDescriptor domain]";
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
      v19 = "[NWBonjourBrowseDescriptor domain]";
      v9 = "%{public}s nw_browse_descriptor_get_service_domain failed";
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
      v19 = "[NWBonjourBrowseDescriptor domain]";
      v9 = "%{public}s nw_browse_descriptor_get_service_domain failed, backtrace limit exceeded";
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
      v19 = "[NWBonjourBrowseDescriptor domain]";
      v9 = "%{public}s nw_browse_descriptor_get_service_domain failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWBonjourBrowseDescriptor domain]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_browse_descriptor_get_service_domain failed, dumping backtrace:%{public}s", buf, 0x16u);
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
  v2 = [(NWBrowseDescriptor *)self internalDescriptor];
  bonjour_service_type = nw_browse_descriptor_get_bonjour_service_type(v2);

  if (bonjour_service_type)
  {
    v4 = nw_nsstring(bonjour_service_type);
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWBonjourBrowseDescriptor type]";
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
      v19 = "[NWBonjourBrowseDescriptor type]";
      v9 = "%{public}s nw_browse_descriptor_get_service_type failed";
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
      v19 = "[NWBonjourBrowseDescriptor type]";
      v9 = "%{public}s nw_browse_descriptor_get_service_type failed, backtrace limit exceeded";
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
      v19 = "[NWBonjourBrowseDescriptor type]";
      v9 = "%{public}s nw_browse_descriptor_get_service_type failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWBonjourBrowseDescriptor type]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_browse_descriptor_get_service_type failed, dumping backtrace:%{public}s", buf, 0x16u);
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
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(NWBonjourBrowseDescriptor *)self type:*&a3];
  v7 = [(NWBonjourBrowseDescriptor *)self domain];
  v8 = [v5 stringWithFormat:@"%@.%@", v6, v7];

  return v8;
}

+ (id)descriptorWithType:(id)a3 domain:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  bonjour_service = nw_browse_descriptor_create_bonjour_service([v6 UTF8String], objc_msgSend(v5, "UTF8String"));
  if (bonjour_service)
  {
    v8 = [(NWBrowseDescriptor *)NWBonjourBrowseDescriptor descriptorWithInternalDescriptor:bonjour_service];
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  v23 = "+[NWBonjourBrowseDescriptor descriptorWithType:domain:]";
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
      v23 = "+[NWBonjourBrowseDescriptor descriptorWithType:domain:]";
      v13 = "%{public}s nw_browse_descriptor_create_bonjour_service failed";
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
      v23 = "+[NWBonjourBrowseDescriptor descriptorWithType:domain:]";
      v13 = "%{public}s nw_browse_descriptor_create_bonjour_service failed, backtrace limit exceeded";
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
      v23 = "+[NWBonjourBrowseDescriptor descriptorWithType:domain:]";
      v13 = "%{public}s nw_browse_descriptor_create_bonjour_service failed, no backtrace";
      v18 = v11;
      v19 = v15;
LABEL_21:
      _os_log_impl(&dword_181A37000, v18, v19, v13, buf, 0xCu);
      goto LABEL_22;
    }

    if (v16)
    {
      *buf = 136446466;
      v23 = "+[NWBonjourBrowseDescriptor descriptorWithType:domain:]";
      v24 = 2082;
      v25 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v15, "%{public}s nw_browse_descriptor_create_bonjour_service failed, dumping backtrace:%{public}s", buf, 0x16u);
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

@end
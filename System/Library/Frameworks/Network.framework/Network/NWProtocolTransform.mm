@interface NWProtocolTransform
- (BOOL)disablePathFallback;
- (BOOL)fastOpenForceEnable;
- (BOOL)isEqual:(id)equal;
- (BOOL)noProxy;
- (BOOL)prohibitDirect;
- (BOOL)tfo;
- (BOOL)tfoNoCookie;
- (NWEndpoint)replacementEndpoint;
- (NWProtocolTransform)init;
- (NWProtocolTransform)initWithCTransform:(id)transform;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)privateDescription;
- (int)dataMode;
- (int)multipathService;
- (unint64_t)fallbackMode;
- (unint64_t)hash;
- (void)appendProtocol:(id)protocol atLevel:(int)level;
- (void)clearProtocolsAtLevel:(int)level;
- (void)disableProtocol:(nw_protocol_identifier *)protocol;
- (void)setDataMode:(int)mode;
- (void)setDisablePathFallback:(BOOL)fallback;
- (void)setFallbackMode:(unint64_t)mode;
- (void)setFastOpenForceEnable:(BOOL)enable;
- (void)setMultipathService:(int)service;
- (void)setNoProxy:(BOOL)proxy;
- (void)setProhibitDirect:(BOOL)direct;
- (void)setReplacementEndpoint:(id)endpoint;
- (void)setTfo:(BOOL)tfo;
- (void)setTfoNoCookie:(BOOL)cookie;
@end

@implementation NWProtocolTransform

- (void)setDisablePathFallback:(BOOL)fallback
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_no_path_fallback(internalTransform);
}

- (BOOL)disablePathFallback
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  no_path_fallback = nw_protocol_transform_get_no_path_fallback(internalTransform);

  return no_path_fallback;
}

- (void)setDataMode:(int)mode
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_data_mode(internalTransform, mode);
}

- (int)dataMode
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  data_mode = nw_protocol_transform_get_data_mode(internalTransform);

  return data_mode;
}

- (void)setFastOpenForceEnable:(BOOL)enable
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_fast_open_force_enable(internalTransform);
}

- (BOOL)fastOpenForceEnable
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  fast_open_force_enable = nw_protocol_transform_get_fast_open_force_enable(internalTransform);

  return fast_open_force_enable;
}

- (void)setTfoNoCookie:(BOOL)cookie
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_tfo_no_cookie(internalTransform);
}

- (BOOL)tfoNoCookie
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  tfo_no_cookie = nw_protocol_transform_get_tfo_no_cookie(internalTransform);

  return tfo_no_cookie;
}

- (void)setTfo:(BOOL)tfo
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_tfo(internalTransform);
}

- (BOOL)tfo
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  tfo = nw_protocol_transform_get_tfo(internalTransform);

  return tfo;
}

- (void)setMultipathService:(int)service
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_multipath_service(internalTransform, service);
}

- (int)multipathService
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  multipath_service = nw_protocol_transform_get_multipath_service(internalTransform);

  return multipath_service;
}

- (void)setNoProxy:(BOOL)proxy
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_no_proxy(internalTransform);
}

- (BOOL)noProxy
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  no_proxy = nw_protocol_transform_get_no_proxy(internalTransform);

  return no_proxy;
}

- (void)setProhibitDirect:(BOOL)direct
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_prohibit_direct(internalTransform, direct);
}

- (BOOL)prohibitDirect
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  prohibit_direct = nw_protocol_transform_get_prohibit_direct(internalTransform);

  return prohibit_direct;
}

- (void)setFallbackMode:(unint64_t)mode
{
  modeCopy = mode;
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_set_fallback_mode(internalTransform, modeCopy);
}

- (unint64_t)fallbackMode
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  fallback_mode = nw_protocol_transform_get_fallback_mode(internalTransform);

  return fallback_mode;
}

- (void)setReplacementEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  internalEndpoint = [endpointCopy internalEndpoint];

  nw_protocol_transform_replace_endpoint(internalTransform, internalEndpoint);
}

- (NWEndpoint)replacementEndpoint
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  v3 = nw_protocol_transform_copy_endpoint(internalTransform);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithInternalEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)appendProtocol:(id)protocol atLevel:(int)level
{
  v4 = *&level;
  protocolCopy = protocol;
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_append_protocol(internalTransform, v4, protocolCopy);
}

- (void)clearProtocolsAtLevel:(int)level
{
  v3 = *&level;
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_clear_protocols_at_level(internalTransform, v3);
}

- (void)disableProtocol:(nw_protocol_identifier *)protocol
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  nw_protocol_transform_disable_protocol(internalTransform, protocol);
}

- (unint64_t)hash
{
  internalTransform = [(NWProtocolTransform *)self internalTransform];
  v3 = internalTransform;
  if (internalTransform)
  {
    hash = _nw_protocol_transform_get_hash(internalTransform);
  }

  else
  {
    hash = 0;
  }

  return hash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    internalTransform = [(NWProtocolTransform *)self internalTransform];
    internalTransform2 = [v5 internalTransform];

    is_equal = nw_protocol_transform_is_equal(internalTransform, internalTransform2);
  }

  else
  {
    is_equal = 0;
  }

  return is_equal;
}

- (id)privateDescription
{
  v2 = [(NWProtocolTransform *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWProtocolTransform *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(NWProtocolTransform *)self fallbackMode]== 1)
  {
    v8 = @"Failover";
  }

  else if ([(NWProtocolTransform *)self fallbackMode]== 2)
  {
    v8 = @"RTT-Timer";
  }

  else
  {
    if ([(NWProtocolTransform *)self fallbackMode]!= 3)
    {
      goto LABEL_8;
    }

    v8 = @"Immediate";
  }

  [v7 appendPrettyObject:v8 withName:@"fallbackMode" indent:v5 showFullContent:contentCopy];
LABEL_8:
  replacementEndpoint = [(NWProtocolTransform *)self replacementEndpoint];
  [v7 appendPrettyObject:replacementEndpoint withName:@"replacementEndpoint" indent:v5 showFullContent:contentCopy];

  if ([(NWProtocolTransform *)self prohibitDirect])
  {
    [v7 appendPrettyBOOL:-[NWProtocolTransform prohibitDirect](self withName:"prohibitDirect") indent:{@"prohibitDirect", v5}];
  }

  if ([(NWProtocolTransform *)self noProxy])
  {
    [v7 appendPrettyBOOL:-[NWProtocolTransform noProxy](self withName:"noProxy") indent:{@"noProxy", v5}];
  }

  if ([(NWProtocolTransform *)self multipathService])
  {
    [v7 appendPrettyInt:-[NWProtocolTransform multipathService](self withName:"multipathService") indent:{@"multipathService", v5}];
  }

  return v7;
}

- (NWProtocolTransform)initWithCTransform:(id)transform
{
  v30 = *MEMORY[0x1E69E9840];
  transformCopy = transform;
  if (transformCopy)
  {
    v23.receiver = self;
    v23.super_class = NWProtocolTransform;
    v6 = [(NWProtocolTransform *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalTransform, transform);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWProtocolTransform initWithCTransform:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v15, &type, &v24))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v18 = "%{public}s [super init] failed";
LABEL_36:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "[NWProtocolTransform initWithCTransform:]";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v18 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v18 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_38:
    if (v15)
    {
      free(v15);
    }

    v7 = 0;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v27 = "[NWProtocolTransform initWithCTransform:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v10, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v13 = "%{public}s called with null cTransform";
LABEL_29:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v20 = os_log_type_enabled(v11, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v27 = "[NWProtocolTransform initWithCTransform:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null cTransform, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v13 = "%{public}s called with null cTransform, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWProtocolTransform initWithCTransform:]";
        v13 = "%{public}s called with null cTransform, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (NWProtocolTransform)init
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = NWProtocolTransform;
  v2 = [(NWProtocolTransform *)&v26 init];
  if (!v2)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v28 = "[NWProtocolTransform init]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_14;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v28 = "[NWProtocolTransform init]";
        v21 = "%{public}s [super init] failed";
LABEL_39:
        _os_log_impl(&dword_181A37000, v19, v20, v21, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v20 = type;
        v23 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v23)
          {
            *buf = 136446466;
            v28 = "[NWProtocolTransform init]";
            v29 = 2082;
            v30 = backtrace_string;
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          v14 = backtrace_string;
LABEL_13:
          free(v14);
          goto LABEL_14;
        }

        if (!v23)
        {
          goto LABEL_40;
        }

        *buf = 136446210;
        v28 = "[NWProtocolTransform init]";
        v21 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_39;
      }

      v19 = __nwlog_obj();
      v20 = type;
      if (os_log_type_enabled(v19, type))
      {
        *buf = 136446210;
        v28 = "[NWProtocolTransform init]";
        v21 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_39;
      }
    }

LABEL_40:

LABEL_14:
    if (!v7)
    {
LABEL_16:
      v5 = 0;
      goto LABEL_17;
    }

LABEL_15:
    free(v7);
    goto LABEL_16;
  }

  v3 = _nw_protocol_transform_create();
  internalTransform = v2->_internalTransform;
  v2->_internalTransform = v3;

  if (!v2->_internalTransform)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    *buf = 136446210;
    v28 = "[NWProtocolTransform init]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v7, &type, &v24))
    {
      goto LABEL_14;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "[NWProtocolTransform init]";
      v10 = "%{public}s nw_protocol_transform_create failed";
LABEL_20:
      v16 = v8;
      v17 = v9;
      goto LABEL_21;
    }

    if (v24 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      v9 = type;
      if (!os_log_type_enabled(v8, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "[NWProtocolTransform init]";
      v10 = "%{public}s nw_protocol_transform_create failed, backtrace limit exceeded";
      goto LABEL_20;
    }

    v11 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    v12 = type;
    v13 = os_log_type_enabled(v8, type);
    if (!v11)
    {
      if (!v13)
      {
LABEL_22:

        if (!v7)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      *buf = 136446210;
      v28 = "[NWProtocolTransform init]";
      v10 = "%{public}s nw_protocol_transform_create failed, no backtrace";
      v16 = v8;
      v17 = v12;
LABEL_21:
      _os_log_impl(&dword_181A37000, v16, v17, v10, buf, 0xCu);
      goto LABEL_22;
    }

    if (v13)
    {
      *buf = 136446466;
      v28 = "[NWProtocolTransform init]";
      v29 = 2082;
      v30 = v11;
      _os_log_impl(&dword_181A37000, v8, v12, "%{public}s nw_protocol_transform_create failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    v14 = v11;
    goto LABEL_13;
  }

  v5 = v2;
LABEL_17:

  return v5;
}

@end
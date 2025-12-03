@interface NWAddressEndpoint
+ (id)endpointWithAddress:(const sockaddr *)address;
+ (id)endpointWithHostname:(id)hostname port:(id)port;
- (NSData)addressData;
- (NSString)addressString;
- (NSString)addressStringNoPort;
- (const)address;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)ethernetAddress;
- (unint64_t)addressFamily;
@end

@implementation NWAddressEndpoint

- (id)ethernetAddress
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  ethernet_address = nw_endpoint_get_ethernet_address(internalEndpoint);

  if (ethernet_address)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%x:%x:%x:%x:%x:%x", *ethernet_address, ethernet_address[1], ethernet_address[2], ethernet_address[3], ethernet_address[4], ethernet_address[5]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)addressString
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  v3 = internalEndpoint;
  if (internalEndpoint)
  {
    description = _nw_endpoint_get_description(internalEndpoint);
  }

  else
  {
    description = "<NULL>";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:description];
  if (!v5)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v7 = _os_log_send_and_compose_impl();

    result = __nwlog_should_abort(v7);
    if (result)
    {
      __break(1u);
      return result;
    }

    free(v7);
  }

  return v5;
}

+ (id)endpointWithAddress:(const sockaddr *)address
{
  v28 = *MEMORY[0x1E69E9840];
  address = nw_endpoint_create_address(address);
  addressCopy = address;
  if (!address)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    *buf = 136446210;
    v25 = "+[NWAddressEndpoint endpointWithAddress:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v9, &type, &v22))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s nw_endpoint_create_address failed", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v19, "%{public}s nw_endpoint_create_address failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v15 = type;
    v16 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v16)
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s nw_endpoint_create_address failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v16)
    {
      *buf = 136446466;
      v25 = "+[NWAddressEndpoint endpointWithAddress:]";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v15, "%{public}s nw_endpoint_create_address failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_23;
  }

  addressCopy2 = address;
  v6 = _nw_endpoint_get_type(addressCopy2);

  if (v6 == 1)
  {
    v7 = [NWEndpoint endpointWithInternalEndpoint:addressCopy2];
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *buf = 136446210;
  v25 = "+[NWAddressEndpoint endpointWithAddress:]";
  v9 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v9, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v13 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s NWAddressEndpoint sockaddr created a non-address endpoint", buf, 0xCu);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      v20 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s NWAddressEndpoint sockaddr created a non-address endpoint, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v17 = type;
    v18 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v18)
      {
        *buf = 136446210;
        v25 = "+[NWAddressEndpoint endpointWithAddress:]";
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s NWAddressEndpoint sockaddr created a non-address endpoint, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "+[NWAddressEndpoint endpointWithAddress:]";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v10, v17, "%{public}s NWAddressEndpoint sockaddr created a non-address endpoint, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_23:

    free(backtrace_string);
    if (!v9)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (v9)
  {
LABEL_38:
    free(v9);
  }

LABEL_39:
  v7 = 0;
LABEL_40:

  return v7;
}

+ (id)endpointWithHostname:(id)hostname port:(id)port
{
  v34 = *MEMORY[0x1E69E9840];
  hostnameCopy = hostname;
  portCopy = port;
  host = nw_endpoint_create_host([hostnameCopy UTF8String], objc_msgSend(portCopy, "UTF8String"));
  v8 = host;
  if (!host)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    *buf = 136446210;
    v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
    v13 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v13, &type, &v26))
    {
      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nw_endpoint_create_host failed", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v26 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v23 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        _os_log_impl(&dword_181A37000, v14, v23, "%{public}s nw_endpoint_create_host failed, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v19 = type;
    v20 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v20)
      {
        *buf = 136446210;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s nw_endpoint_create_host failed, no backtrace", buf, 0xCu);
      }

      goto LABEL_36;
    }

    if (v20)
    {
      *buf = 136446466;
      v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
      v30 = 2082;
      v31 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v19, "%{public}s nw_endpoint_create_host failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_23;
  }

  v9 = host;
  v10 = _nw_endpoint_get_type(v9);

  if (v10 == 1)
  {
    v11 = [NWEndpoint endpointWithInternalEndpoint:v9];
    goto LABEL_40;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v16 = gLogObj;
  *buf = 136446466;
  v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
  v30 = 2114;
  v31 = hostnameCopy;
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (__nwlog_fault(v13, &type, &v26))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v17 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446466;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        v30 = 2114;
        v31 = hostnameCopy;
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s NWAddressEndpoint created with non-address hostname %{public}@", buf, 0x16u);
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v26 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v24 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446466;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        v30 = 2114;
        v31 = hostnameCopy;
        _os_log_impl(&dword_181A37000, v14, v24, "%{public}s NWAddressEndpoint created with non-address hostname %{public}@, backtrace limit exceeded", buf, 0x16u);
      }

      goto LABEL_36;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v21 = type;
    v22 = os_log_type_enabled(v14, type);
    if (!backtrace_string)
    {
      if (v22)
      {
        *buf = 136446466;
        v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
        v30 = 2114;
        v31 = hostnameCopy;
        _os_log_impl(&dword_181A37000, v14, v21, "%{public}s NWAddressEndpoint created with non-address hostname %{public}@, no backtrace", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if (v22)
    {
      *buf = 136446722;
      v29 = "+[NWAddressEndpoint endpointWithHostname:port:]";
      v30 = 2114;
      v31 = hostnameCopy;
      v32 = 2082;
      v33 = backtrace_string;
      _os_log_impl(&dword_181A37000, v14, v21, "%{public}s NWAddressEndpoint created with non-address hostname %{public}@, dumping backtrace:%{public}s", buf, 0x20u);
    }

LABEL_23:

    free(backtrace_string);
    if (!v13)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (v13)
  {
LABEL_38:
    free(v13);
  }

LABEL_39:
  v11 = 0;
LABEL_40:

  return v11;
}

- (unint64_t)addressFamily
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  address_family = nw_endpoint_get_address_family(internalEndpoint);

  return address_family;
}

- (const)address
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  address = nw_endpoint_get_address(internalEndpoint);

  return address;
}

- (NSString)addressStringNoPort
{
  v7 = *MEMORY[0x1E69E9840];
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  address = nw_endpoint_get_address(internalEndpoint);
  if (address)
  {
    v4 = 0;
    if (!getnameinfo(address, address->sa_len, v6, 0x46u, 0, 0, 10))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)addressData
{
  v22 = *MEMORY[0x1E69E9840];
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  address = nw_endpoint_get_address(internalEndpoint);

  if (address)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:address length:address->sa_len];
    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v5 = gLogObj;
  *buf = 136446210;
  v19 = "[NWAddressEndpoint addressData]";
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
      v19 = "[NWAddressEndpoint addressData]";
      v9 = "%{public}s nw_endpoint_get_address failed";
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
      v19 = "[NWAddressEndpoint addressData]";
      v9 = "%{public}s nw_endpoint_get_address failed, backtrace limit exceeded";
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
      v19 = "[NWAddressEndpoint addressData]";
      v9 = "%{public}s nw_endpoint_get_address failed, no backtrace";
      v14 = v7;
      v15 = v11;
LABEL_21:
      _os_log_impl(&dword_181A37000, v14, v15, v9, buf, 0xCu);
      goto LABEL_22;
    }

    if (v12)
    {
      *buf = 136446466;
      v19 = "[NWAddressEndpoint addressData]";
      v20 = 2082;
      v21 = backtrace_string;
      _os_log_impl(&dword_181A37000, v7, v11, "%{public}s nw_endpoint_get_address failed, dumping backtrace:%{public}s", buf, 0x16u);
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

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  v4 = *&indent;
  v6 = [(NWAddressEndpoint *)self ethernetAddress:*&indent];
  parentEndpointDomain = [(NWEndpoint *)self parentEndpointDomain];
  v8 = parentEndpointDomain | v6;

  if (v8)
  {
    addressString2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    addressString = [(NWAddressEndpoint *)self addressString];
    [addressString2 appendPrettyObject:addressString withName:@"address" indent:v4 showFullContent:1];

    [addressString2 appendPrettyObject:v6 withName:@"ethernetAddress" indent:v4 showFullContent:1];
    interface = [(NWEndpoint *)self interface];
    [addressString2 appendPrettyObject:interface withName:@"interface" indent:v4 showFullContent:1];

    parentEndpointDomain2 = [(NWEndpoint *)self parentEndpointDomain];
    [addressString2 appendPrettyObject:parentEndpointDomain2 withName:@"parentEndpointDomain" indent:v4 showFullContent:1];
  }

  else
  {
    addressString2 = [(NWAddressEndpoint *)self addressString];
  }

  return addressString2;
}

@end
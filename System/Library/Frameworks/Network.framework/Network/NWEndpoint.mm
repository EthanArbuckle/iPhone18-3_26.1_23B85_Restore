@interface NWEndpoint
+ (NWEndpoint)endpointWithInternalEndpoint:(id)endpoint;
+ (NWEndpoint)endpointWithProtocolBufferData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSData)txtRecord;
- (NSString)parentEndpointDomain;
- (NSString)privateDescription;
- (NWEndpoint)initWithCoder:(id)coder;
- (NWEndpoint)initWithEndpoint:(id)endpoint;
- (NWInterface)interface;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createProtocolBufferObject;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)encodedData;
- (int64_t)remoteInterfaceType;
- (unint64_t)hash;
- (unsigned)alternatePort;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternatePort:(unsigned __int16)port;
- (void)setInterface:(id)interface;
- (void)setRemoteInterfaceType:(int64_t)type;
- (void)setTxtRecord:(id)record;
@end

@implementation NWEndpoint

- (id)description
{
  v2 = [(NWEndpoint *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (NSData)txtRecord
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  v3 = nw_endpoint_copy_txt_record(internalEndpoint);

  if (!v3 || ((isa = v3[1].isa, v5 = v3[2].isa, isa) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:isa length:v5];
  }

  return v7;
}

- (NSString)parentEndpointDomain
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  parent_endpoint_domain = nw_endpoint_get_parent_endpoint_domain(internalEndpoint);

  if (parent_endpoint_domain)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:parent_endpoint_domain];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)hash
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  v3 = internalEndpoint;
  if (internalEndpoint)
  {
    hash = _nw_endpoint_get_hash(internalEndpoint);
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
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    internalEndpoint = [(NWEndpoint *)self internalEndpoint];
    internalEndpoint2 = [v5 internalEndpoint];

    is_equal = nw_endpoint_is_equal(internalEndpoint, internalEndpoint2, 1);
  }

  else
  {
    is_equal = 0;
  }

  return is_equal;
}

- (id)createProtocolBufferObject
{
  v3 = objc_alloc_init(NWPBEndpoint);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_alloc_init(NWPBServiceEndpoint);
    if (v3)
    {
      objc_storeStrong(&v3->_service, v4);
    }

    name = [(NWEndpoint *)self name];
    if (v3)
    {
      v6 = v3->_service;
      v7 = v6;
      if (v6)
      {
        objc_storeStrong(&v6->_name, name);
      }
    }

    else
    {
      v7 = 0;
    }

    type = [(NWEndpoint *)self type];
    if (v3)
    {
      v9 = v3->_service;
      v10 = v9;
      if (v9)
      {
        objc_storeStrong(&v9->_type, type);
      }
    }

    else
    {
      v10 = 0;
    }

    domain = [(NWEndpoint *)self domain];
    if (v3)
    {
      v12 = v3->_service;
      if (v12)
      {
        v13 = 8;
LABEL_28:
        objc_storeStrong((&v12->super.super.isa + v13), domain);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_37:
    v12 = 0;
    goto LABEL_29;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    v18 = objc_alloc_init(NWPBAddressEndpoint);
    if (v3)
    {
      objc_storeStrong(&v3->_address, v18);
    }

    domain = [(NWEndpoint *)self addressData];
    if (v3)
    {
      v12 = v3->_address;
      if (v12)
      {
        v13 = 8;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    goto LABEL_37;
  }

  v14 = objc_alloc_init(NWPBHostEndpoint);
  if (v3)
  {
    objc_storeStrong(&v3->_host, v14);
  }

  hostname = [(NWEndpoint *)self hostname];
  if (v3)
  {
    v16 = v3->_host;
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_hostname, hostname);
    }
  }

  else
  {
    v17 = 0;
  }

  domain = [(NWEndpoint *)self port];
  if (!v3)
  {
    goto LABEL_37;
  }

  v12 = v3->_host;
  if (v12)
  {
    v13 = 16;
    goto LABEL_28;
  }

LABEL_29:

LABEL_30:
  if ([(NWEndpoint *)self isMemberOfClass:objc_opt_class()])
  {
    txtRecord = [(NWEndpoint *)self txtRecord];
    if (v3)
    {
      objc_storeStrong(&v3->_txtRecord, txtRecord);
    }
  }

  interface = [(NWEndpoint *)self interface];
  createProtocolBufferObject = [interface createProtocolBufferObject];
  if (v3)
  {
    objc_storeStrong(&v3->_interface, createProtocolBufferObject);
  }

  return v3;
}

- (void)setAlternatePort:(unsigned __int16)port
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  nw_endpoint_set_alternate_port(internalEndpoint, port);
}

- (unsigned)alternatePort
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  alternate_port = nw_endpoint_get_alternate_port(internalEndpoint);

  return alternate_port;
}

- (void)setTxtRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy bytes] && objc_msgSend(recordCopy, "length"))
  {
    internalEndpoint2 = nw_txt_record_create_with_bytes([recordCopy bytes], objc_msgSend(recordCopy, "length"));
    internalEndpoint = [(NWEndpoint *)self internalEndpoint];
    nw_endpoint_set_txt_record(internalEndpoint, internalEndpoint2);
  }

  else
  {
    internalEndpoint2 = [(NWEndpoint *)self internalEndpoint];
    nw_endpoint_set_txt_record(internalEndpoint2, 0);
  }
}

- (void)setRemoteInterfaceType:(int64_t)type
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  nw_endpoint_set_remote_interface_type(internalEndpoint, type);
}

- (int64_t)remoteInterfaceType
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  remote_interface_type = nw_endpoint_get_remote_interface_type(internalEndpoint);

  return remote_interface_type;
}

- (void)setInterface:(id)interface
{
  interfaceCopy = interface;
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  internalInterface = [interfaceCopy internalInterface];

  nw_endpoint_set_interface(internalEndpoint, internalInterface);
}

- (NWInterface)interface
{
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  v3 = nw_endpoint_copy_interface(internalEndpoint);

  if (v3)
  {
    v4 = [[NWInterface alloc] initWithInterface:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)privateDescription
{
  v2 = [(NWEndpoint *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NWEndpoint *)self internalEndpoint:*&indent];
  v6 = v5;
  if (v5)
  {
    description = _nw_endpoint_get_description(v5);
  }

  else
  {
    description = "<NULL>";
  }

  v8 = [v4 stringWithUTF8String:description];

  return v8;
}

- (id)encodedData
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  *buf = 136446210;
  v16 = "[NWEndpoint encodedData]";
  v3 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v3, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v16 = "[NWEndpoint encodedData]";
      v6 = "%{public}s encodedData must be overridden";
LABEL_15:
      v11 = v4;
      v12 = v5;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v4 = gLogObj;
      v5 = type;
      if (!os_log_type_enabled(v4, type))
      {
        goto LABEL_17;
      }

      *buf = 136446210;
      v16 = "[NWEndpoint encodedData]";
      v6 = "%{public}s encodedData must be overridden, backtrace limit exceeded";
      goto LABEL_15;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    v8 = type;
    v9 = os_log_type_enabled(v4, type);
    if (!backtrace_string)
    {
      if (!v9)
      {
LABEL_17:

        if (!v3)
        {
          return 0;
        }

        goto LABEL_11;
      }

      *buf = 136446210;
      v16 = "[NWEndpoint encodedData]";
      v6 = "%{public}s encodedData must be overridden, no backtrace";
      v11 = v4;
      v12 = v8;
LABEL_16:
      _os_log_impl(&dword_181A37000, v11, v12, v6, buf, 0xCu);
      goto LABEL_17;
    }

    if (v9)
    {
      *buf = 136446466;
      v16 = "[NWEndpoint encodedData]";
      v17 = 2082;
      v18 = backtrace_string;
      _os_log_impl(&dword_181A37000, v4, v8, "%{public}s encodedData must be overridden, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v3)
  {
LABEL_11:
    free(v3);
  }

  return 0;
}

- (NWEndpoint)initWithEndpoint:(id)endpoint
{
  v30 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  if (endpointCopy)
  {
    v23.receiver = self;
    v23.super_class = NWEndpoint;
    v6 = [(NWEndpoint *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalEndpoint, endpoint);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWEndpoint initWithEndpoint:]";
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
        v27 = "[NWEndpoint initWithEndpoint:]";
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
          v27 = "[NWEndpoint initWithEndpoint:]";
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
        v27 = "[NWEndpoint initWithEndpoint:]";
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
        v27 = "[NWEndpoint initWithEndpoint:]";
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
  v27 = "[NWEndpoint initWithEndpoint:]";
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
        v27 = "[NWEndpoint initWithEndpoint:]";
        v13 = "%{public}s called with null internalEndpoint";
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
            v27 = "[NWEndpoint initWithEndpoint:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null internalEndpoint, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWEndpoint initWithEndpoint:]";
        v13 = "%{public}s called with null internalEndpoint, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWEndpoint initWithEndpoint:]";
        v13 = "%{public}s called with null internalEndpoint, backtrace limit exceeded";
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  v6 = [v4 initWithEndpoint:internalEndpoint];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v33 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  internalEndpoint = [(NWEndpoint *)self internalEndpoint];
  if (internalEndpoint)
  {
    v6 = internalEndpoint;
    v7 = _nw_endpoint_copy_dictionary(internalEndpoint);

    if (v7)
    {
      v8 = MEMORY[0x1E695DF90];
      v9 = v7;
      dictionary = [v8 dictionary];
      *applier = MEMORY[0x1E69E9820];
      *&applier[8] = 3221225472;
      *&applier[16] = __NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke;
      v31 = &unk_1E6A39980;
      v11 = dictionary;
      v32 = v11;
      xpc_dictionary_apply(v9, applier);

      if (v11)
      {
        [coderCopy encodeObject:v11 forKey:@"dictionary"];
LABEL_29:

        goto LABEL_30;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v20 = gLogObj;
      *applier = 136446210;
      *&applier[4] = "[NWEndpoint encodeWithCoder:]";
      v21 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v28 = 0;
      if (__nwlog_fault(v21, &type, &v28))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = type;
          if (os_log_type_enabled(v22, type))
          {
            *applier = 136446210;
            *&applier[4] = "[NWEndpoint encodeWithCoder:]";
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed", applier, 0xCu);
          }
        }

        else if (v28 == 1)
        {
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v25 = type;
          v26 = os_log_type_enabled(v22, type);
          if (backtrace_string)
          {
            if (v26)
            {
              *applier = 136446466;
              *&applier[4] = "[NWEndpoint encodeWithCoder:]";
              *&applier[12] = 2082;
              *&applier[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v22, v25, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
            }

            free(backtrace_string);
            if (!v21)
            {
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          if (v26)
          {
            *applier = 136446210;
            *&applier[4] = "[NWEndpoint encodeWithCoder:]";
            _os_log_impl(&dword_181A37000, v22, v25, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, no backtrace", applier, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v27 = type;
          if (os_log_type_enabled(v22, type))
          {
            *applier = 136446210;
            *&applier[4] = "[NWEndpoint encodeWithCoder:]";
            _os_log_impl(&dword_181A37000, v22, v27, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, backtrace limit exceeded", applier, 0xCu);
          }
        }
      }

      if (!v21)
      {
        goto LABEL_29;
      }

LABEL_28:
      free(v21);
      goto LABEL_29;
    }
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  *applier = 136446210;
  *&applier[4] = "[NWEndpoint encodeWithCoder:]";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (__nwlog_fault(v13, &type, &v28))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *applier = 136446210;
        *&applier[4] = "[NWEndpoint encodeWithCoder:]";
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s nw_endpoint_copy_dictionary failed", applier, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      v16 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v17 = type;
      v18 = os_log_type_enabled(v14, type);
      if (v16)
      {
        if (v18)
        {
          *applier = 136446466;
          *&applier[4] = "[NWEndpoint encodeWithCoder:]";
          *&applier[12] = 2082;
          *&applier[14] = v16;
          _os_log_impl(&dword_181A37000, v14, v17, "%{public}s nw_endpoint_copy_dictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
        }

        free(v16);
        if (!v13)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      if (v18)
      {
        *applier = 136446210;
        *&applier[4] = "[NWEndpoint encodeWithCoder:]";
        _os_log_impl(&dword_181A37000, v14, v17, "%{public}s nw_endpoint_copy_dictionary failed, no backtrace", applier, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v14 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v14, type))
      {
        *applier = 136446210;
        *&applier[4] = "[NWEndpoint encodeWithCoder:]";
        _os_log_impl(&dword_181A37000, v14, v19, "%{public}s nw_endpoint_copy_dictionary failed, backtrace limit exceeded", applier, 0xCu);
      }
    }
  }

  if (v13)
  {
LABEL_11:
    free(v13);
  }

LABEL_12:
  v9 = 0;
LABEL_30:
}

- (NWEndpoint)initWithCoder:(id)coder
{
  v58 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = NWEndpoint;
  v5 = [(NWEndpoint *)&v53 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 initWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"dictionary"];
    v14 = v13;
    if (v13)
    {
      XPCDictionaryFromNSDictionary = NWUtilsCreateXPCDictionaryFromNSDictionary(v13);
      v16 = XPCDictionaryFromNSDictionary;
      if (XPCDictionaryFromNSDictionary)
      {
        v17 = XPCDictionaryFromNSDictionary;
        v18 = _nw_endpoint_create_from_dictionary(v17);

        [(NWEndpoint *)v5 setInternalEndpoint:v18];
        internalEndpoint = [(NWEndpoint *)v5 internalEndpoint];
        LODWORD(v18) = internalEndpoint == 0;

        if (!v18)
        {
          v20 = v5;
LABEL_62:

          goto LABEL_63;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        *buf = 136446210;
        v55 = "[NWEndpoint initWithCoder:]";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v26, &type, &v51))
        {
LABEL_59:
          if (!v26)
          {
LABEL_61:
            v20 = 0;
            goto LABEL_62;
          }

LABEL_60:
          free(v26);
          goto LABEL_61;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v33 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v33, "%{public}s nw_endpoint_create_from_dictionary failed", buf, 0xCu);
          }

LABEL_58:

          goto LABEL_59;
        }

        if (v51 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v41 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v41, "%{public}s nw_endpoint_create_from_dictionary failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_58;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v38 = type;
        v39 = os_log_type_enabled(v27, type);
        if (!backtrace_string)
        {
          if (v39)
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v38, "%{public}s nw_endpoint_create_from_dictionary failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_58;
        }

        if (v39)
        {
          *buf = 136446466;
          v55 = "[NWEndpoint initWithCoder:]";
          v56 = 2082;
          v57 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v38, "%{public}s nw_endpoint_create_from_dictionary failed, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        *buf = 136446210;
        v55 = "[NWEndpoint initWithCoder:]";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v26, &type, &v51))
        {
          goto LABEL_59;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v28, "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed", buf, 0xCu);
          }

          goto LABEL_58;
        }

        if (v51 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v40 = type;
          if (os_log_type_enabled(v27, type))
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v40, "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_58;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v35 = type;
        v36 = os_log_type_enabled(v27, type);
        if (!backtrace_string)
        {
          if (v36)
          {
            *buf = 136446210;
            v55 = "[NWEndpoint initWithCoder:]";
            _os_log_impl(&dword_181A37000, v27, v35, "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, no backtrace", buf, 0xCu);
          }

          goto LABEL_58;
        }

        if (v36)
        {
          *buf = 136446466;
          v55 = "[NWEndpoint initWithCoder:]";
          v56 = 2082;
          v57 = backtrace_string;
          _os_log_impl(&dword_181A37000, v27, v35, "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, dumping backtrace:%{public}s", buf, 0x16u);
        }
      }

      free(backtrace_string);
      if (!v26)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v55 = "[NWEndpoint initWithCoder:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v22, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v55 = "[NWEndpoint initWithCoder:]";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s decodeObjectOfClasses:forKey failed", buf, 0xCu);
        }
      }

      else if (v51 == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v30 = type;
        v31 = os_log_type_enabled(v23, type);
        if (v29)
        {
          if (v31)
          {
            *buf = 136446466;
            v55 = "[NWEndpoint initWithCoder:]";
            v56 = 2082;
            v57 = v29;
            _os_log_impl(&dword_181A37000, v23, v30, "%{public}s decodeObjectOfClasses:forKey failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          if (!v22)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        if (v31)
        {
          *buf = 136446210;
          v55 = "[NWEndpoint initWithCoder:]";
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s decodeObjectOfClasses:forKey failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v37 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v55 = "[NWEndpoint initWithCoder:]";
          _os_log_impl(&dword_181A37000, v23, v37, "%{public}s decodeObjectOfClasses:forKey failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v22)
    {
LABEL_52:
      v20 = 0;
LABEL_63:

      goto LABEL_64;
    }

LABEL_51:
    free(v22);
    goto LABEL_52;
  }

  v43 = __nwlog_obj();
  *buf = 136446210;
  v55 = "[NWEndpoint initWithCoder:]";
  v44 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v44, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v45 = __nwlog_obj();
      v46 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v55 = "[NWEndpoint initWithCoder:]";
        _os_log_impl(&dword_181A37000, v45, v46, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v51 == 1)
    {
      v47 = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v48 = type;
      v49 = os_log_type_enabled(v45, type);
      if (v47)
      {
        if (v49)
        {
          *buf = 136446466;
          v55 = "[NWEndpoint initWithCoder:]";
          v56 = 2082;
          v57 = v47;
          _os_log_impl(&dword_181A37000, v45, v48, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v47);
        goto LABEL_81;
      }

      if (v49)
      {
        *buf = 136446210;
        v55 = "[NWEndpoint initWithCoder:]";
        _os_log_impl(&dword_181A37000, v45, v48, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v45 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v45, type))
      {
        *buf = 136446210;
        v55 = "[NWEndpoint initWithCoder:]";
        _os_log_impl(&dword_181A37000, v45, v50, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_81:
  if (v44)
  {
    free(v44);
  }

  v20 = 0;
LABEL_64:

  return v20;
}

+ (NWEndpoint)endpointWithProtocolBufferData:(id)data
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [[NWPBEndpoint alloc] initWithData:dataCopy];

  if (!v4)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v42 = "+[NWEndpoint endpointWithProtocolBufferData:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v39 = 0;
    if (__nwlog_fault(v18, &type, &v39))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v42 = "+[NWEndpoint endpointWithProtocolBufferData:]";
        v21 = "%{public}s [NWPBEndpoint initWithData:] failed";
LABEL_30:
        v34 = v19;
        v35 = v20;
        goto LABEL_31;
      }

      if (v39 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v20 = type;
        if (!os_log_type_enabled(v19, type))
        {
          goto LABEL_32;
        }

        *buf = 136446210;
        v42 = "+[NWEndpoint endpointWithProtocolBufferData:]";
        v21 = "%{public}s [NWPBEndpoint initWithData:] failed, backtrace limit exceeded";
        goto LABEL_30;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v32 = type;
      v33 = os_log_type_enabled(v19, type);
      if (!backtrace_string)
      {
        if (!v33)
        {
LABEL_32:

          if (!v18)
          {
            goto LABEL_34;
          }

LABEL_33:
          free(v18);
          goto LABEL_34;
        }

        *buf = 136446210;
        v42 = "+[NWEndpoint endpointWithProtocolBufferData:]";
        v21 = "%{public}s [NWPBEndpoint initWithData:] failed, no backtrace";
        v34 = v19;
        v35 = v32;
LABEL_31:
        _os_log_impl(&dword_181A37000, v34, v35, v21, buf, 0xCu);
        goto LABEL_32;
      }

      if (v33)
      {
        *buf = 136446466;
        v42 = "+[NWEndpoint endpointWithProtocolBufferData:]";
        v43 = 2082;
        v44 = backtrace_string;
        _os_log_impl(&dword_181A37000, v19, v32, "%{public}s [NWPBEndpoint initWithData:] failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v18)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  service = v4->_service;
  if (!service)
  {
    host = v4->_host;
    if (host)
    {
      v6 = host;
      v7 = v6[1];
      v23 = v4->_host;
      v9 = v23;
      if (v23)
      {
        port = v23->_port;
      }

      else
      {
        port = 0;
      }

      v11 = port;
      v16 = [NWHostEndpoint endpointWithHostname:v7 port:v11];
      goto LABEL_16;
    }

    address = v4->_address;
    if (address)
    {
      v38 = address;
      v6 = v38[1];

      v16 = +[NWAddressEndpoint endpointWithAddress:](NWAddressEndpoint, "endpointWithAddress:", [v6 bytes]);
      goto LABEL_17;
    }

LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  v6 = service;
  v7 = v6[2];
  v8 = v4->_service;
  v9 = v8;
  if (v8)
  {
    v10 = v8->_type;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = v4->_service;
  v13 = v12;
  if (v12)
  {
    domain = v12->_domain;
  }

  else
  {
    domain = 0;
  }

  v15 = domain;
  v16 = [NWBonjourServiceEndpoint endpointWithName:v7 type:v11 domain:v15];

LABEL_16:
LABEL_17:

  txtRecord = v4->_txtRecord;
  if (txtRecord)
  {
    v26 = txtRecord;
    [v16 setTxtRecord:v26];
  }

  interface = v4->_interface;
  if (interface)
  {
    v28 = interface;
    data = [(NWPBInterface *)v28 data];
    v30 = [NWInterface interfaceWithProtocolBufferData:data];
    [v16 setInterface:v30];
  }

LABEL_35:

  return v16;
}

+ (NWEndpoint)endpointWithInternalEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [NWEndpoint copyClassForEndpointType:nw_endpoint_get_type(endpointCopy)];
  v5 = [[v4 alloc] initWithEndpoint:endpointCopy];

  return v5;
}

@end
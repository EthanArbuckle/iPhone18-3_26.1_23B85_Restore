@interface NWInterface
+ (NWInterface)interfaceWithProtocolBufferData:(id)data;
+ (id)descriptionForSubtype:(int64_t)subtype;
+ (id)descriptionForType:(int64_t)type;
- (BOOL)hasDNS;
- (BOOL)hasNAT64;
- (BOOL)isConstrained;
- (BOOL)isDeepEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpensive;
- (BOOL)isIPv4Routable;
- (BOOL)isIPv6Routable;
- (BOOL)isShallowEqual:(id)equal;
- (BOOL)isUltraConstrained;
- (BOOL)supportsMulticast;
- (NSString)interfaceName;
- (NSString)privateDescription;
- (NSString)typeString;
- (NWInterface)delegateInterface;
- (NWInterface)initWithCoder:(id)coder;
- (NWInterface)initWithInterface:(id)interface;
- (NWInterface)initWithInterfaceIndex:(unint64_t)index;
- (NWInterface)initWithInterfaceIndex:(unint64_t)index interfaceName:(id)name;
- (NWInterface)initWithInterfaceName:(id)name;
- (id)copyLocalAddressForDefaultIPv4;
- (id)copyLocalAddressForDefaultIPv6;
- (id)copyLocalAddressForRemoteAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createProtocolBufferObject;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (id)ipv4Broadcast;
- (id)ipv4Netmask;
- (int64_t)mtu;
- (int64_t)subtype;
- (int64_t)type;
- (unint64_t)generation;
- (unint64_t)hash;
- (unint64_t)interfaceIndex;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NWInterface

- (int64_t)type
{
  internalInterface = [(NWInterface *)self internalInterface];
  type = nw_interface_get_type(internalInterface);

  return type;
}

- (int64_t)subtype
{
  internalInterface = [(NWInterface *)self internalInterface];
  subtype = nw_interface_get_subtype(internalInterface);

  return subtype;
}

- (NSString)interfaceName
{
  internalInterface = [(NWInterface *)self internalInterface];
  if (internalInterface && (v3 = internalInterface, name = _nw_interface_get_name(internalInterface), v3, name))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)interfaceIndex
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = internalInterface;
  if (internalInterface)
  {
    index = _nw_interface_get_index(internalInterface);
  }

  else
  {
    index = 0;
  }

  return index;
}

- (BOOL)isConstrained
{
  internalInterface = [(NWInterface *)self internalInterface];
  is_constrained = nw_interface_is_constrained(internalInterface);

  return is_constrained;
}

- (BOOL)isExpensive
{
  internalInterface = [(NWInterface *)self internalInterface];
  is_expensive = nw_interface_is_expensive(internalInterface);

  return is_expensive;
}

- (BOOL)isUltraConstrained
{
  internalInterface = [(NWInterface *)self internalInterface];
  is_ultra_constrained = nw_interface_is_ultra_constrained(internalInterface);

  return is_ultra_constrained;
}

- (unint64_t)generation
{
  internalInterface = [(NWInterface *)self internalInterface];
  generation = nw_interface_get_generation(internalInterface);

  return generation;
}

- (int64_t)mtu
{
  internalInterface = [(NWInterface *)self internalInterface];
  mtu = nw_interface_get_mtu(internalInterface);

  return mtu;
}

- (id)ipv4Netmask
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = nw_interface_copy_ipv4_netmask_endpoint(internalInterface);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithCEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ipv4Broadcast
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = nw_interface_copy_ipv4_broadcast_endpoint(internalInterface);

  if (v3)
  {
    v4 = [NWEndpoint endpointWithCEndpoint:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)supportsMulticast
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = nw_interface_supports_multicast(internalInterface);

  return v3;
}

- (BOOL)hasDNS
{
  internalInterface = [(NWInterface *)self internalInterface];
  has_dns = nw_interface_has_dns(internalInterface);

  return has_dns;
}

- (BOOL)hasNAT64
{
  internalInterface = [(NWInterface *)self internalInterface];
  has_nat64 = nw_interface_has_nat64(internalInterface);

  return has_nat64;
}

- (BOOL)isIPv4Routable
{
  internalInterface = [(NWInterface *)self internalInterface];
  is_ipv4_routable = nw_interface_is_ipv4_routable(internalInterface);

  return is_ipv4_routable;
}

- (BOOL)isIPv6Routable
{
  internalInterface = [(NWInterface *)self internalInterface];
  is_ipv6_routable = nw_interface_is_ipv6_routable(internalInterface);

  return is_ipv6_routable;
}

- (id)createProtocolBufferObject
{
  v3 = objc_alloc_init(NWPBInterface);
  interfaceName = [(NWInterface *)self interfaceName];
  v5 = interfaceName;
  if (v3)
  {
    objc_storeStrong(&v3->_name, interfaceName);

    interfaceIndex = [(NWInterface *)self interfaceIndex];
    *&v3->_has |= 4u;
    v3->_index = interfaceIndex;
  }

  else
  {

    [(NWInterface *)self interfaceIndex];
  }

  delegateInterface = [(NWInterface *)self delegateInterface];
  interfaceIndex2 = [delegateInterface interfaceIndex];
  if (v3)
  {
    *&v3->_has |= 1u;
    v3->_delegateIndex = interfaceIndex2;

    v9 = [(NWInterface *)self mtu];
    *&v3->_has |= 8u;
    v3->_mtu = v9;
    generation = [(NWInterface *)self generation];
    *&v3->_has |= 2u;
    v3->_generation = generation;
    type = [(NWInterface *)self type];
    *&v3->_has |= 0x20u;
    v3->_type = type;
    subtype = [(NWInterface *)self subtype];
    *&v3->_has |= 0x10u;
    v3->_subtype = subtype;
    isExpensive = [(NWInterface *)self isExpensive];
    *&v3->_has |= 0x40u;
    v3->_expensive = isExpensive;
  }

  else
  {

    [(NWInterface *)self mtu];
    [(NWInterface *)self generation];
    [(NWInterface *)self type];
    [(NWInterface *)self subtype];
    [(NWInterface *)self isExpensive];
  }

  return v3;
}

- (NSString)typeString
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = [NWInterface descriptionForType:nw_interface_get_type(internalInterface)];

  return v3;
}

- (BOOL)isDeepEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  equalCopy = equal;
  internalInterface = [(NWInterface *)self internalInterface];
  internalInterface2 = [equalCopy internalInterface];

  LOBYTE(equalCopy) = _nw_interface_deep_compare(internalInterface, internalInterface2);
  return equalCopy;
}

- (BOOL)isShallowEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  equalCopy = equal;
  internalInterface = [(NWInterface *)self internalInterface];
  internalInterface2 = [equalCopy internalInterface];

  LOBYTE(equalCopy) = _nw_interface_shallow_compare(internalInterface, internalInterface2);
  return equalCopy;
}

- (NWInterface)delegateInterface
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = nw_interface_copy_delegate_interface(internalInterface);

  if (v3)
  {
    v4 = [[NWInterface alloc] initWithInterfaceIndex:_nw_interface_get_index(v3)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)privateDescription
{
  v2 = [(NWInterface *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWInterface *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [NWInterface descriptionForType:[(NWInterface *)self type]];
  [v7 appendPrettyObject:v8 withName:@"type" indent:v5 showFullContent:1];

  v9 = [NWInterface descriptionForSubtype:[(NWInterface *)self subtype]];
  [v7 appendPrettyObject:v9 withName:@"subtype" indent:v5 showFullContent:1];

  if (contentCopy)
  {
    interfaceName = [(NWInterface *)self interfaceName];
    [v7 appendPrettyObject:interfaceName withName:@"interfaceName" indent:v5 showFullContent:1];

    [v7 appendPrettyInt:-[NWInterface interfaceIndex](self withName:"interfaceIndex") indent:{@"interfaceIndex", v5}];
    [v7 appendPrettyInt:-[NWInterface generation](self withName:"generation") indent:{@"generation", v5}];
    [v7 appendPrettyInt:-[NWInterface mtu](self withName:"mtu") indent:{@"mtu", v5}];
    ipv4Netmask = [(NWInterface *)self ipv4Netmask];
    [v7 appendPrettyObject:ipv4Netmask withName:@"ipv4Netmask" indent:v5 showFullContent:1];

    ipv4Broadcast = [(NWInterface *)self ipv4Broadcast];
    [v7 appendPrettyObject:ipv4Broadcast withName:@"ipv4Broadcast" indent:v5 showFullContent:1];

    if ([(NWInterface *)self supportsMulticast])
    {
      [v7 appendPrettyBOOL:1 withName:@"supportsMulticast" indent:v5];
    }

    if ([(NWInterface *)self hasDNS])
    {
      [v7 appendPrettyBOOL:1 withName:@"hasDNS" indent:v5];
    }

    if ([(NWInterface *)self hasNAT64])
    {
      [v7 appendPrettyBOOL:1 withName:@"hasNAT64" indent:v5];
    }

    if ([(NWInterface *)self isIPv4Routable])
    {
      [v7 appendPrettyBOOL:1 withName:@"ipv4Routable" indent:v5];
    }

    if ([(NWInterface *)self isIPv6Routable])
    {
      [v7 appendPrettyBOOL:1 withName:@"ipv6Routable" indent:v5];
    }
  }

  if ([(NWInterface *)self isExpensive])
  {
    [v7 appendPrettyBOOL:1 withName:@"expensive" indent:v5];
  }

  if ([(NWInterface *)self isConstrained])
  {
    [v7 appendPrettyBOOL:1 withName:@"constrained" indent:v5];
  }

  if ([(NWInterface *)self isUltraConstrained])
  {
    [v7 appendPrettyBOOL:1 withName:@"ultraConstrained" indent:v5];
  }

  return v7;
}

- (NWInterface)initWithInterfaceIndex:(unint64_t)index
{
  v25 = *MEMORY[0x1E69E9840];
  if (!index)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v22 = "[NWInterface initWithInterfaceIndex:]";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (__nwlog_fault(v8, &type, &v19))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "[NWInterface initWithInterfaceIndex:]";
        v11 = "%{public}s called with null interfaceIndex";
LABEL_23:
        v17 = v9;
        v18 = v10;
        goto LABEL_24;
      }

      if (v19 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (!os_log_type_enabled(v9, type))
        {
          goto LABEL_25;
        }

        *buf = 136446210;
        v22 = "[NWInterface initWithInterfaceIndex:]";
        v11 = "%{public}s called with null interfaceIndex, backtrace limit exceeded";
        goto LABEL_23;
      }

      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v14 = type;
      v15 = os_log_type_enabled(v9, type);
      if (!backtrace_string)
      {
        if (!v15)
        {
LABEL_25:

          if (!v8)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *buf = 136446210;
        v22 = "[NWInterface initWithInterfaceIndex:]";
        v11 = "%{public}s called with null interfaceIndex, no backtrace";
        v17 = v9;
        v18 = v14;
LABEL_24:
        _os_log_impl(&dword_181A37000, v17, v18, v11, buf, 0xCu);
        goto LABEL_25;
      }

      if (v15)
      {
        *buf = 136446466;
        v22 = "[NWInterface initWithInterfaceIndex:]";
        v23 = 2082;
        v24 = backtrace_string;
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s called with null interfaceIndex, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
    }

    if (!v8)
    {
LABEL_19:
      selfCopy = 0;
      goto LABEL_20;
    }

LABEL_18:
    free(v8);
    goto LABEL_19;
  }

  indexCopy = index;
  v5 = nw_interface_create_with_index(index);
  if (v5)
  {
    self = [(NWInterface *)self initWithInterface:v5];
    selfCopy = self;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "[NWInterface initWithInterfaceIndex:]";
      v23 = 1024;
      LODWORD(v24) = indexCopy;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s nw_interface_create_with_index(%u) failed", buf, 0x12u);
    }

    selfCopy = 0;
  }

LABEL_20:
  return selfCopy;
}

- (NWInterface)initWithInterfaceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy)
  {
    v6 = nw_interface_create_with_name([nameCopy UTF8String]);
    if (v6)
    {
      self = [(NWInterface *)self initWithInterface:v6];
      selfCopy = self;
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v8 = gLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "[NWInterface initWithInterfaceName:]";
        v21 = 2114;
        v22 = v5;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s nw_interface_create_with_name(%{public}@) failed", buf, 0x16u);
      }

      selfCopy = 0;
    }

    goto LABEL_8;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v20 = "[NWInterface initWithInterfaceName:]";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (__nwlog_fault(v11, &type, &v17))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "[NWInterface initWithInterfaceName:]";
        v14 = "%{public}s called with null interfaceName";
LABEL_22:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v17 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v16 = os_log_type_enabled(v12, type);
        if (backtrace_string)
        {
          if (v16)
          {
            *buf = 136446466;
            v20 = "[NWInterface initWithInterfaceName:]";
            v21 = 2082;
            v22 = backtrace_string;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null interfaceName, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v16)
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v20 = "[NWInterface initWithInterfaceName:]";
        v14 = "%{public}s called with null interfaceName, no backtrace";
        goto LABEL_22;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v20 = "[NWInterface initWithInterfaceName:]";
        v14 = "%{public}s called with null interfaceName, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:
  }

LABEL_24:
  if (v11)
  {
    free(v11);
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (NWInterface)initWithInterface:(id)interface
{
  v30 = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  if (interfaceCopy)
  {
    v23.receiver = self;
    v23.super_class = NWInterface;
    v6 = [(NWInterface *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalInterface, interface);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWInterface initWithInterface:]";
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
        v27 = "[NWInterface initWithInterface:]";
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
          v27 = "[NWInterface initWithInterface:]";
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
        v27 = "[NWInterface initWithInterface:]";
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
        v27 = "[NWInterface initWithInterface:]";
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
  v27 = "[NWInterface initWithInterface:]";
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
        v27 = "[NWInterface initWithInterface:]";
        v13 = "%{public}s called with null interface";
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
            v27 = "[NWInterface initWithInterface:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWInterface initWithInterface:]";
        v13 = "%{public}s called with null interface, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWInterface initWithInterface:]";
        v13 = "%{public}s called with null interface, backtrace limit exceeded";
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

- (unint64_t)hash
{
  internalInterface = [(NWInterface *)self internalInterface];
  v3 = internalInterface;
  if (internalInterface)
  {
    shallow_hash = _nw_interface_get_shallow_hash(internalInterface);
  }

  else
  {
    shallow_hash = 0;
  }

  return shallow_hash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      internalInterface = [(NWInterface *)self internalInterface];
      internalInterface2 = [(NWInterface *)equalCopy internalInterface];
      v7 = _nw_interface_shallow_compare(internalInterface, internalInterface2);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NWInterface allocWithZone:zone];
  internalInterface = [(NWInterface *)self internalInterface];
  v6 = [(NWInterface *)v4 initWithInterface:internalInterface];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  internalInterface = [(NWInterface *)self internalInterface];
  v6 = nw_interface_copy_dictionary(internalInterface);

  if (v6)
  {
    v7 = MEMORY[0x1E695DF90];
    v8 = v6;
    dictionary = [v7 dictionary];
    *applier = MEMORY[0x1E69E9820];
    *&applier[8] = 3221225472;
    *&applier[16] = __NWUtilsCreateNSDictionaryFromXPCDictionary_block_invoke;
    v34 = &unk_1E6A39980;
    v10 = dictionary;
    v35 = v10;
    xpc_dictionary_apply(v8, applier);

    if (v10)
    {
      [coderCopy encodeObject:v10 forKey:@"dictionary"];
LABEL_37:

      goto LABEL_38;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    *applier = 136446210;
    *&applier[4] = "[NWInterface encodeWithCoder:]";
    v17 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v17, &type, &v31))
    {
LABEL_35:
      if (v17)
      {
        free(v17);
      }

      goto LABEL_37;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *applier = 136446210;
        *&applier[4] = "[NWInterface encodeWithCoder:]";
        v20 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed";
LABEL_32:
        v29 = v18;
        v30 = v19;
LABEL_33:
        _os_log_impl(&dword_181A37000, v29, v30, v20, applier, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v18 = gLogObj;
        v25 = type;
        v26 = os_log_type_enabled(v18, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *applier = 136446466;
            *&applier[4] = "[NWInterface encodeWithCoder:]";
            *&applier[12] = 2082;
            *&applier[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v18, v25, "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_35;
        }

        if (!v26)
        {
          goto LABEL_34;
        }

        *applier = 136446210;
        *&applier[4] = "[NWInterface encodeWithCoder:]";
        v20 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, no backtrace";
        v29 = v18;
        v30 = v25;
        goto LABEL_33;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v18 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v18, type))
      {
        *applier = 136446210;
        *&applier[4] = "[NWInterface encodeWithCoder:]";
        v20 = "%{public}s NWUtilsCreateNSDictionaryFromXPCDictionary failed, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_34:

    goto LABEL_35;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v11 = gLogObj;
  *applier = 136446210;
  *&applier[4] = "[NWInterface encodeWithCoder:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (!__nwlog_fault(v12, &type, &v31))
  {
    goto LABEL_17;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_28;
    }

    *applier = 136446210;
    *&applier[4] = "[NWInterface encodeWithCoder:]";
    v15 = "%{public}s nw_interface_copy_dictionary failed";
LABEL_26:
    v27 = v13;
    v28 = v14;
LABEL_27:
    _os_log_impl(&dword_181A37000, v27, v28, v15, applier, 0xCu);
    goto LABEL_28;
  }

  if (v31 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    v14 = type;
    if (!os_log_type_enabled(v13, type))
    {
      goto LABEL_28;
    }

    *applier = 136446210;
    *&applier[4] = "[NWInterface encodeWithCoder:]";
    v15 = "%{public}s nw_interface_copy_dictionary failed, backtrace limit exceeded";
    goto LABEL_26;
  }

  v21 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  v22 = type;
  v23 = os_log_type_enabled(v13, type);
  if (v21)
  {
    if (v23)
    {
      *applier = 136446466;
      *&applier[4] = "[NWInterface encodeWithCoder:]";
      *&applier[12] = 2082;
      *&applier[14] = v21;
      _os_log_impl(&dword_181A37000, v13, v22, "%{public}s nw_interface_copy_dictionary failed, dumping backtrace:%{public}s", applier, 0x16u);
    }

    free(v21);
LABEL_17:
    if (!v12)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v23)
  {
    *applier = 136446210;
    *&applier[4] = "[NWInterface encodeWithCoder:]";
    v15 = "%{public}s nw_interface_copy_dictionary failed, no backtrace";
    v27 = v13;
    v28 = v22;
    goto LABEL_27;
  }

LABEL_28:

  if (v12)
  {
LABEL_29:
    free(v12);
  }

LABEL_38:
}

- (NWInterface)initWithCoder:(id)coder
{
  v58 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = NWInterface;
  v5 = [(NWInterface *)&v53 init];
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
        v17 = nw_interface_create_from_dictionary(XPCDictionaryFromNSDictionary);
        [(NWInterface *)v5 setInternalInterface:v17];

        internalInterface = [(NWInterface *)v5 internalInterface];

        if (internalInterface)
        {
          v19 = v5;
LABEL_45:

          goto LABEL_46;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v33 = gLogObj;
        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v26, &type, &v51))
        {
LABEL_42:
          if (!v26)
          {
LABEL_44:
            v19 = 0;
            goto LABEL_45;
          }

LABEL_43:
          free(v26);
          goto LABEL_44;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_54;
          }

          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s nw_interface_create_from_dictionary failed";
          goto LABEL_52;
        }

        if (v51 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_54;
          }

          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s nw_interface_create_from_dictionary failed, backtrace limit exceeded";
          goto LABEL_52;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v35 = type;
        v40 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v40)
          {
            *buf = 136446466;
            v55 = "[NWInterface initWithCoder:]";
            v56 = 2082;
            v57 = backtrace_string;
            v37 = "%{public}s nw_interface_create_from_dictionary failed, dumping backtrace:%{public}s";
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        if (v40)
        {
          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s nw_interface_create_from_dictionary failed, no backtrace";
          goto LABEL_62;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v25 = gLogObj;
        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v26 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v51 = 0;
        if (!__nwlog_fault(v26, &type, &v51))
        {
          goto LABEL_42;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_54;
          }

          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed";
LABEL_52:
          v42 = v27;
          v43 = v28;
LABEL_53:
          _os_log_impl(&dword_181A37000, v42, v43, v29, buf, 0xCu);
          goto LABEL_54;
        }

        if (v51 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v27 = gLogObj;
          v28 = type;
          if (!os_log_type_enabled(v27, type))
          {
            goto LABEL_54;
          }

          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, backtrace limit exceeded";
          goto LABEL_52;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        v35 = type;
        v36 = os_log_type_enabled(v27, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446466;
            v55 = "[NWInterface initWithCoder:]";
            v56 = 2082;
            v57 = backtrace_string;
            v37 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, dumping backtrace:%{public}s";
LABEL_40:
            _os_log_impl(&dword_181A37000, v27, v35, v37, buf, 0x16u);
          }

LABEL_41:

          free(backtrace_string);
          goto LABEL_42;
        }

        if (v36)
        {
          *buf = 136446210;
          v55 = "[NWInterface initWithCoder:]";
          v29 = "%{public}s NWUtilsCreateXPCDictionaryFromNSDictionary failed, no backtrace";
LABEL_62:
          v42 = v27;
          v43 = v35;
          goto LABEL_53;
        }
      }

LABEL_54:

      if (!v26)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446210;
    v55 = "[NWInterface initWithCoder:]";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v51 = 0;
    if (__nwlog_fault(v21, &type, &v51))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v24 = "%{public}s decodeObjectOfClasses:forKey failed";
LABEL_32:
        v38 = v22;
        v39 = v23;
        goto LABEL_33;
      }

      if (v51 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_34;
        }

        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v24 = "%{public}s decodeObjectOfClasses:forKey failed, backtrace limit exceeded";
        goto LABEL_32;
      }

      v30 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v31 = type;
      v32 = os_log_type_enabled(v22, type);
      if (!v30)
      {
        if (!v32)
        {
LABEL_34:

          if (!v21)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v24 = "%{public}s decodeObjectOfClasses:forKey failed, no backtrace";
        v38 = v22;
        v39 = v31;
LABEL_33:
        _os_log_impl(&dword_181A37000, v38, v39, v24, buf, 0xCu);
        goto LABEL_34;
      }

      if (v32)
      {
        *buf = 136446466;
        v55 = "[NWInterface initWithCoder:]";
        v56 = 2082;
        v57 = v30;
        _os_log_impl(&dword_181A37000, v22, v31, "%{public}s decodeObjectOfClasses:forKey failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v30);
    }

    if (!v21)
    {
LABEL_21:
      v19 = 0;
LABEL_46:

      goto LABEL_47;
    }

LABEL_20:
    free(v21);
    goto LABEL_21;
  }

  v44 = __nwlog_obj();
  *buf = 136446210;
  v55 = "[NWInterface initWithCoder:]";
  v45 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v51 = 0;
  if (__nwlog_fault(v45, &type, &v51))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v48 = "%{public}s [super init] failed";
LABEL_76:
        _os_log_impl(&dword_181A37000, v46, v47, v48, buf, 0xCu);
      }
    }

    else
    {
      if (v51 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v46 = __nwlog_obj();
        v47 = type;
        v50 = os_log_type_enabled(v46, type);
        if (v49)
        {
          if (v50)
          {
            *buf = 136446466;
            v55 = "[NWInterface initWithCoder:]";
            v56 = 2082;
            v57 = v49;
            _os_log_impl(&dword_181A37000, v46, v47, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          goto LABEL_78;
        }

        if (!v50)
        {
          goto LABEL_77;
        }

        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v48 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_76;
      }

      v46 = __nwlog_obj();
      v47 = type;
      if (os_log_type_enabled(v46, type))
      {
        *buf = 136446210;
        v55 = "[NWInterface initWithCoder:]";
        v48 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_76;
      }
    }

LABEL_77:
  }

LABEL_78:
  if (v45)
  {
    free(v45);
  }

  v19 = 0;
LABEL_47:

  return v19;
}

+ (NWInterface)interfaceWithProtocolBufferData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = [[NWPBInterface alloc] initWithData:dataCopy];

  if (v4)
  {
    v5 = v4->_name;
    uTF8String = [(NSString *)v5 UTF8String];
    if ((*&v4->_has & 0x20) != 0)
    {
      v7 = v4->_type;
      if ((*&v4->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = 0;
      if ((*&v4->_has & 0x10) != 0)
      {
LABEL_4:
        subtype = v4->_subtype;
LABEL_11:
        v14 = nw_interface_create_static(uTF8String, v4->_index, v7, subtype, v4->_generation, v4->_delegateIndex, v4->_expensive, 0, v4->_mtu, 0, 0);
        if (v14)
        {
          v15 = [[NWInterface alloc] initWithInterface:v14];
        }

        else
        {
          v15 = 0;
        }

        goto LABEL_23;
      }
    }

    subtype = 0;
    goto LABEL_11;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  *buf = 136446210;
  v25 = "+[NWInterface interfaceWithProtocolBufferData:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v10, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v25 = "+[NWInterface interfaceWithProtocolBufferData:]";
      v13 = "%{public}s [NWPBInterface initWithData:] failed";
LABEL_28:
      v20 = v11;
      v21 = v12;
      goto LABEL_29;
    }

    if (v22 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_30;
      }

      *buf = 136446210;
      v25 = "+[NWInterface interfaceWithProtocolBufferData:]";
      v13 = "%{public}s [NWPBInterface initWithData:] failed, backtrace limit exceeded";
      goto LABEL_28;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    v17 = type;
    v18 = os_log_type_enabled(v11, type);
    if (!backtrace_string)
    {
      if (!v18)
      {
LABEL_30:

        if (!v10)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      *buf = 136446210;
      v25 = "+[NWInterface interfaceWithProtocolBufferData:]";
      v13 = "%{public}s [NWPBInterface initWithData:] failed, no backtrace";
      v20 = v11;
      v21 = v17;
LABEL_29:
      _os_log_impl(&dword_181A37000, v20, v21, v13, buf, 0xCu);
      goto LABEL_30;
    }

    if (v18)
    {
      *buf = 136446466;
      v25 = "+[NWInterface interfaceWithProtocolBufferData:]";
      v26 = 2082;
      v27 = backtrace_string;
      _os_log_impl(&dword_181A37000, v11, v17, "%{public}s [NWPBInterface initWithData:] failed, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v10)
  {
LABEL_21:
    free(v10);
  }

LABEL_22:
  v15 = 0;
LABEL_23:

  return v15;
}

+ (id)descriptionForSubtype:(int64_t)subtype
{
  if (subtype <= 1001)
  {
    if (!subtype)
    {
      v3 = "other";
      return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    }

    if (subtype == 1001)
    {
      v3 = "wifi_infrastructure";
      return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
    }

LABEL_13:
    v3 = "unknown";
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  if (subtype == 1002)
  {
    v3 = "wifi_awdl";
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  if (subtype == 4001)
  {
    v3 = "coprocessor";
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  if (subtype != 5001)
  {
    goto LABEL_13;
  }

  v3 = "companion";
  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
}

+ (id)descriptionForType:(int64_t)type
{
  if (type > 4)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1E6A357B8[type & 7];
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
}

- (id)copyLocalAddressForDefaultIPv4
{
  v3 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:@"0"];
  v4 = [(NWInterface *)self copyLocalAddressForRemoteAddress:v3];

  return v4;
}

- (id)copyLocalAddressForDefaultIPv6
{
  v3 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
  v4 = [(NWInterface *)self copyLocalAddressForRemoteAddress:v3];

  return v4;
}

- (id)copyLocalAddressForRemoteAddress:(id)address
{
  addressCopy = address;
  internalInterface = [(NWInterface *)self internalInterface];
  internalEndpoint = [addressCopy internalEndpoint];

  v7 = nw_interface_copy_local_address_for_remote_address(internalInterface, internalEndpoint);
  if (v7)
  {
    v8 = [NWEndpoint endpointWithCEndpoint:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NWInterface)initWithInterfaceIndex:(unint64_t)index interfaceName:(id)name
{
  *&v37[13] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = nameCopy;
  if (index)
  {
    if (nameCopy)
    {
      v8 = nw_interface_create_with_index_and_name(index, [nameCopy UTF8String]);
      if (v8)
      {
        self = [(NWInterface *)self initWithInterface:v8];
        selfCopy = self;
LABEL_19:

        goto LABEL_20;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v10 = gLogObj;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
        v36 = 1024;
        *v37 = index;
        v37[2] = 2114;
        *&v37[3] = v7;
        _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s nw_interface_create_with_index_and_name failed for index, name (%u, %{public}@)", buf, 0x1Cu);
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      *buf = 136446210;
      v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
      v12 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v32 = 0;
      if (__nwlog_fault(v12, &type, &v32))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_25;
          }

          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v15 = "%{public}s nw_interface_create_with_index_and_name failed";
LABEL_23:
          v20 = v13;
          v21 = v14;
          goto LABEL_24;
        }

        if (v32 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = type;
          if (!os_log_type_enabled(v13, type))
          {
            goto LABEL_25;
          }

          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v15 = "%{public}s nw_interface_create_with_index_and_name failed, backtrace limit exceeded";
          goto LABEL_23;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v17 = type;
        v18 = os_log_type_enabled(v13, type);
        if (!backtrace_string)
        {
          if (!v18)
          {
LABEL_25:

            if (!v12)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v15 = "%{public}s nw_interface_create_with_index_and_name failed, no backtrace";
          v20 = v13;
          v21 = v17;
LABEL_24:
          _os_log_impl(&dword_181A37000, v20, v21, v15, buf, 0xCu);
          goto LABEL_25;
        }

        if (v18)
        {
          *buf = 136446466;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v36 = 2082;
          *v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v17, "%{public}s nw_interface_create_with_index_and_name failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
      }

      if (!v12)
      {
LABEL_18:
        selfCopy = 0;
        goto LABEL_19;
      }

LABEL_17:
      free(v12);
      goto LABEL_18;
    }

    v27 = __nwlog_obj();
    *buf = 136446210;
    v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v23, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceName";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v32 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceName, backtrace limit exceeded";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v28 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v31 = os_log_type_enabled(v24, type);
      if (!v28)
      {
        if (v31)
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceName, no backtrace";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (!v31)
      {
        goto LABEL_46;
      }

      *buf = 136446466;
      v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
      v36 = 2082;
      *v37 = v28;
      v30 = "%{public}s called with null interfaceName, dumping backtrace:%{public}s";
LABEL_45:
      _os_log_impl(&dword_181A37000, v24, v25, v30, buf, 0x16u);
LABEL_46:

      free(v28);
    }
  }

  else
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v23, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceIndex";
LABEL_55:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0xCu);
        }

LABEL_56:

        goto LABEL_57;
      }

      if (v32 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type;
        if (os_log_type_enabled(v24, type))
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceIndex, backtrace limit exceeded";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v28 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type;
      v29 = os_log_type_enabled(v24, type);
      if (!v28)
      {
        if (v29)
        {
          *buf = 136446210;
          v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
          v26 = "%{public}s called with null interfaceIndex, no backtrace";
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (!v29)
      {
        goto LABEL_46;
      }

      *buf = 136446466;
      v35 = "[NWInterface(Private) initWithInterfaceIndex:interfaceName:]";
      v36 = 2082;
      *v37 = v28;
      v30 = "%{public}s called with null interfaceIndex, dumping backtrace:%{public}s";
      goto LABEL_45;
    }
  }

LABEL_57:
  if (v23)
  {
    free(v23);
  }

  selfCopy = 0;
LABEL_20:

  return selfCopy;
}

@end
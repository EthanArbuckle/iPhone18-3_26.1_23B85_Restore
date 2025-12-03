@interface NWNetworkAgentRegistration
+ (BOOL)addActiveAssertionToNetworkAgent:(id)agent;
+ (BOOL)removeActiveAssertionFromNetworkAgent:(id)agent;
+ (BOOL)useNetworkAgent:(id)agent returnUseCount:(unint64_t *)count;
- (BOOL)addNetworkAgentToInterfaceNamed:(id)named;
- (BOOL)addToken:(id)token;
- (BOOL)assignDiscoveredEndpoints:(id)endpoints toClient:(id)client;
- (BOOL)assignNexusData:(id)data toClient:(id)client;
- (BOOL)assignResolvedEndpoints:(id)endpoints toClient:(id)client;
- (BOOL)createReadSourceWithRegistrationSocket:(int)socket;
- (BOOL)flushTokens;
- (BOOL)internalRegisterNetworkAgent:(id)agent withFileDescriptor:(int)descriptor;
- (BOOL)isRegistered;
- (BOOL)isRegisteredInternal;
- (BOOL)registerNetworkAgent:(id)agent;
- (BOOL)registerNetworkAgent:(id)agent withFileDescriptor:(int)descriptor;
- (BOOL)removeNetworkAgentFromInterfaceNamed:(id)named;
- (BOOL)resetError;
- (BOOL)setLowWaterMark:(unsigned int)mark;
- (BOOL)setRegisteredNetworkAgent:(id)agent fileDescriptor:(int)descriptor;
- (BOOL)unregisterNetworkAgent;
- (BOOL)unregisterNetworkAgentInternal;
- (BOOL)updateNetworkAgent:(id)agent;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class queue:(id)queue;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class session:(id)session;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (int)agentFileDescriptor;
- (int)dupRegistrationFileDescriptor;
- (unint64_t)useCount;
- (unsigned)tokenCountWithError:(int *)error;
- (void)dealloc;
- (void)handleMessageFromAgent;
- (void)handleMessageWithType:(unsigned __int8)type payload:(char *)payload payloadLength:(unsigned int)length;
- (void)setUseCount:(unint64_t)count;
@end

@implementation NWNetworkAgentRegistration

- (void)handleMessageFromAgent
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    session = [(NWNetworkAgentRegistration *)self session];

    if (!session)
    {
      v4 = nw_network_agent_ctl_copy_received_agent_message([(NWNetworkAgentRegistration *)self registrationSocket], &v7);
      if (v4)
      {
        v5 = v4;
        [(NWNetworkAgentRegistration *)self handleMessageWithType:*v4 payload:v4 + 32 payloadLength:*(v4 + 7)];
        free(v5);
      }

      else if ((v7 & 1) == 0)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v6 = gLogObj;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v9 = "[NWNetworkAgentRegistration handleMessageFromAgent]";
          _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Network Agent Registration failed to read message", buf, 0xCu);
        }
      }
    }
  }
}

- (BOOL)isRegisteredInternal
{
  session = [(NWNetworkAgentRegistration *)self session];

  if (!session)
  {
    return [(NWNetworkAgentRegistration *)self registrationSocket]!= -1;
  }

  registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
  v5 = registeredUUID != 0;

  return v5;
}

- (unsigned)tokenCountWithError:(int *)error
{
  v9[2] = *MEMORY[0x1E69E9840];
  result = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (result)
  {
    v8 = 0;
    v9[0] = 0;
    v9[1] = 0;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v9];

    token_count = nw_network_agent_get_token_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v9, &v8);
    if (error)
    {
      *error = token_count;
    }

    return v8;
  }

  return result;
}

- (void)setUseCount:(unint64_t)count
{
  v6[2] = *MEMORY[0x1E69E9840];
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    v6[0] = 0;
    v6[1] = 0;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v6];

    nw_network_agent_set_use_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, count);
  }
}

- (unint64_t)useCount
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  isRegisteredInternal = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  result = 0;
  if (isRegisteredInternal)
  {
    v7[0] = 0;
    v7[1] = 0;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v7];

    nw_network_agent_get_use_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v7, &v6);
    return v6;
  }

  return result;
}

- (BOOL)assignResolvedEndpoints:(id)endpoints toClient:(id)client
{
  v31 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  clientCopy = client;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    *&buf[4] = "[NWNetworkAgentRegistration assignResolvedEndpoints:toClient:]";
    v27 = 2112;
    v28 = endpointsCopy;
    v29 = 2112;
    v30 = clientCopy;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Assigning resolved endpoints %@ to %@", buf, 0x20u);
  }

  v9 = _nw_array_create();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = endpointsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        internalEndpoint = [*(*(&v21 + 1) + 8 * i) internalEndpoint];
        if (internalEndpoint)
        {
          v15 = v9 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          _nw_array_append(v9, internalEndpoint);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  *buf = 0;
  endpoint_array_result = nw_path_create_endpoint_array_result(buf, v9, 203);
  if (endpoint_array_result)
  {
    v17 = objc_alloc(MEMORY[0x1E695DEF0]);
    v18 = [v17 initWithBytesNoCopy:endpoint_array_result length:*buf freeWhenDone:1];
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:v18 toClient:clientCopy];
  }

  else
  {
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:0 toClient:clientCopy];
  }

  return v19;
}

- (BOOL)assignDiscoveredEndpoints:(id)endpoints toClient:(id)client
{
  v31 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  clientCopy = client;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    *&buf[4] = "[NWNetworkAgentRegistration assignDiscoveredEndpoints:toClient:]";
    v27 = 2112;
    v28 = endpointsCopy;
    v29 = 2112;
    v30 = clientCopy;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Assigning discovered endpoints %@ to %@", buf, 0x20u);
  }

  v9 = _nw_array_create();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = endpointsCopy;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        internalEndpoint = [*(*(&v21 + 1) + 8 * i) internalEndpoint];
        if (internalEndpoint)
        {
          v15 = v9 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          _nw_array_append(v9, internalEndpoint);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  *buf = 0;
  endpoint_array_result = nw_path_create_endpoint_array_result(buf, v9, 202);
  if (endpoint_array_result)
  {
    v17 = objc_alloc(MEMORY[0x1E695DEF0]);
    v18 = [v17 initWithBytesNoCopy:endpoint_array_result length:*buf freeWhenDone:1];
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:v18 toClient:clientCopy];
  }

  else
  {
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:0 toClient:clientCopy];
  }

  return v19;
}

- (BOOL)assignNexusData:(id)data toClient:(id)client
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  clientCopy = client;
  if (![(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    goto LABEL_44;
  }

  registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];

  if (registeredUUID)
  {
    if ([dataCopy length] >= 0xFFFFFFF0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      *buf = 136446466;
      *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
      *&buf[12] = 2048;
      *&buf[14] = [dataCopy length];
      LODWORD(v35) = 22;
      v10 = _os_log_send_and_compose_impl();

      type[0] = OS_LOG_TYPE_ERROR;
      v36 = 0;
      if (!__nwlog_fault(v10, type, &v36))
      {
        goto LABEL_26;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          v13 = [dataCopy length];
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 2048;
          *&buf[14] = v13;
          v14 = "%{public}s Invalid data length (%lu)";
LABEL_23:
          v28 = v11;
          v29 = v12;
LABEL_24:
          _os_log_impl(&dword_181A37000, v28, v29, v14, buf, 0x16u);
        }
      }

      else if (v36 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v19 = type[0];
        v20 = os_log_type_enabled(v11, type[0]);
        if (backtrace_string)
        {
          if (v20)
          {
            v21 = [dataCopy length];
            *buf = 136446722;
            *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
            *&buf[12] = 2048;
            *&buf[14] = v21;
            *&buf[22] = 2082;
            *&buf[24] = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v19, "%{public}s Invalid data length (%lu), dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
LABEL_26:
          if (v10)
          {
            v30 = v10;
LABEL_43:
            free(v30);
            goto LABEL_44;
          }

          goto LABEL_44;
        }

        if (v20)
        {
          v33 = [dataCopy length];
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 2048;
          *&buf[14] = v33;
          v14 = "%{public}s Invalid data length (%lu), no backtrace";
          v28 = v11;
          v29 = v19;
          goto LABEL_24;
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v11 = gLogObj;
        v12 = type[0];
        if (os_log_type_enabled(v11, type[0]))
        {
          v27 = [dataCopy length];
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 2048;
          *&buf[14] = v27;
          v14 = "%{public}s Invalid data length (%lu), backtrace limit exceeded";
          goto LABEL_23;
        }
      }

      goto LABEL_26;
    }

    LODWORD(registeredUUID) = [dataCopy length] + 16;
    v15 = malloc_type_calloc(registeredUUID, 1uLL, 0xD86E156uLL);
    if (v15)
    {
      v16 = v15;
      *buf = 0;
      *&buf[8] = 0;
      [clientCopy getUUIDBytes:buf];
      *v16 = *buf;
      if ([dataCopy length])
      {
        memcpy(v16 + 16, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      }

      memset(type, 0, sizeof(type));
      registeredUUID2 = [(NWNetworkAgentRegistration *)self registeredUUID];
      [registeredUUID2 getUUIDBytes:type];

      LOBYTE(registeredUUID) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], type, 11, v16, registeredUUID, 0, 0) >= 0;
      free(v16);
      goto LABEL_45;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
    *&buf[12] = 1024;
    *&buf[14] = registeredUUID;
    v23 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v36 = 0;
    if (__nwlog_fault(v23, type, &v36))
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 1024;
          *&buf[14] = registeredUUID;
          v26 = "%{public}s calloc(%u) failed";
LABEL_39:
          _os_log_impl(&dword_181A37000, v24, v25, v26, buf, 0x12u);
          goto LABEL_40;
        }

        goto LABEL_40;
      }

      if (v36 != 1)
      {
        v24 = __nwlog_obj();
        v25 = type[0];
        if (os_log_type_enabled(v24, type[0]))
        {
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 1024;
          *&buf[14] = registeredUUID;
          v26 = "%{public}s calloc(%u) failed, backtrace limit exceeded";
          goto LABEL_39;
        }

LABEL_40:

        goto LABEL_41;
      }

      v31 = __nw_create_backtrace_string();
      v24 = __nwlog_obj();
      v25 = type[0];
      v32 = os_log_type_enabled(v24, type[0]);
      if (!v31)
      {
        if (v32)
        {
          *buf = 136446466;
          *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
          *&buf[12] = 1024;
          *&buf[14] = registeredUUID;
          v26 = "%{public}s calloc(%u) failed, no backtrace";
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (v32)
      {
        *buf = 136446722;
        *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
        *&buf[12] = 1024;
        *&buf[14] = registeredUUID;
        *&buf[18] = 2082;
        *&buf[20] = v31;
        _os_log_impl(&dword_181A37000, v24, v25, "%{public}s calloc(%u) failed, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v31);
    }

LABEL_41:
    if (v23)
    {
      v30 = v23;
      goto LABEL_43;
    }

LABEL_44:
    LOBYTE(registeredUUID) = 0;
  }

LABEL_45:

  return registeredUUID;
}

- (BOOL)removeNetworkAgentFromInterfaceNamed:(id)named
{
  v11 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal]&& ([(NWNetworkAgentRegistration *)self registeredUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    *uu = 0;
    v10 = 0;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:uu];

    v7 = nw_network_agent_remove_from_interface([namedCopy UTF8String], uu) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addNetworkAgentToInterfaceNamed:(id)named
{
  v11 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal]&& ([(NWNetworkAgentRegistration *)self registeredUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    *uu = 0;
    v10 = 0;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:uu];

    v7 = nw_network_agent_add_to_interface([namedCopy UTF8String], uu) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setLowWaterMark:(unsigned int)mark
{
  v10 = *MEMORY[0x1E69E9840];
  isRegisteredInternal = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (isRegisteredInternal)
  {
    memset(v9, 0, sizeof(v9));
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v9];

    *v8 = mark;
    LOBYTE(isRegisteredInternal) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v9, 24, v8, 4u, 0, 0) == 0;
  }

  return isRegisteredInternal;
}

- (BOOL)resetError
{
  v7 = *MEMORY[0x1E69E9840];
  isRegisteredInternal = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (isRegisteredInternal)
  {
    memset(v6, 0, sizeof(v6));
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v6];

    LOBYTE(isRegisteredInternal) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, 27, 0, 0, 0, 0) == 0;
  }

  return isRegisteredInternal;
}

- (BOOL)flushTokens
{
  v7 = *MEMORY[0x1E69E9840];
  isRegisteredInternal = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (isRegisteredInternal)
  {
    memset(v6, 0, sizeof(v6));
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v6];

    LOBYTE(isRegisteredInternal) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, 22, 0, 0, 0, 0) == 0;
  }

  return isRegisteredInternal;
}

- (BOOL)addToken:(id)token
{
  v22 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v5 = tokenCopy;
  if (!tokenCopy)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null token";
LABEL_31:
        _os_log_impl(&dword_181A37000, v10, v11, v12, buf, 0xCu);
      }

LABEL_32:

LABEL_33:
      if (v9)
      {
        free(v9);
      }

      goto LABEL_35;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null token, backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v15 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null token, no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v15)
    {
      *buf = 136446466;
      *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v16 = "%{public}s called with null token, dumping backtrace:%{public}s";
LABEL_21:
      _os_log_impl(&dword_181A37000, v10, v11, v16, buf, 0x16u);
    }

LABEL_22:

    free(backtrace_string);
    goto LABEL_33;
  }

  if ([tokenCopy length] > 0x1000)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v19 = 0;
    if (!__nwlog_fault(v9, &type, &v19))
    {
      goto LABEL_33;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null (token.length <= NETAGENT_MAX_DATA_SIZE)";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v19 != 1)
    {
      v10 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v10, type))
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null (token.length <= NETAGENT_MAX_DATA_SIZE), backtrace limit exceeded";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v10 = __nwlog_obj();
    v11 = type;
    v17 = os_log_type_enabled(v10, type);
    if (!backtrace_string)
    {
      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
        v12 = "%{public}s called with null (token.length <= NETAGENT_MAX_DATA_SIZE), no backtrace";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (v17)
    {
      *buf = 136446466;
      *&buf[4] = "[NWNetworkAgentRegistration addToken:]";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v16 = "%{public}s called with null (token.length <= NETAGENT_MAX_DATA_SIZE), dumping backtrace:%{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (![(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  *buf = 0;
  *&buf[8] = 0;
  registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
  [registeredUUID getUUIDBytes:buf];

  v7 = nw_network_agent_ctl_setsockopt_inner(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), buf, 21, [v5 bytes], objc_msgSend(v5, "length"), 0, 0) == 0;
LABEL_36:

  return v7;
}

- (BOOL)unregisterNetworkAgent
{
  unregisterNetworkAgentInternal = [(NWNetworkAgentRegistration *)self unregisterNetworkAgentInternal];
  if (unregisterNetworkAgentInternal)
  {
    v4 = unregisterNetworkAgentInternal;
    session = [(NWNetworkAgentRegistration *)self session];

    if (session)
    {
      session2 = [(NWNetworkAgentRegistration *)self session];
      [session2 removeRegistration:self];
    }

    else
    {
      session2 = [(NWNetworkAgentRegistration *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__NWNetworkAgentRegistration_unregisterNetworkAgent__block_invoke;
      block[3] = &unk_1E6A3D868;
      block[4] = self;
      dispatch_async(session2, block);
    }

    LOBYTE(unregisterNetworkAgentInternal) = v4;
  }

  return unregisterNetworkAgentInternal;
}

void __52__NWNetworkAgentRegistration_unregisterNetworkAgent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRegistrationSocket:0xFFFFFFFFLL];
  v2 = [*(a1 + 32) readSource];

  if (v2)
  {
    v3 = [*(a1 + 32) readSource];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setReadSource:0];
  }
}

- (BOOL)unregisterNetworkAgentInternal
{
  v8 = *MEMORY[0x1E69E9840];
  isRegisteredInternal = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (isRegisteredInternal)
  {
    memset(v7, 0, sizeof(v7));
    v4 = isRegisteredInternal;
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v7];

    nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v7, 2, 0, 0, 0, 0);
    [(NWNetworkAgentRegistration *)self setNetworkAgent:0];
    [(NWNetworkAgentRegistration *)self setRegisteredUUID:0];
    LOBYTE(isRegisteredInternal) = v4;
  }

  return isRegisteredInternal;
}

- (BOOL)updateNetworkAgent:(id)agent
{
  v26 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  if (-[NWNetworkAgentRegistration isRegisteredInternal](self, "isRegisteredInternal") && (-[NWNetworkAgentRegistration networkAgentClass](self, "networkAgentClass"), (objc_opt_isKindOfClass() & 1) != 0) && (-[NWNetworkAgentRegistration registeredUUID](self, "registeredUUID"), v5 = objc_claimAutoreleasedReturnValue(), [agentCopy agentUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    memset(v25, 0, sizeof(v25));
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    [registeredUUID getUUIDBytes:v25];

    copyAgentData = [agentCopy copyAgentData];
    if (objc_opt_respondsToSelector())
    {
      isSpecificUseOnly = [agentCopy isSpecificUseOnly];
    }

    else
    {
      isSpecificUseOnly = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      isNetworkProvider = [agentCopy isNetworkProvider];
    }

    else
    {
      isNetworkProvider = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      isNexusProvider = [agentCopy isNexusProvider];
    }

    else
    {
      isNexusProvider = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsListenRequests = [agentCopy supportsListenRequests];
    }

    else
    {
      supportsListenRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsBrowseRequests = [agentCopy supportsBrowseRequests];
    }

    else
    {
      supportsBrowseRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsResolveRequests = [agentCopy supportsResolveRequests];
    }

    else
    {
      supportsResolveRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      requiresAssert = [agentCopy requiresAssert];
    }

    else
    {
      requiresAssert = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      updateClientsImmediately = [agentCopy updateClientsImmediately];
    }

    else
    {
      updateClientsImmediately = 0;
    }

    agentDomain = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
    agentType = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
    agentDescription = [agentCopy agentDescription];
    v17 = agentDomain;
    v14 = nw_network_agent_ctl_setsockopt(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), 3, v25, [agentDomain UTF8String], objc_msgSend(agentType, "UTF8String"), objc_msgSend(agentDescription, "UTF8String"), objc_msgSend(agentCopy, "isActive"), objc_msgSend(agentCopy, "isKernelActivated"), objc_msgSend(agentCopy, "isUserActivated"), objc_msgSend(agentCopy, "isVoluntary"), isSpecificUseOnly, isNetworkProvider, isNexusProvider, supportsListenRequests, supportsBrowseRequests, supportsResolveRequests, 0, requiresAssert, updateClientsImmediately, objc_msgSend(copyAgentData, "bytes"), objc_msgSend(copyAgentData, "length"));
    v9 = v14 >= 0;
    if ((v14 & 0x80000000) == 0)
    {
      [(NWNetworkAgentRegistration *)self setNetworkAgent:agentCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setRegisteredNetworkAgent:(id)agent fileDescriptor:(int)descriptor
{
  v4 = *&descriptor;
  v17 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  [(NWNetworkAgentRegistration *)self networkAgentClass];
  if (objc_opt_isKindOfClass())
  {
    [(NWNetworkAgentRegistration *)self setNetworkAgent:agentCopy];
    agentUUID = [agentCopy agentUUID];
    [(NWNetworkAgentRegistration *)self setRegisteredUUID:agentUUID];

    session = [(NWNetworkAgentRegistration *)self session];

    if (session)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v16 = "[NWNetworkAgentRegistration setRegisteredNetworkAgent:fileDescriptor:]";
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s Agent registration updated with session", buf, 0xCu);
      }

      session2 = [(NWNetworkAgentRegistration *)self session];
      [session2 addRegistration:self];
    }

    else
    {
      if (![(NWNetworkAgentRegistration *)self createReadSourceWithRegistrationSocket:v4])
      {
        v12 = 0;
        goto LABEL_12;
      }

      session2 = [(NWNetworkAgentRegistration *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__NWNetworkAgentRegistration_setRegisteredNetworkAgent_fileDescriptor___block_invoke;
      block[3] = &unk_1E6A3D868;
      block[4] = self;
      dispatch_async(session2, block);
    }

    v12 = 1;
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "[NWNetworkAgentRegistration setRegisteredNetworkAgent:fileDescriptor:]";
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_ERROR, "%{public}s Agent is not a valid class", buf, 0xCu);
    }

    v12 = 0;
  }

LABEL_12:

  return v12;
}

- (BOOL)registerNetworkAgent:(id)agent
{
  agentCopy = agent;
  session = [(NWNetworkAgentRegistration *)self session];

  if (session)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = +[NWNetworkAgentRegistration newRegistrationFileDescriptor];
  }

  v7 = [(NWNetworkAgentRegistration *)self internalRegisterNetworkAgent:agentCopy withFileDescriptor:v6];

  return v7;
}

- (BOOL)registerNetworkAgent:(id)agent withFileDescriptor:(int)descriptor
{
  v4 = *&descriptor;
  v13 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  session = [(NWNetworkAgentRegistration *)self session];

  if (session)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446210;
      v12 = "[NWNetworkAgentRegistration registerNetworkAgent:withFileDescriptor:]";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Agent cannot register with a file descriptor if session is set", &v11, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [(NWNetworkAgentRegistration *)self internalRegisterNetworkAgent:agentCopy withFileDescriptor:v4];
  }

  return v9;
}

- (BOOL)internalRegisterNetworkAgent:(id)agent withFileDescriptor:(int)descriptor
{
  v4 = *&descriptor;
  v30 = *MEMORY[0x1E69E9840];
  agentCopy = agent;
  [(NWNetworkAgentRegistration *)self networkAgentClass];
  if (objc_opt_isKindOfClass())
  {
    session = [(NWNetworkAgentRegistration *)self session];

    if (session)
    {
      session2 = [(NWNetworkAgentRegistration *)self session];
      [session2 addRegistration:self];
    }

    else if (![(NWNetworkAgentRegistration *)self createReadSourceWithRegistrationSocket:v4])
    {
      v10 = 0;
      goto LABEL_38;
    }

    *buf = 0;
    *&buf[8] = 0;
    agentUUID = [agentCopy agentUUID];
    [agentUUID getUUIDBytes:buf];

    copyAgentData = [agentCopy copyAgentData];
    if (objc_opt_respondsToSelector())
    {
      isSpecificUseOnly = [agentCopy isSpecificUseOnly];
    }

    else
    {
      isSpecificUseOnly = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      isNetworkProvider = [agentCopy isNetworkProvider];
    }

    else
    {
      isNetworkProvider = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      isNexusProvider = [agentCopy isNexusProvider];
    }

    else
    {
      isNexusProvider = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsListenRequests = [agentCopy supportsListenRequests];
    }

    else
    {
      supportsListenRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsBrowseRequests = [agentCopy supportsBrowseRequests];
    }

    else
    {
      supportsBrowseRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      supportsResolveRequests = [agentCopy supportsResolveRequests];
    }

    else
    {
      supportsResolveRequests = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      requiresAssert = [agentCopy requiresAssert];
    }

    else
    {
      requiresAssert = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      updateClientsImmediately = [agentCopy updateClientsImmediately];
    }

    else
    {
      updateClientsImmediately = 0;
    }

    agentDomain = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
    agentType = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
    [agentCopy agentDescription];
    v21 = v23 = agentDomain;
    v14 = nw_network_agent_ctl_setsockopt(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), 1, buf, [agentDomain UTF8String], objc_msgSend(agentType, "UTF8String"), objc_msgSend(v21, "UTF8String"), objc_msgSend(agentCopy, "isActive"), objc_msgSend(agentCopy, "isKernelActivated"), objc_msgSend(agentCopy, "isUserActivated"), objc_msgSend(agentCopy, "isVoluntary"), isSpecificUseOnly, isNetworkProvider, isNexusProvider, supportsListenRequests, supportsBrowseRequests, supportsResolveRequests, 0, requiresAssert, updateClientsImmediately, objc_msgSend(copyAgentData, "bytes"), objc_msgSend(copyAgentData, "length"));
    v10 = v14 >= 0;
    if (v14 < 0)
    {
      session3 = [(NWNetworkAgentRegistration *)self session];

      if (!session3)
      {
        close([(NWNetworkAgentRegistration *)self registrationSocket]);
        [(NWNetworkAgentRegistration *)self setRegistrationSocket:0xFFFFFFFFLL];
        goto LABEL_37;
      }

      session4 = [(NWNetworkAgentRegistration *)self session];
      [session4 removeRegistration:self];
    }

    else
    {
      [(NWNetworkAgentRegistration *)self setNetworkAgent:agentCopy];
      session4 = [agentCopy agentUUID];
      [(NWNetworkAgentRegistration *)self setRegisteredUUID:session4];
    }

LABEL_37:
    goto LABEL_38;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    *&buf[4] = "[NWNetworkAgentRegistration internalRegisterNetworkAgent:withFileDescriptor:]";
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Agent is not a valid class", buf, 0xCu);
  }

  v10 = 0;
LABEL_38:

  return v10;
}

- (BOOL)createReadSourceWithRegistrationSocket:(int)socket
{
  v38 = *MEMORY[0x1E69E9840];
  if (socket < 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    *buf = 136446210;
    v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
    v8 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v8, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v10 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null registrationSocket", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v12 = type;
        v13 = os_log_type_enabled(v9, type);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
            v36 = 2082;
            v37 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null registrationSocket, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          if (!v8)
          {
            return 0;
          }

          goto LABEL_32;
        }

        if (v13)
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s called with null registrationSocket, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v9 = gLogObj;
        v17 = type;
        if (os_log_type_enabled(v9, type))
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v9, v17, "%{public}s called with null registrationSocket, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v8)
    {
      return 0;
    }

LABEL_32:
    free(v8);
    return 0;
  }

  v3 = *&socket;
  session = [(NWNetworkAgentRegistration *)self session];

  if (session)
  {
    return 0;
  }

  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s Agent registration is already active", buf, 0xCu);
    }

    return 0;
  }

  queue = [(NWNetworkAgentRegistration *)self queue];
  v15 = dispatch_source_create(MEMORY[0x1E69E96F8], v3, 0, queue);

  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v18 = gLogObj;
    *buf = 136446210;
    v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (__nwlog_fault(v19, &type, &v32))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v20 = gLogObj;
        v21 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v20, v21, "%{public}s dispatch_source_create failed", buf, 0xCu);
        }
      }

      else if (v32 == 1)
      {
        v23 = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v24 = type;
        v25 = os_log_type_enabled(v20, type);
        if (v23)
        {
          if (v25)
          {
            *buf = 136446466;
            v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
            v36 = 2082;
            v37 = v23;
            _os_log_impl(&dword_181A37000, v20, v24, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v23);
          goto LABEL_45;
        }

        if (v25)
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v20, v24, "%{public}s dispatch_source_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v20 = __nwlog_obj();
        v26 = type;
        if (os_log_type_enabled(v20, type))
        {
          *buf = 136446210;
          v35 = "[NWNetworkAgentRegistration createReadSourceWithRegistrationSocket:]";
          _os_log_impl(&dword_181A37000, v20, v26, "%{public}s dispatch_source_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_45:
    if (v19)
    {
      free(v19);
    }

    close(v3);
    goto LABEL_48;
  }

  [(NWNetworkAgentRegistration *)self setRegistrationSocket:v3];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __69__NWNetworkAgentRegistration_createReadSourceWithRegistrationSocket___block_invoke;
  handler[3] = &__block_descriptor_36_e5_v8__0l;
  v31 = v3;
  dispatch_source_set_cancel_handler(v15, handler);
  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__NWNetworkAgentRegistration_createReadSourceWithRegistrationSocket___block_invoke_2;
  v27[3] = &unk_1E6A3BCC8;
  objc_copyWeak(&v29, buf);
  v16 = v15;
  v28 = v16;
  dispatch_source_set_event_handler(v16, v27);
  dispatch_resume(v16);
  [(NWNetworkAgentRegistration *)self setReadSource:v16];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
LABEL_48:

  return v15 != 0;
}

void __69__NWNetworkAgentRegistration_createReadSourceWithRegistrationSocket___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained readSource];
    v4 = *(a1 + 32);

    WeakRetained = v5;
    if (v3 == v4)
    {
      [v5 handleMessageFromAgent];
      WeakRetained = v5;
    }
  }
}

- (void)handleMessageWithType:(unsigned __int8)type payload:(char *)payload payloadLength:(unsigned int)length
{
  v93 = *MEMORY[0x1E69E9840];
  if (type > 0x1Au)
  {
    return;
  }

  typeCopy = type;
  if (((1 << type) & 0x400F400) == 0)
  {
    if (((1 << type) & 0x320) == 0)
    {
      if (type != 25)
      {
        return;
      }

      networkAgent = [(NWNetworkAgentRegistration *)self networkAgent];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        return;
      }

      networkAgent2 = [(NWNetworkAgentRegistration *)self networkAgent];
      [networkAgent2 tokenLowWaterMarkReached];
      goto LABEL_82;
    }

    if (length < 0x18)
    {
      dictionary = 0;
      if (type != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (*(payload + 1))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [dictionary setObject:v12 forKeyedSubscript:@"PID"];
    }

    if (uuid_is_null(payload + 8))
    {
      v13 = *payload;
      if ((*payload & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v72 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:payload + 8];
      [dictionary setObject:v72 forKeyedSubscript:@"ProcessUUID"];

      v13 = *payload;
      if ((*payload & 2) == 0)
      {
LABEL_18:
        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_76;
      }
    }

    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromKernel"];
    if ((*payload & 1) == 0)
    {
LABEL_19:
      if (typeCopy != 5)
      {
LABEL_20:
        if (typeCopy == 9)
        {
          networkAgent3 = [(NWNetworkAgentRegistration *)self networkAgent];
          v70 = objc_opt_respondsToSelector();

          if (v70)
          {
            networkAgent4 = [(NWNetworkAgentRegistration *)self networkAgent];
            [networkAgent4 unassertAgentWithOptions:dictionary];
          }

          goto LABEL_62;
        }

        if (typeCopy != 8)
        {
          goto LABEL_37;
        }

        networkAgent5 = [(NWNetworkAgentRegistration *)self networkAgent];
        v15 = objc_opt_respondsToSelector();

        if ((v15 & 1) == 0)
        {
          goto LABEL_37;
        }

        networkAgent6 = [(NWNetworkAgentRegistration *)self networkAgent];
        v17 = [networkAgent6 assertAgentWithOptions:dictionary];
        goto LABEL_36;
      }

LABEL_34:
      networkAgent7 = [(NWNetworkAgentRegistration *)self networkAgent];
      v24 = objc_opt_respondsToSelector();

      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

      networkAgent6 = [(NWNetworkAgentRegistration *)self networkAgent];
      v17 = [networkAgent6 startAgentWithOptions:dictionary];
LABEL_36:
      v25 = v17;

      if (v25)
      {
LABEL_62:

        return;
      }

LABEL_37:
      networkAgent8 = [(NWNetworkAgentRegistration *)self networkAgent];
      copyAgentData = [networkAgent8 copyAgentData];

      memset(v92, 0, sizeof(v92));
      registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
      [registeredUUID getUUIDBytes:v92];

      networkAgent9 = [(NWNetworkAgentRegistration *)self networkAgent];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        networkAgent10 = [(NWNetworkAgentRegistration *)self networkAgent];
        isSpecificUseOnly = [networkAgent10 isSpecificUseOnly];
      }

      else
      {
        isSpecificUseOnly = 0;
      }

      networkAgent11 = [(NWNetworkAgentRegistration *)self networkAgent];
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        networkAgent12 = [(NWNetworkAgentRegistration *)self networkAgent];
        isNetworkProvider = [networkAgent12 isNetworkProvider];
      }

      else
      {
        isNetworkProvider = 0;
      }

      networkAgent13 = [(NWNetworkAgentRegistration *)self networkAgent];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        networkAgent14 = [(NWNetworkAgentRegistration *)self networkAgent];
        isNexusProvider = [networkAgent14 isNexusProvider];
      }

      else
      {
        isNexusProvider = 0;
      }

      networkAgent15 = [(NWNetworkAgentRegistration *)self networkAgent];
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        networkAgent16 = [(NWNetworkAgentRegistration *)self networkAgent];
        supportsListenRequests = [networkAgent16 supportsListenRequests];
      }

      else
      {
        supportsListenRequests = 0;
      }

      networkAgent17 = [(NWNetworkAgentRegistration *)self networkAgent];
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        networkAgent18 = [(NWNetworkAgentRegistration *)self networkAgent];
        supportsBrowseRequests = [networkAgent18 supportsBrowseRequests];
      }

      else
      {
        supportsBrowseRequests = 0;
      }

      networkAgent19 = [(NWNetworkAgentRegistration *)self networkAgent];
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        networkAgent20 = [(NWNetworkAgentRegistration *)self networkAgent];
        supportsResolveRequests = [networkAgent20 supportsResolveRequests];
      }

      else
      {
        supportsResolveRequests = 0;
      }

      networkAgent21 = [(NWNetworkAgentRegistration *)self networkAgent];
      v48 = objc_opt_respondsToSelector();

      if (v48)
      {
        networkAgent22 = [(NWNetworkAgentRegistration *)self networkAgent];
        requiresAssert = [networkAgent22 requiresAssert];
      }

      else
      {
        requiresAssert = 0;
      }

      networkAgent23 = [(NWNetworkAgentRegistration *)self networkAgent];
      v51 = objc_opt_respondsToSelector();

      v91 = dictionary;
      if (v51)
      {
        networkAgent24 = [(NWNetworkAgentRegistration *)self networkAgent];
        updateClientsImmediately = [networkAgent24 updateClientsImmediately];
      }

      else
      {
        updateClientsImmediately = 0;
      }

      agentDomain = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
      agentType = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
      networkAgent25 = [(NWNetworkAgentRegistration *)self networkAgent];
      agentDescription = [networkAgent25 agentDescription];

      agentFileDescriptor = [(NWNetworkAgentRegistration *)self agentFileDescriptor];
      uTF8String = [agentDomain UTF8String];
      uTF8String2 = [agentType UTF8String];
      uTF8String3 = [agentDescription UTF8String];
      networkAgent26 = [(NWNetworkAgentRegistration *)self networkAgent];
      isActive = [networkAgent26 isActive];
      networkAgent27 = [(NWNetworkAgentRegistration *)self networkAgent];
      isKernelActivated = [networkAgent27 isKernelActivated];
      networkAgent28 = [(NWNetworkAgentRegistration *)self networkAgent];
      isUserActivated = [networkAgent28 isUserActivated];
      networkAgent29 = [(NWNetworkAgentRegistration *)self networkAgent];
      nw_network_agent_ctl_setsockopt(agentFileDescriptor, 3, v92, uTF8String, uTF8String2, uTF8String3, isActive, isKernelActivated, isUserActivated, [networkAgent29 isVoluntary], isSpecificUseOnly, isNetworkProvider, isNexusProvider, supportsListenRequests, supportsBrowseRequests, supportsResolveRequests, 0, requiresAssert, updateClientsImmediately, objc_msgSend(copyAgentData, "bytes"), objc_msgSend(copyAgentData, "length"));

      dictionary = v91;
      goto LABEL_62;
    }

LABEL_76:
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromUser"];
    if (typeCopy != 5)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (length < 0x10)
  {
    networkAgent2 = 0;
    if (type > 13)
    {
      goto LABEL_7;
    }

LABEL_25:
    switch(typeCopy)
    {
      case 10:
        networkAgent30 = [(NWNetworkAgentRegistration *)self networkAgent];
        v64 = objc_opt_respondsToSelector();

        if ((v64 & 1) == 0)
        {
          goto LABEL_82;
        }

        networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
        [networkAgent31 requestNexusWithOptions:networkAgent2];
        break;
      case 12:
        networkAgent32 = [(NWNetworkAgentRegistration *)self networkAgent];
        v68 = objc_opt_respondsToSelector();

        if (v68)
        {
          networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
          [networkAgent31 closeNexusWithOptions:networkAgent2];
          break;
        }

        goto LABEL_82;
      case 13:
        networkAgent33 = [(NWNetworkAgentRegistration *)self networkAgent];
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) == 0)
        {
          goto LABEL_82;
        }

        networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
        [networkAgent31 startAgentWithOptions:networkAgent2];
        break;
      default:
        goto LABEL_82;
    }

LABEL_81:

    goto LABEL_82;
  }

  lengthCopy = length;
  networkAgent2 = [MEMORY[0x1E695DF90] dictionary];
  if (!uuid_is_null(payload))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:payload];
    [networkAgent2 setObject:v9 forKeyedSubscript:@"ClientUUID"];
  }

  [networkAgent2 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromUser"];
  length = lengthCopy;
  if (typeCopy <= 13)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (typeCopy == 14)
  {
    networkAgent34 = [(NWNetworkAgentRegistration *)self networkAgent];
    v62 = objc_opt_respondsToSelector();

    if ((v62 & 1) == 0)
    {
      goto LABEL_82;
    }

    networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
    [networkAgent31 assertAgentWithOptions:networkAgent2];
    goto LABEL_81;
  }

  if (typeCopy != 15)
  {
    if (typeCopy != 26)
    {
      goto LABEL_82;
    }

    v10 = length < 0x14 ? 0 : *(payload + 4);
    networkAgent35 = [(NWNetworkAgentRegistration *)self networkAgent];
    v74 = objc_opt_respondsToSelector();

    if ((v74 & 1) == 0)
    {
      goto LABEL_82;
    }

    networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
    [networkAgent31 reportError:v10 withOptions:networkAgent2];
    goto LABEL_81;
  }

  networkAgent36 = [(NWNetworkAgentRegistration *)self networkAgent];
  v66 = objc_opt_respondsToSelector();

  if (v66)
  {
    networkAgent31 = [(NWNetworkAgentRegistration *)self networkAgent];
    [networkAgent31 unassertAgentWithOptions:networkAgent2];
    goto LABEL_81;
  }

LABEL_82:
}

- (int)dupRegistrationFileDescriptor
{
  session = [(NWNetworkAgentRegistration *)self session];

  if (session || [(NWNetworkAgentRegistration *)self registrationSocket]< 0)
  {
    return -1;
  }

  registrationSocket = [(NWNetworkAgentRegistration *)self registrationSocket];

  return dup(registrationSocket);
}

- (BOOL)isRegistered
{
  session = [(NWNetworkAgentRegistration *)self session];

  if (session)
  {
    registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
    v5 = registeredUUID != 0;
  }

  else if ([(NWNetworkAgentRegistration *)self registrationSocket]== -1)
  {
    return 0;
  }

  else
  {
    v7 = 0;
    [(NWNetworkAgentRegistration *)self tokenCountWithError:&v7];
    return v7 == 0;
  }

  return v5;
}

- (int)agentFileDescriptor
{
  session = [(NWNetworkAgentRegistration *)self session];

  if (session)
  {
    session2 = [(NWNetworkAgentRegistration *)self session];
    sessionFD = [session2 sessionFD];

    return sessionFD;
  }

  else
  {

    return [(NWNetworkAgentRegistration *)self registrationSocket];
  }
}

- (id)description
{
  v2 = [(NWNetworkAgentRegistration *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  v4 = *&indent;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  agentDomain = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
  [v6 appendPrettyObject:agentDomain withName:@"Domain" indent:v4 showFullContent:1];

  agentType = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
  [v6 appendPrettyObject:agentType withName:@"Type" indent:v4 showFullContent:1];

  registeredUUID = [(NWNetworkAgentRegistration *)self registeredUUID];
  [v6 appendPrettyObject:registeredUUID withName:@"UUID" indent:v4 showFullContent:1];

  return v6;
}

- (void)dealloc
{
  readSource = [(NWNetworkAgentRegistration *)self readSource];

  if (readSource)
  {
    readSource2 = [(NWNetworkAgentRegistration *)self readSource];
    dispatch_source_cancel(readSource2);

    [(NWNetworkAgentRegistration *)self setReadSource:0];
  }

  v5.receiver = self;
  v5.super_class = NWNetworkAgentRegistration;
  [(NWNetworkAgentRegistration *)&v5 dealloc];
}

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class session:(id)session
{
  v38 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v8 = sessionCopy;
  if (!class)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v15, &type, &v32))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null agentClass";
LABEL_44:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v26 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
          v36 = 2082;
          v37 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null agentClass, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v15)
        {
LABEL_48:

          v10 = 0;
          goto LABEL_5;
        }

LABEL_47:
        free(v15);
        goto LABEL_48;
      }

      if (v26)
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null agentClass, no backtrace";
        goto LABEL_44;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null agentClass, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

LABEL_45:

    goto LABEL_46;
  }

  if (!sessionCopy)
  {
    v19 = __nwlog_obj();
    *buf = 136446210;
    v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v15, &type, &v32))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null session";
        goto LABEL_44;
      }
    }

    else
    {
      if (v32 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v28 = os_log_type_enabled(v16, type);
        if (v27)
        {
          if (v28)
          {
            *buf = 136446466;
            v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
            v36 = 2082;
            v37 = v27;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null session, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          if (!v15)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (!v28)
        {
          goto LABEL_45;
        }

        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null session, no backtrace";
        goto LABEL_44;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v18 = "%{public}s called with null session, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

  v31.receiver = self;
  v31.super_class = NWNetworkAgentRegistration;
  v9 = [(NWNetworkAgentRegistration *)&v31 init];
  if (v9)
  {
    v10 = v9;
    v9->_networkAgentClass = class;
    v9->_registrationSocket = -1;
    objc_storeStrong(&v9->_session, session);
    queue = [v8 queue];
    queue = v10->_queue;
    v10->_queue = queue;

    goto LABEL_5;
  }

  v20 = __nwlog_obj();
  *buf = 136446210;
  v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
  v21 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v32 = 0;
  if (__nwlog_fault(v21, &type, &v32))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v24 = "%{public}s [super init] failed";
LABEL_51:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else
    {
      if (v32 == 1)
      {
        v29 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v30 = os_log_type_enabled(v22, type);
        if (v29)
        {
          if (v30)
          {
            *buf = 136446466;
            v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
            v36 = 2082;
            v37 = v29;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          goto LABEL_53;
        }

        if (!v30)
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v24 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_51;
      }

      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v35 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:session:]";
        v24 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_52:
  }

LABEL_53:
  if (v21)
  {
    free(v21);
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class queue:(id)queue
{
  v37 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v8 = queueCopy;
  if (!class)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v14, &type, &v31))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null agentClass";
LABEL_44:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v16 = type;
      v25 = os_log_type_enabled(v15, type);
      if (backtrace_string)
      {
        if (v25)
        {
          *buf = 136446466;
          v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null agentClass, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_46:
        if (!v14)
        {
LABEL_48:

          v10 = 0;
          goto LABEL_5;
        }

LABEL_47:
        free(v14);
        goto LABEL_48;
      }

      if (v25)
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null agentClass, no backtrace";
        goto LABEL_44;
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null agentClass, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

LABEL_45:

    goto LABEL_46;
  }

  if (!queueCopy)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v14, &type, &v31))
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null queue";
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v27 = os_log_type_enabled(v15, type);
        if (v26)
        {
          if (v27)
          {
            *buf = 136446466;
            v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
            v35 = 2082;
            v36 = v26;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null queue, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          if (!v14)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        if (!v27)
        {
          goto LABEL_45;
        }

        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null queue, no backtrace";
        goto LABEL_44;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v17 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_44;
      }
    }

    goto LABEL_45;
  }

  v30.receiver = self;
  v30.super_class = NWNetworkAgentRegistration;
  v9 = [(NWNetworkAgentRegistration *)&v30 init];
  if (v9)
  {
    v10 = v9;
    v9->_networkAgentClass = class;
    v9->_registrationSocket = -1;
    objc_storeStrong(&v9->_queue, queue);
    session = v10->_session;
    v10->_session = 0;

    goto LABEL_5;
  }

  v19 = __nwlog_obj();
  *buf = 136446210;
  v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
  v20 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v20, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v23 = "%{public}s [super init] failed";
LABEL_51:
        _os_log_impl(&dword_181A37000, v21, v22, v23, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v21 = __nwlog_obj();
        v22 = type;
        v29 = os_log_type_enabled(v21, type);
        if (v28)
        {
          if (v29)
          {
            *buf = 136446466;
            v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
            v35 = 2082;
            v36 = v28;
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          goto LABEL_53;
        }

        if (!v29)
        {
          goto LABEL_52;
        }

        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v23 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_51;
      }

      v21 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v21, type))
      {
        *buf = 136446210;
        v34 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:queue:]";
        v23 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_51;
      }
    }

LABEL_52:
  }

LABEL_53:
  if (v20)
  {
    free(v20);
  }

  v10 = 0;
LABEL_5:

  return v10;
}

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)class
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NWNetworkAgentRegistration;
  v4 = [(NWNetworkAgentRegistration *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_networkAgentClass = class;
    v4->_registrationSocket = -1;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("NWNetworkAgentRegistration queue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    session = v5->_session;
    v5->_session = 0;

    v10 = v5;
    goto LABEL_3;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:]";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v13, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:]";
        v16 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v23 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:]";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v18)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v23 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:]";
        v16 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "[NWNetworkAgentRegistration initWithNetworkAgentClass:]";
        v16 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v13)
  {
    free(v13);
  }

LABEL_3:

  return v5;
}

+ (BOOL)useNetworkAgent:(id)agent returnUseCount:(unint64_t *)count
{
  v13[2] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v13[1] = 0;
  agentUUID = [agent agentUUID];
  [agentUUID getUUIDBytes:v13];

  v6 = sharedAssertionEvaluator;
  if (!sharedAssertionEvaluator)
  {
    v7 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
    v8 = sharedAssertionEvaluator;
    sharedAssertionEvaluator = v7;

    v6 = sharedAssertionEvaluator;
    if (!sharedAssertionEvaluator)
    {
      return 0;
    }
  }

  path = [v6 path];
  internalPath = [path internalPath];
  v11 = nw_path_increment_agent_use_count(internalPath, v13, count);

  return v11;
}

+ (BOOL)removeActiveAssertionFromNetworkAgent:(id)agent
{
  v10 = *MEMORY[0x1E69E9840];
  *v8 = 0;
  v9 = 0;
  agentUUID = [agent agentUUID];
  [agentUUID getUUIDBytes:v8];

  if (!sharedAssertionEvaluator)
  {
    return 0;
  }

  path = [sharedAssertionEvaluator path];
  internalPath = [path internalPath];
  v6 = nw_path_agent_action(internalPath, v8, 132);

  return v6;
}

+ (BOOL)addActiveAssertionToNetworkAgent:(id)agent
{
  v13 = *MEMORY[0x1E69E9840];
  *v11 = 0;
  v12 = 0;
  agentUUID = [agent agentUUID];
  [agentUUID getUUIDBytes:v11];

  v4 = sharedAssertionEvaluator;
  if (!sharedAssertionEvaluator)
  {
    v5 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:0];
    v6 = sharedAssertionEvaluator;
    sharedAssertionEvaluator = v5;

    v4 = sharedAssertionEvaluator;
    if (!sharedAssertionEvaluator)
    {
      return 0;
    }
  }

  path = [v4 path];
  internalPath = [path internalPath];
  v9 = nw_path_agent_action(internalPath, v11, 131);

  return v9;
}

@end
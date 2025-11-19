@interface NWNetworkAgentRegistration
+ (BOOL)addActiveAssertionToNetworkAgent:(id)a3;
+ (BOOL)removeActiveAssertionFromNetworkAgent:(id)a3;
+ (BOOL)useNetworkAgent:(id)a3 returnUseCount:(unint64_t *)a4;
- (BOOL)addNetworkAgentToInterfaceNamed:(id)a3;
- (BOOL)addToken:(id)a3;
- (BOOL)assignDiscoveredEndpoints:(id)a3 toClient:(id)a4;
- (BOOL)assignNexusData:(id)a3 toClient:(id)a4;
- (BOOL)assignResolvedEndpoints:(id)a3 toClient:(id)a4;
- (BOOL)createReadSourceWithRegistrationSocket:(int)a3;
- (BOOL)flushTokens;
- (BOOL)internalRegisterNetworkAgent:(id)a3 withFileDescriptor:(int)a4;
- (BOOL)isRegistered;
- (BOOL)isRegisteredInternal;
- (BOOL)registerNetworkAgent:(id)a3;
- (BOOL)registerNetworkAgent:(id)a3 withFileDescriptor:(int)a4;
- (BOOL)removeNetworkAgentFromInterfaceNamed:(id)a3;
- (BOOL)resetError;
- (BOOL)setLowWaterMark:(unsigned int)a3;
- (BOOL)setRegisteredNetworkAgent:(id)a3 fileDescriptor:(int)a4;
- (BOOL)unregisterNetworkAgent;
- (BOOL)unregisterNetworkAgentInternal;
- (BOOL)updateNetworkAgent:(id)a3;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3 queue:(id)a4;
- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3 session:(id)a4;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (int)agentFileDescriptor;
- (int)dupRegistrationFileDescriptor;
- (unint64_t)useCount;
- (unsigned)tokenCountWithError:(int *)a3;
- (void)dealloc;
- (void)handleMessageFromAgent;
- (void)handleMessageWithType:(unsigned __int8)a3 payload:(char *)a4 payloadLength:(unsigned int)a5;
- (void)setUseCount:(unint64_t)a3;
@end

@implementation NWNetworkAgentRegistration

- (void)handleMessageFromAgent
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    v3 = [(NWNetworkAgentRegistration *)self session];

    if (!v3)
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
  v3 = [(NWNetworkAgentRegistration *)self session];

  if (!v3)
  {
    return [(NWNetworkAgentRegistration *)self registrationSocket]!= -1;
  }

  v4 = [(NWNetworkAgentRegistration *)self registeredUUID];
  v5 = v4 != 0;

  return v5;
}

- (unsigned)tokenCountWithError:(int *)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  result = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (result)
  {
    v8 = 0;
    v9[0] = 0;
    v9[1] = 0;
    v6 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v6 getUUIDBytes:v9];

    token_count = nw_network_agent_get_token_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v9, &v8);
    if (a3)
    {
      *a3 = token_count;
    }

    return v8;
  }

  return result;
}

- (void)setUseCount:(unint64_t)a3
{
  v6[2] = *MEMORY[0x1E69E9840];
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    v6[0] = 0;
    v6[1] = 0;
    v5 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v5 getUUIDBytes:v6];

    nw_network_agent_set_use_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, a3);
  }
}

- (unint64_t)useCount
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v3 = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  result = 0;
  if (v3)
  {
    v7[0] = 0;
    v7[1] = 0;
    v5 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v5 getUUIDBytes:v7];

    nw_network_agent_get_use_count([(NWNetworkAgentRegistration *)self agentFileDescriptor], v7, &v6);
    return v6;
  }

  return result;
}

- (BOOL)assignResolvedEndpoints:(id)a3 toClient:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    *&buf[4] = "[NWNetworkAgentRegistration assignResolvedEndpoints:toClient:]";
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Assigning resolved endpoints %@ to %@", buf, 0x20u);
  }

  v9 = _nw_array_create();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
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

        v14 = [*(*(&v21 + 1) + 8 * i) internalEndpoint];
        if (v14)
        {
          v15 = v9 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          _nw_array_append(v9, v14);
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
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:v18 toClient:v7];
  }

  else
  {
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:0 toClient:v7];
  }

  return v19;
}

- (BOOL)assignDiscoveredEndpoints:(id)a3 toClient:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    *&buf[4] = "[NWNetworkAgentRegistration assignDiscoveredEndpoints:toClient:]";
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s Assigning discovered endpoints %@ to %@", buf, 0x20u);
  }

  v9 = _nw_array_create();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
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

        v14 = [*(*(&v21 + 1) + 8 * i) internalEndpoint];
        if (v14)
        {
          v15 = v9 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          _nw_array_append(v9, v14);
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
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:v18 toClient:v7];
  }

  else
  {
    v19 = [(NWNetworkAgentRegistration *)self assignNexusData:0 toClient:v7];
  }

  return v19;
}

- (BOOL)assignNexusData:(id)a3 toClient:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(NWNetworkAgentRegistration *)self isRegisteredInternal])
  {
    goto LABEL_44;
  }

  v8 = [(NWNetworkAgentRegistration *)self registeredUUID];

  if (v8)
  {
    if ([v6 length] >= 0xFFFFFFF0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      *buf = 136446466;
      *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
      *&buf[12] = 2048;
      *&buf[14] = [v6 length];
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
          v13 = [v6 length];
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
            v21 = [v6 length];
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
          v33 = [v6 length];
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
          v27 = [v6 length];
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

    LODWORD(v8) = [v6 length] + 16;
    v15 = malloc_type_calloc(v8, 1uLL, 0xD86E156uLL);
    if (v15)
    {
      v16 = v15;
      *buf = 0;
      *&buf[8] = 0;
      [v7 getUUIDBytes:buf];
      *v16 = *buf;
      if ([v6 length])
      {
        memcpy(v16 + 16, [v6 bytes], objc_msgSend(v6, "length"));
      }

      memset(type, 0, sizeof(type));
      v17 = [(NWNetworkAgentRegistration *)self registeredUUID];
      [v17 getUUIDBytes:type];

      LOBYTE(v8) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], type, 11, v16, v8, 0, 0) >= 0;
      free(v16);
      goto LABEL_45;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446466;
    *&buf[4] = "[NWNetworkAgentRegistration assignNexusData:toClient:]";
    *&buf[12] = 1024;
    *&buf[14] = v8;
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
          *&buf[14] = v8;
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
          *&buf[14] = v8;
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
          *&buf[14] = v8;
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
        *&buf[14] = v8;
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
    LOBYTE(v8) = 0;
  }

LABEL_45:

  return v8;
}

- (BOOL)removeNetworkAgentFromInterfaceNamed:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal]&& ([(NWNetworkAgentRegistration *)self registeredUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    *uu = 0;
    v10 = 0;
    v6 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v6 getUUIDBytes:uu];

    v7 = nw_network_agent_remove_from_interface([v4 UTF8String], uu) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addNetworkAgentToInterfaceNamed:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NWNetworkAgentRegistration *)self isRegisteredInternal]&& ([(NWNetworkAgentRegistration *)self registeredUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    *uu = 0;
    v10 = 0;
    v6 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v6 getUUIDBytes:uu];

    v7 = nw_network_agent_add_to_interface([v4 UTF8String], uu) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setLowWaterMark:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (v5)
  {
    memset(v9, 0, sizeof(v9));
    v6 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v6 getUUIDBytes:v9];

    *v8 = a3;
    LOBYTE(v5) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v9, 24, v8, 4u, 0, 0) == 0;
  }

  return v5;
}

- (BOOL)resetError
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (v3)
  {
    memset(v6, 0, sizeof(v6));
    v4 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v4 getUUIDBytes:v6];

    LOBYTE(v3) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, 27, 0, 0, 0, 0) == 0;
  }

  return v3;
}

- (BOOL)flushTokens
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (v3)
  {
    memset(v6, 0, sizeof(v6));
    v4 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v4 getUUIDBytes:v6];

    LOBYTE(v3) = nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v6, 22, 0, 0, 0, 0) == 0;
  }

  return v3;
}

- (BOOL)addToken:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  if ([v4 length] > 0x1000)
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
  v6 = [(NWNetworkAgentRegistration *)self registeredUUID];
  [v6 getUUIDBytes:buf];

  v7 = nw_network_agent_ctl_setsockopt_inner(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), buf, 21, [v5 bytes], objc_msgSend(v5, "length"), 0, 0) == 0;
LABEL_36:

  return v7;
}

- (BOOL)unregisterNetworkAgent
{
  v3 = [(NWNetworkAgentRegistration *)self unregisterNetworkAgentInternal];
  if (v3)
  {
    v4 = v3;
    v5 = [(NWNetworkAgentRegistration *)self session];

    if (v5)
    {
      v6 = [(NWNetworkAgentRegistration *)self session];
      [v6 removeRegistration:self];
    }

    else
    {
      v6 = [(NWNetworkAgentRegistration *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__NWNetworkAgentRegistration_unregisterNetworkAgent__block_invoke;
      block[3] = &unk_1E6A3D868;
      block[4] = self;
      dispatch_async(v6, block);
    }

    LOBYTE(v3) = v4;
  }

  return v3;
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
  v3 = [(NWNetworkAgentRegistration *)self isRegisteredInternal];
  if (v3)
  {
    memset(v7, 0, sizeof(v7));
    v4 = v3;
    v5 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v5 getUUIDBytes:v7];

    nw_network_agent_ctl_setsockopt_inner([(NWNetworkAgentRegistration *)self agentFileDescriptor], v7, 2, 0, 0, 0, 0);
    [(NWNetworkAgentRegistration *)self setNetworkAgent:0];
    [(NWNetworkAgentRegistration *)self setRegisteredUUID:0];
    LOBYTE(v3) = v4;
  }

  return v3;
}

- (BOOL)updateNetworkAgent:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[NWNetworkAgentRegistration isRegisteredInternal](self, "isRegisteredInternal") && (-[NWNetworkAgentRegistration networkAgentClass](self, "networkAgentClass"), (objc_opt_isKindOfClass() & 1) != 0) && (-[NWNetworkAgentRegistration registeredUUID](self, "registeredUUID"), v5 = objc_claimAutoreleasedReturnValue(), [v4 agentUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7))
  {
    memset(v25, 0, sizeof(v25));
    v8 = [(NWNetworkAgentRegistration *)self registeredUUID];
    [v8 getUUIDBytes:v25];

    v24 = [v4 copyAgentData];
    if (objc_opt_respondsToSelector())
    {
      v23 = [v4 isSpecificUseOnly];
    }

    else
    {
      v23 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v4 isNetworkProvider];
    }

    else
    {
      v22 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [v4 isNexusProvider];
    }

    else
    {
      v21 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v4 supportsListenRequests];
    }

    else
    {
      v20 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v4 supportsBrowseRequests];
    }

    else
    {
      v19 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v4 supportsResolveRequests];
    }

    else
    {
      v18 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [v4 requiresAssert];
    }

    else
    {
      v16 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [v4 updateClientsImmediately];
    }

    else
    {
      v15 = 0;
    }

    v11 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
    v12 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
    v13 = [v4 agentDescription];
    v17 = v11;
    v14 = nw_network_agent_ctl_setsockopt(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), 3, v25, [v11 UTF8String], objc_msgSend(v12, "UTF8String"), objc_msgSend(v13, "UTF8String"), objc_msgSend(v4, "isActive"), objc_msgSend(v4, "isKernelActivated"), objc_msgSend(v4, "isUserActivated"), objc_msgSend(v4, "isVoluntary"), v23, v22, v21, v20, v19, v18, 0, v16, v15, objc_msgSend(v24, "bytes"), objc_msgSend(v24, "length"));
    v9 = v14 >= 0;
    if ((v14 & 0x80000000) == 0)
    {
      [(NWNetworkAgentRegistration *)self setNetworkAgent:v4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setRegisteredNetworkAgent:(id)a3 fileDescriptor:(int)a4
{
  v4 = *&a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NWNetworkAgentRegistration *)self networkAgentClass];
  if (objc_opt_isKindOfClass())
  {
    [(NWNetworkAgentRegistration *)self setNetworkAgent:v6];
    v7 = [v6 agentUUID];
    [(NWNetworkAgentRegistration *)self setRegisteredUUID:v7];

    v8 = [(NWNetworkAgentRegistration *)self session];

    if (v8)
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

      v10 = [(NWNetworkAgentRegistration *)self session];
      [v10 addRegistration:self];
    }

    else
    {
      if (![(NWNetworkAgentRegistration *)self createReadSourceWithRegistrationSocket:v4])
      {
        v12 = 0;
        goto LABEL_12;
      }

      v10 = [(NWNetworkAgentRegistration *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__NWNetworkAgentRegistration_setRegisteredNetworkAgent_fileDescriptor___block_invoke;
      block[3] = &unk_1E6A3D868;
      block[4] = self;
      dispatch_async(v10, block);
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

- (BOOL)registerNetworkAgent:(id)a3
{
  v4 = a3;
  v5 = [(NWNetworkAgentRegistration *)self session];

  if (v5)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = +[NWNetworkAgentRegistration newRegistrationFileDescriptor];
  }

  v7 = [(NWNetworkAgentRegistration *)self internalRegisterNetworkAgent:v4 withFileDescriptor:v6];

  return v7;
}

- (BOOL)registerNetworkAgent:(id)a3 withFileDescriptor:(int)a4
{
  v4 = *&a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(NWNetworkAgentRegistration *)self session];

  if (v7)
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
    v9 = [(NWNetworkAgentRegistration *)self internalRegisterNetworkAgent:v6 withFileDescriptor:v4];
  }

  return v9;
}

- (BOOL)internalRegisterNetworkAgent:(id)a3 withFileDescriptor:(int)a4
{
  v4 = *&a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(NWNetworkAgentRegistration *)self networkAgentClass];
  if (objc_opt_isKindOfClass())
  {
    v7 = [(NWNetworkAgentRegistration *)self session];

    if (v7)
    {
      v8 = [(NWNetworkAgentRegistration *)self session];
      [v8 addRegistration:self];
    }

    else if (![(NWNetworkAgentRegistration *)self createReadSourceWithRegistrationSocket:v4])
    {
      v10 = 0;
      goto LABEL_38;
    }

    *buf = 0;
    *&buf[8] = 0;
    v11 = [v6 agentUUID];
    [v11 getUUIDBytes:buf];

    v28 = [v6 copyAgentData];
    if (objc_opt_respondsToSelector())
    {
      v27 = [v6 isSpecificUseOnly];
    }

    else
    {
      v27 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [v6 isNetworkProvider];
    }

    else
    {
      v26 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [v6 isNexusProvider];
    }

    else
    {
      v25 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v24 = [v6 supportsListenRequests];
    }

    else
    {
      v24 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [v6 supportsBrowseRequests];
    }

    else
    {
      v22 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [v6 supportsResolveRequests];
    }

    else
    {
      v20 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = [v6 requiresAssert];
    }

    else
    {
      v19 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [v6 updateClientsImmediately];
    }

    else
    {
      v18 = 0;
    }

    v12 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
    v13 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
    [v6 agentDescription];
    v21 = v23 = v12;
    v14 = nw_network_agent_ctl_setsockopt(-[NWNetworkAgentRegistration agentFileDescriptor](self, "agentFileDescriptor"), 1, buf, [v12 UTF8String], objc_msgSend(v13, "UTF8String"), objc_msgSend(v21, "UTF8String"), objc_msgSend(v6, "isActive"), objc_msgSend(v6, "isKernelActivated"), objc_msgSend(v6, "isUserActivated"), objc_msgSend(v6, "isVoluntary"), v27, v26, v25, v24, v22, v20, 0, v19, v18, objc_msgSend(v28, "bytes"), objc_msgSend(v28, "length"));
    v10 = v14 >= 0;
    if (v14 < 0)
    {
      v16 = [(NWNetworkAgentRegistration *)self session];

      if (!v16)
      {
        close([(NWNetworkAgentRegistration *)self registrationSocket]);
        [(NWNetworkAgentRegistration *)self setRegistrationSocket:0xFFFFFFFFLL];
        goto LABEL_37;
      }

      v15 = [(NWNetworkAgentRegistration *)self session];
      [v15 removeRegistration:self];
    }

    else
    {
      [(NWNetworkAgentRegistration *)self setNetworkAgent:v6];
      v15 = [v6 agentUUID];
      [(NWNetworkAgentRegistration *)self setRegisteredUUID:v15];
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

- (BOOL)createReadSourceWithRegistrationSocket:(int)a3
{
  v38 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
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

  v3 = *&a3;
  v5 = [(NWNetworkAgentRegistration *)self session];

  if (v5)
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

  v14 = [(NWNetworkAgentRegistration *)self queue];
  v15 = dispatch_source_create(MEMORY[0x1E69E96F8], v3, 0, v14);

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

- (void)handleMessageWithType:(unsigned __int8)a3 payload:(char *)a4 payloadLength:(unsigned int)a5
{
  v93 = *MEMORY[0x1E69E9840];
  if (a3 > 0x1Au)
  {
    return;
  }

  v6 = a3;
  if (((1 << a3) & 0x400F400) == 0)
  {
    if (((1 << a3) & 0x320) == 0)
    {
      if (a3 != 25)
      {
        return;
      }

      v21 = [(NWNetworkAgentRegistration *)self networkAgent];
      v22 = objc_opt_respondsToSelector();

      if ((v22 & 1) == 0)
      {
        return;
      }

      v90 = [(NWNetworkAgentRegistration *)self networkAgent];
      [v90 tokenLowWaterMarkReached];
      goto LABEL_82;
    }

    if (a5 < 0x18)
    {
      v11 = 0;
      if (a3 != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

    v11 = [MEMORY[0x1E695DF90] dictionary];
    if (*(a4 + 1))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v11 setObject:v12 forKeyedSubscript:@"PID"];
    }

    if (uuid_is_null(a4 + 8))
    {
      v13 = *a4;
      if ((*a4 & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v72 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a4 + 8];
      [v11 setObject:v72 forKeyedSubscript:@"ProcessUUID"];

      v13 = *a4;
      if ((*a4 & 2) == 0)
      {
LABEL_18:
        if ((v13 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_76;
      }
    }

    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromKernel"];
    if ((*a4 & 1) == 0)
    {
LABEL_19:
      if (v6 != 5)
      {
LABEL_20:
        if (v6 == 9)
        {
          v69 = [(NWNetworkAgentRegistration *)self networkAgent];
          v70 = objc_opt_respondsToSelector();

          if (v70)
          {
            v71 = [(NWNetworkAgentRegistration *)self networkAgent];
            [v71 unassertAgentWithOptions:v11];
          }

          goto LABEL_62;
        }

        if (v6 != 8)
        {
          goto LABEL_37;
        }

        v14 = [(NWNetworkAgentRegistration *)self networkAgent];
        v15 = objc_opt_respondsToSelector();

        if ((v15 & 1) == 0)
        {
          goto LABEL_37;
        }

        v16 = [(NWNetworkAgentRegistration *)self networkAgent];
        v17 = [v16 assertAgentWithOptions:v11];
        goto LABEL_36;
      }

LABEL_34:
      v23 = [(NWNetworkAgentRegistration *)self networkAgent];
      v24 = objc_opt_respondsToSelector();

      if ((v24 & 1) == 0)
      {
        goto LABEL_37;
      }

      v16 = [(NWNetworkAgentRegistration *)self networkAgent];
      v17 = [v16 startAgentWithOptions:v11];
LABEL_36:
      v25 = v17;

      if (v25)
      {
LABEL_62:

        return;
      }

LABEL_37:
      v26 = [(NWNetworkAgentRegistration *)self networkAgent];
      v27 = [v26 copyAgentData];

      memset(v92, 0, sizeof(v92));
      v28 = [(NWNetworkAgentRegistration *)self registeredUUID];
      [v28 getUUIDBytes:v92];

      v29 = [(NWNetworkAgentRegistration *)self networkAgent];
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = [(NWNetworkAgentRegistration *)self networkAgent];
        v89 = [v31 isSpecificUseOnly];
      }

      else
      {
        v89 = 0;
      }

      v32 = [(NWNetworkAgentRegistration *)self networkAgent];
      v33 = objc_opt_respondsToSelector();

      if (v33)
      {
        v34 = [(NWNetworkAgentRegistration *)self networkAgent];
        v88 = [v34 isNetworkProvider];
      }

      else
      {
        v88 = 0;
      }

      v35 = [(NWNetworkAgentRegistration *)self networkAgent];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = [(NWNetworkAgentRegistration *)self networkAgent];
        v87 = [v37 isNexusProvider];
      }

      else
      {
        v87 = 0;
      }

      v38 = [(NWNetworkAgentRegistration *)self networkAgent];
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = [(NWNetworkAgentRegistration *)self networkAgent];
        v86 = [v40 supportsListenRequests];
      }

      else
      {
        v86 = 0;
      }

      v41 = [(NWNetworkAgentRegistration *)self networkAgent];
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        v43 = [(NWNetworkAgentRegistration *)self networkAgent];
        v85 = [v43 supportsBrowseRequests];
      }

      else
      {
        v85 = 0;
      }

      v44 = [(NWNetworkAgentRegistration *)self networkAgent];
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        v46 = [(NWNetworkAgentRegistration *)self networkAgent];
        v84 = [v46 supportsResolveRequests];
      }

      else
      {
        v84 = 0;
      }

      v47 = [(NWNetworkAgentRegistration *)self networkAgent];
      v48 = objc_opt_respondsToSelector();

      if (v48)
      {
        v49 = [(NWNetworkAgentRegistration *)self networkAgent];
        v83 = [v49 requiresAssert];
      }

      else
      {
        v83 = 0;
      }

      v50 = [(NWNetworkAgentRegistration *)self networkAgent];
      v51 = objc_opt_respondsToSelector();

      v91 = v11;
      if (v51)
      {
        v52 = [(NWNetworkAgentRegistration *)self networkAgent];
        v81 = [v52 updateClientsImmediately];
      }

      else
      {
        v81 = 0;
      }

      v82 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
      v80 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
      v53 = [(NWNetworkAgentRegistration *)self networkAgent];
      v79 = [v53 agentDescription];

      v78 = [(NWNetworkAgentRegistration *)self agentFileDescriptor];
      v77 = [v82 UTF8String];
      v76 = [v80 UTF8String];
      v75 = [v79 UTF8String];
      v54 = [(NWNetworkAgentRegistration *)self networkAgent];
      v55 = [v54 isActive];
      v56 = [(NWNetworkAgentRegistration *)self networkAgent];
      v57 = [v56 isKernelActivated];
      v58 = [(NWNetworkAgentRegistration *)self networkAgent];
      v59 = [v58 isUserActivated];
      v60 = [(NWNetworkAgentRegistration *)self networkAgent];
      nw_network_agent_ctl_setsockopt(v78, 3, v92, v77, v76, v75, v55, v57, v59, [v60 isVoluntary], v89, v88, v87, v86, v85, v84, 0, v83, v81, objc_msgSend(v27, "bytes"), objc_msgSend(v27, "length"));

      v11 = v91;
      goto LABEL_62;
    }

LABEL_76:
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromUser"];
    if (v6 != 5)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (a5 < 0x10)
  {
    v90 = 0;
    if (a3 > 13)
    {
      goto LABEL_7;
    }

LABEL_25:
    switch(v6)
    {
      case 10:
        v63 = [(NWNetworkAgentRegistration *)self networkAgent];
        v64 = objc_opt_respondsToSelector();

        if ((v64 & 1) == 0)
        {
          goto LABEL_82;
        }

        v20 = [(NWNetworkAgentRegistration *)self networkAgent];
        [v20 requestNexusWithOptions:v90];
        break;
      case 12:
        v67 = [(NWNetworkAgentRegistration *)self networkAgent];
        v68 = objc_opt_respondsToSelector();

        if (v68)
        {
          v20 = [(NWNetworkAgentRegistration *)self networkAgent];
          [v20 closeNexusWithOptions:v90];
          break;
        }

        goto LABEL_82;
      case 13:
        v18 = [(NWNetworkAgentRegistration *)self networkAgent];
        v19 = objc_opt_respondsToSelector();

        if ((v19 & 1) == 0)
        {
          goto LABEL_82;
        }

        v20 = [(NWNetworkAgentRegistration *)self networkAgent];
        [v20 startAgentWithOptions:v90];
        break;
      default:
        goto LABEL_82;
    }

LABEL_81:

    goto LABEL_82;
  }

  v8 = a5;
  v90 = [MEMORY[0x1E695DF90] dictionary];
  if (!uuid_is_null(a4))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a4];
    [v90 setObject:v9 forKeyedSubscript:@"ClientUUID"];
  }

  [v90 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FromUser"];
  a5 = v8;
  if (v6 <= 13)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (v6 == 14)
  {
    v61 = [(NWNetworkAgentRegistration *)self networkAgent];
    v62 = objc_opt_respondsToSelector();

    if ((v62 & 1) == 0)
    {
      goto LABEL_82;
    }

    v20 = [(NWNetworkAgentRegistration *)self networkAgent];
    [v20 assertAgentWithOptions:v90];
    goto LABEL_81;
  }

  if (v6 != 15)
  {
    if (v6 != 26)
    {
      goto LABEL_82;
    }

    v10 = a5 < 0x14 ? 0 : *(a4 + 4);
    v73 = [(NWNetworkAgentRegistration *)self networkAgent];
    v74 = objc_opt_respondsToSelector();

    if ((v74 & 1) == 0)
    {
      goto LABEL_82;
    }

    v20 = [(NWNetworkAgentRegistration *)self networkAgent];
    [v20 reportError:v10 withOptions:v90];
    goto LABEL_81;
  }

  v65 = [(NWNetworkAgentRegistration *)self networkAgent];
  v66 = objc_opt_respondsToSelector();

  if (v66)
  {
    v20 = [(NWNetworkAgentRegistration *)self networkAgent];
    [v20 unassertAgentWithOptions:v90];
    goto LABEL_81;
  }

LABEL_82:
}

- (int)dupRegistrationFileDescriptor
{
  v3 = [(NWNetworkAgentRegistration *)self session];

  if (v3 || [(NWNetworkAgentRegistration *)self registrationSocket]< 0)
  {
    return -1;
  }

  v5 = [(NWNetworkAgentRegistration *)self registrationSocket];

  return dup(v5);
}

- (BOOL)isRegistered
{
  v3 = [(NWNetworkAgentRegistration *)self session];

  if (v3)
  {
    v4 = [(NWNetworkAgentRegistration *)self registeredUUID];
    v5 = v4 != 0;
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
  v3 = [(NWNetworkAgentRegistration *)self session];

  if (v3)
  {
    v4 = [(NWNetworkAgentRegistration *)self session];
    v5 = [v4 sessionFD];

    return v5;
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

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = *&a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentDomain];
  [v6 appendPrettyObject:v7 withName:@"Domain" indent:v4 showFullContent:1];

  v8 = [(objc_class *)[(NWNetworkAgentRegistration *)self networkAgentClass] agentType];
  [v6 appendPrettyObject:v8 withName:@"Type" indent:v4 showFullContent:1];

  v9 = [(NWNetworkAgentRegistration *)self registeredUUID];
  [v6 appendPrettyObject:v9 withName:@"UUID" indent:v4 showFullContent:1];

  return v6;
}

- (void)dealloc
{
  v3 = [(NWNetworkAgentRegistration *)self readSource];

  if (v3)
  {
    v4 = [(NWNetworkAgentRegistration *)self readSource];
    dispatch_source_cancel(v4);

    [(NWNetworkAgentRegistration *)self setReadSource:0];
  }

  v5.receiver = self;
  v5.super_class = NWNetworkAgentRegistration;
  [(NWNetworkAgentRegistration *)&v5 dealloc];
}

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3 session:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a3)
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

  if (!v7)
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
    v9->_networkAgentClass = a3;
    v9->_registrationSocket = -1;
    objc_storeStrong(&v9->_session, a4);
    v11 = [v8 queue];
    queue = v10->_queue;
    v10->_queue = v11;

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

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3 queue:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (!a3)
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

  if (!v7)
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
    v9->_networkAgentClass = a3;
    v9->_registrationSocket = -1;
    objc_storeStrong(&v9->_queue, a4);
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

- (NWNetworkAgentRegistration)initWithNetworkAgentClass:(Class)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = NWNetworkAgentRegistration;
  v4 = [(NWNetworkAgentRegistration *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_networkAgentClass = a3;
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

+ (BOOL)useNetworkAgent:(id)a3 returnUseCount:(unint64_t *)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v13[1] = 0;
  v5 = [a3 agentUUID];
  [v5 getUUIDBytes:v13];

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

  v9 = [v6 path];
  v10 = [v9 internalPath];
  v11 = nw_path_increment_agent_use_count(v10, v13, a4);

  return v11;
}

+ (BOOL)removeActiveAssertionFromNetworkAgent:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  *v8 = 0;
  v9 = 0;
  v3 = [a3 agentUUID];
  [v3 getUUIDBytes:v8];

  if (!sharedAssertionEvaluator)
  {
    return 0;
  }

  v4 = [sharedAssertionEvaluator path];
  v5 = [v4 internalPath];
  v6 = nw_path_agent_action(v5, v8, 132);

  return v6;
}

+ (BOOL)addActiveAssertionToNetworkAgent:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  *v11 = 0;
  v12 = 0;
  v3 = [a3 agentUUID];
  [v3 getUUIDBytes:v11];

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

  v7 = [v4 path];
  v8 = [v7 internalPath];
  v9 = nw_path_agent_action(v8, v11, 131);

  return v9;
}

@end
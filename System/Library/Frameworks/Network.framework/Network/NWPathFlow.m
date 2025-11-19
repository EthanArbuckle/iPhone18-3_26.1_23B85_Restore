@interface NWPathFlow
- (BOOL)isAssigned;
- (BOOL)isDefunct;
- (BOOL)isDirect;
- (BOOL)isLocal;
- (BOOL)isViable;
- (BOOL)supportsIPv4;
- (BOOL)supportsIPv6;
- (NSUUID)flowID;
- (NSUUID)nexusAgent;
- (NSUUID)nexusInstance;
- (NWEndpoint)localEndpoint;
- (NWEndpoint)remoteEndpoint;
- (NWInterface)interface;
- (NWPathFlow)initWithPathFlow:(id)a3;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (id)privateDescription;
- (unsigned)nexusPort;
@end

@implementation NWPathFlow

- (id)privateDescription
{
  v2 = [(NWPathFlow *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWPathFlow *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v8 = [(NWPathFlow *)self flowID];
  [v7 appendPrettyObject:v8 withName:@"flowID" indent:v5 showFullContent:v4];

  [v7 appendPrettyBOOL:-[NWPathFlow isViable](self withName:"isViable") indent:{@"isViable", v5}];
  [v7 appendPrettyBOOL:-[NWPathFlow isAssigned](self withName:"isAssigned") indent:{@"isAssigned", v5}];
  if ([(NWPathFlow *)self isLocal])
  {
    [v7 appendPrettyBOOL:-[NWPathFlow isLocal](self withName:"isLocal") indent:{@"isLocal", v5}];
  }

  if ([(NWPathFlow *)self isDirect])
  {
    [v7 appendPrettyBOOL:-[NWPathFlow isDirect](self withName:"isDirect") indent:{@"isDirect", v5}];
  }

  if ([(NWPathFlow *)self isDefunct])
  {
    [v7 appendPrettyBOOL:-[NWPathFlow isDefunct](self withName:"isDefunct") indent:{@"isDefunct", v5}];
  }

  if ([(NWPathFlow *)self supportsIPv4])
  {
    [v7 appendPrettyBOOL:-[NWPathFlow supportsIPv4](self withName:"supportsIPv4") indent:{@"supportsIPv4", v5}];
  }

  if ([(NWPathFlow *)self supportsIPv6])
  {
    [v7 appendPrettyBOOL:-[NWPathFlow supportsIPv6](self withName:"supportsIPv6") indent:{@"supportsIPv6", v5}];
  }

  v9 = [(NWPathFlow *)self interface];
  [v7 appendPrettyObject:v9 withName:@"interface" indent:v5 showFullContent:v4];

  v10 = [(NWPathFlow *)self localEndpoint];
  [v7 appendPrettyObject:v10 withName:@"localEndpoint" indent:v5 showFullContent:v4];

  v11 = [(NWPathFlow *)self remoteEndpoint];
  [v7 appendPrettyObject:v11 withName:@"remoteEndpoint" indent:v5 showFullContent:v4];

  v12 = [(NWPathFlow *)self nexusAgent];
  if (v12)
  {
    [v7 appendPrettyObject:v12 withName:@"nexusAgent" indent:v5 showFullContent:v4];
    v13 = [(NWPathFlow *)self nexusInstance];
    [v7 appendPrettyObject:v13 withName:@"nexusInstance" indent:v5 showFullContent:v4];

    [v7 appendPrettyInt:-[NWPathFlow nexusPort](self withName:"nexusPort") indent:{@"nexusPort", v5}];
  }

  return v7;
}

- (BOOL)supportsIPv6
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  has_ipv6 = nw_path_flow_has_ipv6(v2);

  return has_ipv6;
}

- (BOOL)supportsIPv4
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  has_ipv4 = nw_path_flow_has_ipv4(v2);

  return has_ipv4;
}

- (BOOL)isDefunct
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  is_defunct = nw_path_flow_is_defunct(v2);

  return is_defunct;
}

- (BOOL)isDirect
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  is_direct = nw_path_flow_is_direct(v2);

  return is_direct;
}

- (BOOL)isLocal
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  is_local = nw_path_flow_is_local(v2);

  return is_local;
}

- (BOOL)isAssigned
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  is_assigned = nw_path_flow_is_assigned(v2);

  return is_assigned;
}

- (BOOL)isViable
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  is_viable = nw_path_flow_is_viable(v2);

  return is_viable;
}

- (unsigned)nexusPort
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v5 = 0;
  v2 = [(NWPathFlow *)self internalPathFlow];
  nexus_instance = nw_path_flow_get_nexus_instance(v2, v6, &v5);

  if (nexus_instance)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (NSUUID)nexusInstance
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(NWPathFlow *)self internalPathFlow];
  nexus_instance = nw_path_flow_get_nexus_instance(v2, v6, 0);

  v4 = 0;
  if (nexus_instance)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  return v4;
}

- (NSUUID)nexusAgent
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(NWPathFlow *)self internalPathFlow];
  nexus_agent_uuid = nw_path_flow_get_nexus_agent_uuid(v2, v6);

  v4 = 0;
  if (nexus_agent_uuid)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  return v4;
}

- (NSUUID)flowID
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  v2 = [(NWPathFlow *)self internalPathFlow];
  id = nw_path_flow_get_id(v2, v6);

  v4 = 0;
  if (id)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  return v4;
}

- (NWEndpoint)remoteEndpoint
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  v3 = nw_path_flow_copy_remote_endpoint(v2);

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

- (NWEndpoint)localEndpoint
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  v3 = nw_path_flow_copy_local_endpoint(v2);

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

- (NWInterface)interface
{
  v2 = [(NWPathFlow *)self internalPathFlow];
  v3 = nw_path_flow_copy_interface(v2);

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

- (NWPathFlow)initWithPathFlow:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v23.receiver = self;
    v23.super_class = NWPathFlow;
    v6 = [(NWPathFlow *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalPathFlow, a3);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWPathFlow initWithPathFlow:]";
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
        v27 = "[NWPathFlow initWithPathFlow:]";
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
          v27 = "[NWPathFlow initWithPathFlow:]";
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
        v27 = "[NWPathFlow initWithPathFlow:]";
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
        v27 = "[NWPathFlow initWithPathFlow:]";
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
  v27 = "[NWPathFlow initWithPathFlow:]";
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
        v27 = "[NWPathFlow initWithPathFlow:]";
        v13 = "%{public}s called with null pathFlow";
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
            v27 = "[NWPathFlow initWithPathFlow:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null pathFlow, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWPathFlow initWithPathFlow:]";
        v13 = "%{public}s called with null pathFlow, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWPathFlow initWithPathFlow:]";
        v13 = "%{public}s called with null pathFlow, backtrace limit exceeded";
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

@end
@interface NENetworkAgent
+ (id)agentFromData:(id)data;
- (BOOL)matchesFileHandle:(id)handle;
- (BOOL)startAgentWithOptions:(id)options;
- (NENetworkAgent)initWithConfigUUID:(id)d sessionType:(int)type name:(id)name;
- (NENetworkAgent)initWithDelegate:(id)delegate configUUID:(id)d sessionType:(int)type name:(id)name;
- (NSString)agentDescription;
- (NSUUID)configurationUUID;
- (id)copyAgentData;
- (int)sessionType;
- (void)setStartHandler:(id)handler;
@end

@implementation NENetworkAgent

- (BOOL)startAgentWithOptions:(id)options
{
  v37 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (self && objc_getProperty(self, v4, 56, 1))
  {
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v6 = *MEMORY[0x1E6977DF0];
    v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
    v8 = isa_nsuuid(v7);

    if (!v8)
    {
      v20 = *MEMORY[0x1E6977DF8];
      v21 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6977DF8]];
      v22 = isa_nsnumber(v21);

      if (v22)
      {
        v23 = [optionsCopy objectForKeyedSubscript:v20];
        intValue = [v23 intValue];
      }

      else
      {
        intValue = 0;
      }

      v24 = *MEMORY[0x1E6977E00];
      v25 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6977E00]];
      v26 = isa_nsuuid(v25);

      if (!v26)
      {
        hostname = 0;
LABEL_21:
        v19 = 1;
        Property = objc_getProperty(self, v27, 56, 1);
        v29 = hostname;
        v30 = Property;
        (*(Property + 2))(v30, intValue, uu, [hostname UTF8String]);

        goto LABEL_22;
      }

      v9 = [optionsCopy objectForKeyedSubscript:v24];
      [v9 getUUIDBytes:uu];
      hostname = 0;
LABEL_20:

      goto LABEL_21;
    }

    v9 = [optionsCopy objectForKeyedSubscript:v6];
    v10 = [MEMORY[0x1E6977E48] pathForClientID:v9];
    v11 = v10;
    if (v10)
    {
      parameters = [v10 parameters];
      intValue = [parameters pid];

      parameters2 = [v11 parameters];
      effectiveProcessUUID = [parameters2 effectiveProcessUUID];
      [effectiveProcessUUID getUUIDBytes:uu];

      endpoint = [v11 endpoint];
      objc_opt_class();
      LOBYTE(effectiveProcessUUID) = objc_opt_isKindOfClass();

      if ((effectiveProcessUUID & 1) == 0)
      {
        hostname = 0;
        goto LABEL_19;
      }

      endpoint2 = [v11 endpoint];
      hostname = [endpoint2 hostname];
    }

    else
    {
      endpoint2 = ne_log_obj();
      if (os_log_type_enabled(endpoint2, OS_LOG_TYPE_ERROR))
      {
        uUIDString = [v9 UUIDString];
        v34 = 138412290;
        v35 = uUIDString;
        _os_log_error_impl(&dword_1BA83C000, endpoint2, OS_LOG_TYPE_ERROR, "Could not fetch path for unassert message (client %@)", &v34, 0xCu);
      }

      hostname = 0;
      intValue = 0;
    }

LABEL_19:
    goto LABEL_20;
  }

  v19 = 0;
LABEL_22:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)setStartHandler:(id)handler
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, handler, 56);
  }
}

- (int)sessionType
{
  if (self)
  {
    LODWORD(self) = self->_internalSessionType;
  }

  return self;
}

- (NSUUID)configurationUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (id)copyAgentData
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  if (self)
  {
    [objc_getProperty(self a2];
    LODWORD(v9) = self->_internalSessionType;
    if (objc_getProperty(self, v3, 48, 1))
    {
      v5 = objc_getProperty(self, v4, 48, 1);
      [v5 UTF8String];
      __strlcpy_chk();
    }
  }

  else
  {
    [0 getUUIDBytes:&v8];
    LODWORD(v9) = 0;
  }

  result = [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:40];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)agentDescription
{
  v3 = MEMORY[0x1E696AEC0];
  agentType = [objc_opt_class() agentType];
  configurationName = [(NENetworkAgent *)self configurationName];
  v7 = &stru_1F3880810;
  if (self)
  {
    v8 = 1;
    v10 = objc_getProperty(self, v5, 48, 1);
    if (v10)
    {
      v11 = @" ";
    }

    else
    {
      v11 = &stru_1F3880810;
    }

    v12 = objc_getProperty(self, v9, 48, 1);
    if (v12)
    {
      v14 = v12;
      v7 = objc_getProperty(self, v13, 48, 1);

      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
    v8 = 1;
    v11 = &stru_1F3880810;
  }

  v15 = [v3 stringWithFormat:@"%@: %@%@%@", agentType, configurationName, v11, v7];
  agentDescription = self->agentDescription;
  self->agentDescription = v15;

  if ((v8 & 1) == 0)
  {
  }

  v17 = self->agentDescription;

  return v17;
}

- (BOOL)matchesFileHandle:(id)handle
{
  handleCopy = handle;
  sessionType = [handleCopy sessionType];
  intValue = [sessionType intValue];
  if (intValue != [(NENetworkAgent *)self sessionType])
  {
    v15 = 0;
    goto LABEL_21;
  }

  configurationUUID = [(NENetworkAgent *)self configurationUUID];
  configurationIdentifier = [handleCopy configurationIdentifier];
  v10 = [configurationUUID isEqual:configurationIdentifier];

  if (v10)
  {
    if (self && (v12 = objc_getProperty(self, v11, 48, 1)) != 0)
    {
      sessionType = v12;
      v14 = 0;
    }

    else
    {
      name = [handleCopy name];
      sessionType = 0;
      if (name)
      {
        v3 = name;
      }

      else
      {
        v3 = 0;
      }

      if (name)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (!name || !self)
      {
        goto LABEL_20;
      }

      v14 = 1;
      v3 = name;
    }

    v17 = objc_getProperty(self, v13, 48, 1);
    if (!v17)
    {
      v15 = 0;
      if (!v14)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v18 = v17;
    name2 = [handleCopy name];
    if (!name2)
    {

      v15 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v21 = name2;
    v22 = objc_getProperty(self, v20, 48, 1);
    name3 = [handleCopy name];
    v15 = [v22 isEqualToString:name3];

    if (v14)
    {
LABEL_20:
    }

LABEL_21:

    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15 & 1;
}

- (NENetworkAgent)initWithDelegate:(id)delegate configUUID:(id)d sessionType:(int)type name:(id)name
{
  delegateCopy = delegate;
  dCopy = d;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = NENetworkAgent;
  v13 = [(NENetworkAgent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_internalUUID, d);
    v14->_internalSessionType = type;
    objc_storeStrong(&v14->_name, name);
    objc_storeWeak(&v14->_delegate, delegateCopy);
  }

  return v14;
}

- (NENetworkAgent)initWithConfigUUID:(id)d sessionType:(int)type name:(id)name
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NENetworkAgent;
  v11 = [(NENetworkAgent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_internalUUID, d);
    v12->_internalSessionType = type;
    objc_storeStrong(&v12->_name, name);
  }

  return v12;
}

+ (id)agentFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == 40)
  {
    bytes = [dataCopy bytes];
    v5 = [NENetworkAgent alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:bytes];
    v7 = *(bytes + 16);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:bytes + 20];
    v9 = [(NENetworkAgent *)v5 initWithConfigUUID:v6 sessionType:v7 name:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
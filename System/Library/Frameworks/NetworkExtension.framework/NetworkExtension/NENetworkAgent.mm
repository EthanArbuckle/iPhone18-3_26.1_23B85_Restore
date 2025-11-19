@interface NENetworkAgent
+ (id)agentFromData:(id)a3;
- (BOOL)matchesFileHandle:(id)a3;
- (BOOL)startAgentWithOptions:(id)a3;
- (NENetworkAgent)initWithConfigUUID:(id)a3 sessionType:(int)a4 name:(id)a5;
- (NENetworkAgent)initWithDelegate:(id)a3 configUUID:(id)a4 sessionType:(int)a5 name:(id)a6;
- (NSString)agentDescription;
- (NSUUID)configurationUUID;
- (id)copyAgentData;
- (int)sessionType;
- (void)setStartHandler:(id)a3;
@end

@implementation NENetworkAgent

- (BOOL)startAgentWithOptions:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self && objc_getProperty(self, v4, 56, 1))
  {
    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v6 = *MEMORY[0x1E6977DF0];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
    v8 = isa_nsuuid(v7);

    if (!v8)
    {
      v20 = *MEMORY[0x1E6977DF8];
      v21 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6977DF8]];
      v22 = isa_nsnumber(v21);

      if (v22)
      {
        v23 = [v5 objectForKeyedSubscript:v20];
        v13 = [v23 intValue];
      }

      else
      {
        v13 = 0;
      }

      v24 = *MEMORY[0x1E6977E00];
      v25 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6977E00]];
      v26 = isa_nsuuid(v25);

      if (!v26)
      {
        v18 = 0;
LABEL_21:
        v19 = 1;
        Property = objc_getProperty(self, v27, 56, 1);
        v29 = v18;
        v30 = Property;
        (*(Property + 2))(v30, v13, uu, [v18 UTF8String]);

        goto LABEL_22;
      }

      v9 = [v5 objectForKeyedSubscript:v24];
      [v9 getUUIDBytes:uu];
      v18 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v9 = [v5 objectForKeyedSubscript:v6];
    v10 = [MEMORY[0x1E6977E48] pathForClientID:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 parameters];
      v13 = [v12 pid];

      v14 = [v11 parameters];
      v15 = [v14 effectiveProcessUUID];
      [v15 getUUIDBytes:uu];

      v16 = [v11 endpoint];
      objc_opt_class();
      LOBYTE(v15) = objc_opt_isKindOfClass();

      if ((v15 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_19;
      }

      v17 = [v11 endpoint];
      v18 = [v17 hostname];
    }

    else
    {
      v17 = ne_log_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v33 = [v9 UUIDString];
        v34 = 138412290;
        v35 = v33;
        _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Could not fetch path for unassert message (client %@)", &v34, 0xCu);
      }

      v18 = 0;
      v13 = 0;
    }

LABEL_19:
    goto LABEL_20;
  }

  v19 = 0;
LABEL_22:

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)setStartHandler:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic_copy(self, a2, a3, 56);
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
  v4 = [objc_opt_class() agentType];
  v6 = [(NENetworkAgent *)self configurationName];
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

  v15 = [v3 stringWithFormat:@"%@: %@%@%@", v4, v6, v11, v7];
  agentDescription = self->agentDescription;
  self->agentDescription = v15;

  if ((v8 & 1) == 0)
  {
  }

  v17 = self->agentDescription;

  return v17;
}

- (BOOL)matchesFileHandle:(id)a3
{
  v5 = a3;
  v6 = [v5 sessionType];
  v7 = [v6 intValue];
  if (v7 != [(NENetworkAgent *)self sessionType])
  {
    v15 = 0;
    goto LABEL_21;
  }

  v8 = [(NENetworkAgent *)self configurationUUID];
  v9 = [v5 configurationIdentifier];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    if (self && (v12 = objc_getProperty(self, v11, 48, 1)) != 0)
    {
      v6 = v12;
      v14 = 0;
    }

    else
    {
      v16 = [v5 name];
      v6 = 0;
      if (v16)
      {
        v3 = v16;
      }

      else
      {
        v3 = 0;
      }

      if (v16)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      if (!v16 || !self)
      {
        goto LABEL_20;
      }

      v14 = 1;
      v3 = v16;
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
    v19 = [v5 name];
    if (!v19)
    {

      v15 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v21 = v19;
    v22 = objc_getProperty(self, v20, 48, 1);
    v23 = [v5 name];
    v15 = [v22 isEqualToString:v23];

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

- (NENetworkAgent)initWithDelegate:(id)a3 configUUID:(id)a4 sessionType:(int)a5 name:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = NENetworkAgent;
  v13 = [(NENetworkAgent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_internalUUID, a4);
    v14->_internalSessionType = a5;
    objc_storeStrong(&v14->_name, a6);
    objc_storeWeak(&v14->_delegate, v10);
  }

  return v14;
}

- (NENetworkAgent)initWithConfigUUID:(id)a3 sessionType:(int)a4 name:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NENetworkAgent;
  v11 = [(NENetworkAgent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_internalUUID, a3);
    v12->_internalSessionType = a4;
    objc_storeStrong(&v12->_name, a5);
  }

  return v12;
}

+ (id)agentFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] == 40)
  {
    v4 = [v3 bytes];
    v5 = [NENetworkAgent alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
    v7 = *(v4 + 16);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4 + 20];
    v9 = [(NENetworkAgent *)v5 initWithConfigUUID:v6 sessionType:v7 name:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
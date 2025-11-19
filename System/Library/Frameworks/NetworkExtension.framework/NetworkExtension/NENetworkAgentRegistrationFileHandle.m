@interface NENetworkAgentRegistrationFileHandle
- (BOOL)isRegisteredHandle;
- (NENetworkAgentRegistrationFileHandle)initWithNetworkAgentRegistration:(id)a3 sessionType:(id)a4 configurationIdentifier:(id)a5 agentUUID:(id)a6 name:(id)a7;
- (id)description;
- (id)dictionary;
- (id)initFromDictionary:(id)a3;
@end

@implementation NENetworkAgentRegistrationFileHandle

- (BOOL)isRegisteredHandle
{
  v3 = [(NEFileHandle *)self handle];
  v4 = v3;
  if (!v3 || (v5 = [v3 fileDescriptor], v5 < 0))
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v13 = 20;
    v7 = 1;
    v8 = malloc_type_calloc(0x14uLL, 1uLL, 0x100004077774924uLL);
    v9 = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
    [v9 getUUIDBytes:v8];

    LODWORD(v9) = getsockopt(v6, 2, 23, v8, &v13);
    free(v8);
    if (v9)
    {
      v11 = 4;
      v12 = 0;
      v7 = getsockopt(v6, 2, 23, &v12, &v11) == 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NEFileHandle *)self handle];
  v5 = [v4 fileDescriptor];
  v6 = [(NENetworkAgentRegistrationFileHandle *)self configurationIdentifier];
  v7 = [v6 UUIDString];
  v8 = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
  v9 = [v8 UUIDString];
  v10 = [(NENetworkAgentRegistrationFileHandle *)self sessionType];
  v11 = [(NENetworkAgentRegistrationFileHandle *)self name];
  v12 = [v3 stringWithFormat:@"Network Agent Registration socket (%d) %@ %@ %@ %@ agent flags %#llx", v5, v7, v9, v10, v11, -[NENetworkAgentRegistrationFileHandle agentFlags](self, "agentFlags")];

  return v12;
}

- (id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v15 = 0;
  *v12 = 0;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = NENetworkAgentRegistrationFileHandle;
  v3 = [(NEFileHandle *)&v11 dictionary];
  v4 = [(NENetworkAgentRegistrationFileHandle *)self sessionType];
  xpc_dictionary_set_uint64(v3, "session-type", [v4 unsignedLongLongValue]);

  v5 = [(NENetworkAgentRegistrationFileHandle *)self configurationIdentifier];
  [v5 getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(v3, "configuration-identifier", uuid);
  v6 = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
  [v6 getUUIDBytes:v12];

  xpc_dictionary_set_uuid(v3, "agent-uuid", v12);
  xpc_dictionary_set_uint64(v3, "agent-flags", [(NENetworkAgentRegistrationFileHandle *)self agentFlags]);
  v7 = [(NENetworkAgentRegistrationFileHandle *)self name];

  if (v7)
  {
    v8 = [(NENetworkAgentRegistrationFileHandle *)self name];
    xpc_dictionary_set_string(v3, "agent-name", [v8 UTF8String]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NENetworkAgentRegistrationFileHandle;
  v5 = [(NEFileHandle *)&v19 initFromDictionary:v4];
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "session-type");
    uuid = xpc_dictionary_get_uuid(v4, "configuration-identifier");
    v8 = xpc_dictionary_get_uuid(v4, "agent-uuid");
    string = xpc_dictionary_get_string(v4, "agent-name");
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    v13 = v5[4];
    v5[4] = v12;

    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8];
    v15 = v5[5];
    v5[5] = v14;

    v5[7] = xpc_dictionary_get_uint64(v4, "agent-flags");
    if (string)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v17 = v5[6];
      v5[6] = v16;
    }
  }

  return v5;
}

- (NENetworkAgentRegistrationFileHandle)initWithNetworkAgentRegistration:(id)a3 sessionType:(id)a4 configurationIdentifier:(id)a5 agentUUID:(id)a6 name:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [a3 dupRegistrationFileDescriptor];
  if ((v17 & 0x80000000) != 0)
  {
    v21 = 0;
  }

  else
  {
    v18 = v17;
    v23.receiver = self;
    v23.super_class = NENetworkAgentRegistrationFileHandle;
    v19 = [(NEFileHandle *)&v23 initWithFileDescriptor:v17 launchOwnerWhenReadable:1];
    p_isa = &v19->super.super.isa;
    if (v19)
    {
      objc_storeStrong(&v19->_sessionType, a4);
      objc_storeStrong(p_isa + 4, a5);
      objc_storeStrong(p_isa + 5, a6);
      objc_storeStrong(p_isa + 6, a7);
    }

    else
    {
      close(v18);
    }

    self = p_isa;
    v21 = self;
  }

  return v21;
}

@end
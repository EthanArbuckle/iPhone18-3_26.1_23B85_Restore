@interface NENetworkAgentRegistrationFileHandle
- (BOOL)isRegisteredHandle;
- (NENetworkAgentRegistrationFileHandle)initWithNetworkAgentRegistration:(id)registration sessionType:(id)type configurationIdentifier:(id)identifier agentUUID:(id)d name:(id)name;
- (id)description;
- (id)dictionary;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation NENetworkAgentRegistrationFileHandle

- (BOOL)isRegisteredHandle
{
  handle = [(NEFileHandle *)self handle];
  v4 = handle;
  if (!handle || (v5 = [handle fileDescriptor], v5 < 0))
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v13 = 20;
    v7 = 1;
    v8 = malloc_type_calloc(0x14uLL, 1uLL, 0x100004077774924uLL);
    agentUUID = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
    [agentUUID getUUIDBytes:v8];

    LODWORD(agentUUID) = getsockopt(v6, 2, 23, v8, &v13);
    free(v8);
    if (agentUUID)
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
  handle = [(NEFileHandle *)self handle];
  fileDescriptor = [handle fileDescriptor];
  configurationIdentifier = [(NENetworkAgentRegistrationFileHandle *)self configurationIdentifier];
  uUIDString = [configurationIdentifier UUIDString];
  agentUUID = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
  uUIDString2 = [agentUUID UUIDString];
  sessionType = [(NENetworkAgentRegistrationFileHandle *)self sessionType];
  name = [(NENetworkAgentRegistrationFileHandle *)self name];
  v12 = [v3 stringWithFormat:@"Network Agent Registration socket (%d) %@ %@ %@ %@ agent flags %#llx", fileDescriptor, uUIDString, uUIDString2, sessionType, name, -[NENetworkAgentRegistrationFileHandle agentFlags](self, "agentFlags")];

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
  dictionary = [(NEFileHandle *)&v11 dictionary];
  sessionType = [(NENetworkAgentRegistrationFileHandle *)self sessionType];
  xpc_dictionary_set_uint64(dictionary, "session-type", [sessionType unsignedLongLongValue]);

  configurationIdentifier = [(NENetworkAgentRegistrationFileHandle *)self configurationIdentifier];
  [configurationIdentifier getUUIDBytes:uuid];

  xpc_dictionary_set_uuid(dictionary, "configuration-identifier", uuid);
  agentUUID = [(NENetworkAgentRegistrationFileHandle *)self agentUUID];
  [agentUUID getUUIDBytes:v12];

  xpc_dictionary_set_uuid(dictionary, "agent-uuid", v12);
  xpc_dictionary_set_uint64(dictionary, "agent-flags", [(NENetworkAgentRegistrationFileHandle *)self agentFlags]);
  name = [(NENetworkAgentRegistrationFileHandle *)self name];

  if (name)
  {
    name2 = [(NENetworkAgentRegistrationFileHandle *)self name];
    xpc_dictionary_set_string(dictionary, "agent-name", [name2 UTF8String]);
  }

  v9 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = NENetworkAgentRegistrationFileHandle;
  v5 = [(NEFileHandle *)&v19 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    uint64 = xpc_dictionary_get_uint64(dictionaryCopy, "session-type");
    uuid = xpc_dictionary_get_uuid(dictionaryCopy, "configuration-identifier");
    v8 = xpc_dictionary_get_uuid(dictionaryCopy, "agent-uuid");
    string = xpc_dictionary_get_string(dictionaryCopy, "agent-name");
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:uint64];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    v13 = v5[4];
    v5[4] = v12;

    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v8];
    v15 = v5[5];
    v5[5] = v14;

    v5[7] = xpc_dictionary_get_uint64(dictionaryCopy, "agent-flags");
    if (string)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v17 = v5[6];
      v5[6] = v16;
    }
  }

  return v5;
}

- (NENetworkAgentRegistrationFileHandle)initWithNetworkAgentRegistration:(id)registration sessionType:(id)type configurationIdentifier:(id)identifier agentUUID:(id)d name:(id)name
{
  typeCopy = type;
  identifierCopy = identifier;
  dCopy = d;
  nameCopy = name;
  dupRegistrationFileDescriptor = [registration dupRegistrationFileDescriptor];
  if ((dupRegistrationFileDescriptor & 0x80000000) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v18 = dupRegistrationFileDescriptor;
    v23.receiver = self;
    v23.super_class = NENetworkAgentRegistrationFileHandle;
    v19 = [(NEFileHandle *)&v23 initWithFileDescriptor:dupRegistrationFileDescriptor launchOwnerWhenReadable:1];
    p_isa = &v19->super.super.isa;
    if (v19)
    {
      objc_storeStrong(&v19->_sessionType, type);
      objc_storeStrong(p_isa + 4, identifier);
      objc_storeStrong(p_isa + 5, d);
      objc_storeStrong(p_isa + 6, name);
    }

    else
    {
      close(v18);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

@end
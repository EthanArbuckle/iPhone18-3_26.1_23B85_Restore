@interface GCSettingsXPCProxyClientEndpointDescription
- (GCSettingsXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCSettingsXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSettingsXPCProxyClientEndpointDescription

- (GCSettingsXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile
{
  identifierCopy = identifier;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = GCSettingsXPCProxyClientEndpointDescription;
  v8 = [(GCSettingsXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialProfile, profile);
  }

  return v8;
}

- (GCSettingsXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GCSettingsXPCProxyClientEndpointDescription;
  v5 = [(GCSettingsXPCProxyClientEndpointDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialProfile"];
    initialProfile = v5->_initialProfile;
    v5->_initialProfile = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_initialProfile forKey:@"_initialProfile"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_4;
  }

  iPCServiceRegistry = [contextCopy IPCServiceRegistry];
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB3828];

  if (v8)
  {
    settingsXPCProxyServiceRemoteServer = [v8 settingsXPCProxyServiceRemoteServer];
    v10 = [[GCSettingsXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialValueForProfile:self->_initialProfile];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__GCSettingsXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E841A8D0;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [settingsXPCProxyServiceRemoteServer settingsXPCProxyServiceClientEndpointConnect:v13 reply:v21];
    v16 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v14, v16);
    v17 = self->_materializedObject;
    self->_materializedObject = v13;
    v18 = v13;

    materializedObject = self->_materializedObject;
LABEL_4:
    v19 = materializedObject;
    goto LABEL_5;
  }

  if (gc_isInternalBuild())
  {
    [GCSettingsXPCProxyClientEndpointDescription materializeWithContext:?];
  }

  v19 = 0;
LABEL_5:

  return v19;
}

intptr_t __70__GCSettingsXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 settingsXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

- (void)materializeWithContext:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_debug_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEBUG, "Materialization failure - Service not present: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end
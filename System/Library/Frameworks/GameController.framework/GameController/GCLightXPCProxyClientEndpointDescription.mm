@interface GCLightXPCProxyClientEndpointDescription
- (GCLightXPCProxyClientEndpointDescription)initWithCoder:(id)a3;
- (GCLightXPCProxyClientEndpointDescription)initWithIdentifier:(id)a3 initialLight:(id)a4;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCLightXPCProxyClientEndpointDescription

- (GCLightXPCProxyClientEndpointDescription)initWithIdentifier:(id)a3 initialLight:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCLightXPCProxyClientEndpointDescription;
  v8 = [(GCLightXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialLight, a4);
  }

  return v8;
}

- (GCLightXPCProxyClientEndpointDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GCLightXPCProxyClientEndpointDescription;
  v5 = [(GCLightXPCProxyClientEndpointDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialLight"];
    initialLight = v5->_initialLight;
    v5->_initialLight = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  initialLight = self->_initialLight;
  v5 = a3;
  [v5 encodeObject:initialLight forKey:@"initialLight"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)materializeWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_4;
  }

  v7 = [v4 IPCServiceRegistry];
  v8 = [v7 serviceClientForIPCService:&unk_1F4EB3588];

  if (v8)
  {
    v9 = [v8 lightXPCProxyServiceRemoteServer];
    v10 = [[GCLightXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialLight:self->_initialLight];
    v11 = [v5 IPCObjectRegistry];
    [v11 registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__GCLightXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E841A560;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [v9 lightXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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
    [GCBatteryXPCProxyClientEndpointDescription materializeWithContext:];
  }

  v19 = 0;
LABEL_5:

  return v19;
}

intptr_t __67__GCLightXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 lightXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end
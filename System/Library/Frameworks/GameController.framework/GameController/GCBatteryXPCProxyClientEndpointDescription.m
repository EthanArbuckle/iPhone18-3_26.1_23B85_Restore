@interface GCBatteryXPCProxyClientEndpointDescription
- (GCBatteryXPCProxyClientEndpointDescription)initWithCoder:(id)a3;
- (GCBatteryXPCProxyClientEndpointDescription)initWithIdentifier:(id)a3 initialBattery:(id)a4;
- (id)materializeWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCBatteryXPCProxyClientEndpointDescription

- (GCBatteryXPCProxyClientEndpointDescription)initWithIdentifier:(id)a3 initialBattery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCBatteryXPCProxyClientEndpointDescription;
  v8 = [(GCBatteryXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialBattery, a4);
  }

  return v8;
}

- (GCBatteryXPCProxyClientEndpointDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GCBatteryXPCProxyClientEndpointDescription;
  v5 = [(GCBatteryXPCProxyClientEndpointDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initialBattery"];
    initialBattery = v5->_initialBattery;
    v5->_initialBattery = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  initialBattery = self->_initialBattery;
  v5 = a3;
  [v5 encodeObject:initialBattery forKey:@"initialBattery"];
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
  v8 = [v7 serviceClientForIPCService:&unk_1F4EB2C90];

  if (v8)
  {
    v9 = [v8 batteryXPCProxyServiceRemoteServer];
    v10 = [[GCBatteryXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialBattery:self->_initialBattery];
    v11 = [v5 IPCObjectRegistry];
    [v11 registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__GCBatteryXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E8418D90;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [v9 batteryXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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

intptr_t __69__GCBatteryXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 batteryXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

- (void)materializeWithContext:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Materialization failure - Service not present: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end
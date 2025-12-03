@interface GCBatteryXPCProxyClientEndpointDescription
- (GCBatteryXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCBatteryXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialBattery:(id)battery;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCBatteryXPCProxyClientEndpointDescription

- (GCBatteryXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialBattery:(id)battery
{
  identifierCopy = identifier;
  batteryCopy = battery;
  v12.receiver = self;
  v12.super_class = GCBatteryXPCProxyClientEndpointDescription;
  v8 = [(GCBatteryXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialBattery, battery);
  }

  return v8;
}

- (GCBatteryXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GCBatteryXPCProxyClientEndpointDescription;
  v5 = [(GCBatteryXPCProxyClientEndpointDescription *)&v12 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialBattery"];
    initialBattery = v5->_initialBattery;
    v5->_initialBattery = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  initialBattery = self->_initialBattery;
  coderCopy = coder;
  [coderCopy encodeObject:initialBattery forKey:@"initialBattery"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB2C90];

  if (v8)
  {
    batteryXPCProxyServiceRemoteServer = [v8 batteryXPCProxyServiceRemoteServer];
    v10 = [[GCBatteryXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialBattery:self->_initialBattery];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v10];

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
    [batteryXPCProxyServiceRemoteServer batteryXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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
@interface GCMotionXPCProxyClientEndpointDescription
- (GCMotionXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCMotionXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCMotionXPCProxyClientEndpointDescription

- (GCMotionXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = GCMotionXPCProxyClientEndpointDescription;
  v7 = [(GCMotionXPCProxyClientEndpointDescription *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_initialSensorsActive = active;
  }

  return v7;
}

- (GCMotionXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GCMotionXPCProxyClientEndpointDescription;
  v5 = [(GCMotionXPCProxyClientEndpointDescription *)&v10 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v5->_initialSensorsActive = [coderCopy decodeBoolForKey:@"initialSensorsActive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  initialSensorsActive = self->_initialSensorsActive;
  coderCopy = coder;
  [coderCopy encodeInteger:initialSensorsActive forKey:@"initialSensorsActive"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB2F58];

  if (v8)
  {
    motionXPCProxyServiceRemoteServer = [v8 motionXPCProxyServiceRemoteServer];
    v10 = [[GCMotionXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialSensorsActive:self->_initialSensorsActive];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __68__GCMotionXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E84196A0;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [motionXPCProxyServiceRemoteServer motionXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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

intptr_t __68__GCMotionXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 motionXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end
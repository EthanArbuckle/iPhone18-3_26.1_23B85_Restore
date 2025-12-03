@interface GCSystemGestureXPCProxyClientEndpointDescription
- (GCSystemGestureXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCSystemGestureXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier;
- (id)materializeWithContext:(id)context;
@end

@implementation GCSystemGestureXPCProxyClientEndpointDescription

- (GCSystemGestureXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCSystemGestureXPCProxyClientEndpointDescription;
  v5 = [(GCSystemGestureXPCProxyClientEndpointDescription *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCSystemGestureXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GCSystemGestureXPCProxyClientEndpointDescription;
  v5 = [(GCSystemGestureXPCProxyClientEndpointDescription *)&v10 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;
  }

  return v5;
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB39A8];

  if (v8)
  {
    systemGestureXPCProxyServiceRemoteServer = [v8 systemGestureXPCProxyServiceRemoteServer];
    v10 = [[GCSystemGestureXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__GCSystemGestureXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E841B1B0;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [systemGestureXPCProxyServiceRemoteServer systemGestureXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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

intptr_t __75__GCSystemGestureXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 systemGestureXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end
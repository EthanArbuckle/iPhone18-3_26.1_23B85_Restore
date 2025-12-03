@interface GCPlayerIndicatorXPCProxyClientEndpointDescription
- (GCPlayerIndicatorXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCPlayerIndicatorXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialPlayerIndex:(int64_t)index;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCPlayerIndicatorXPCProxyClientEndpointDescription

- (GCPlayerIndicatorXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialPlayerIndex:(int64_t)index
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = GCPlayerIndicatorXPCProxyClientEndpointDescription;
  v7 = [(GCPlayerIndicatorXPCProxyClientEndpointDescription *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_initialPlayerIndex = index;
  }

  return v7;
}

- (GCPlayerIndicatorXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GCPlayerIndicatorXPCProxyClientEndpointDescription;
  v5 = [(GCPlayerIndicatorXPCProxyClientEndpointDescription *)&v10 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v5->_initialPlayerIndex = [coderCopy decodeIntegerForKey:@"initialPlayerIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  initialPlayerIndex = self->_initialPlayerIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:initialPlayerIndex forKey:@"initialPlayerIndex"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB38E8];

  if (v8)
  {
    playerIndicatorXPCProxyServiceRemoteServer = [v8 playerIndicatorXPCProxyServiceRemoteServer];
    v10 = [[GCPlayerIndicatorXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialPlayerIndex:self->_initialPlayerIndex];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v10];

    v12 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __77__GCPlayerIndicatorXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v21[3] = &unk_1E841B6C8;
    v13 = v10;
    v22 = v13;
    v23 = v8;
    v24 = v12;
    v14 = v12;
    v15 = v8;
    [playerIndicatorXPCProxyServiceRemoteServer playerIndicatorXPCProxyServiceClientEndpointConnect:v13 reply:v21];
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

intptr_t __77__GCPlayerIndicatorXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 playerIndicatorXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end
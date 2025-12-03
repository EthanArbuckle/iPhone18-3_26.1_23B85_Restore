@interface CNXPCConnection
- (CNXPCConnection)initWithConnection:(id)connection interface:(id)interface logger:(id)logger;
- (id)remoteResultForSelector:(SEL)selector param1:(id)param1 error:(id *)error;
- (id)remoteResultForSelector:(SEL)selector param1:(id)param1 param2:(id)param2 error:(id *)error;
- (id)remoteResultForSelector:(SEL)selector parameters:(id)parameters error:(id *)error;
- (void)dealloc;
@end

@implementation CNXPCConnection

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CNXPCConnection;
  [(CNXPCConnection *)&v3 dealloc];
}

- (CNXPCConnection)initWithConnection:(id)connection interface:(id)interface logger:(id)logger
{
  connectionCopy = connection;
  interfaceCopy = interface;
  loggerCopy = logger;
  if (connectionCopy && (v32.receiver = self, v32.super_class = CNXPCConnection, v12 = [(CNXPCConnection *)&v32 init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_logger, logger);
    objc_storeStrong(&self->_connection, connection);
    connection = self->_connection;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __55__CNXPCConnection_initWithConnection_interface_logger___block_invoke;
    v29[3] = &unk_1E74121B8;
    v14 = loggerCopy;
    v30 = v14;
    v15 = connectionCopy;
    v31 = v15;
    [(NSXPCConnection *)connection setInterruptionHandler:v29];
    v16 = self->_connection;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __55__CNXPCConnection_initWithConnection_interface_logger___block_invoke_2;
    v26[3] = &unk_1E74121B8;
    v17 = v14;
    v27 = v17;
    v28 = v15;
    [(NSXPCConnection *)v16 setInvalidationHandler:v26];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:interfaceCopy];
    [(NSXPCConnection *)self->_connection resume];
    Property = objc_getProperty(self, v18, 16, 1);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__CNXPCConnection_initWithConnection_interface_logger___block_invoke_3;
    v24[3] = &unk_1E7412FA0;
    v25 = v17;
    v20 = [Property synchronousRemoteObjectProxyWithErrorHandler:v24];
    serviceProxy = self->_serviceProxy;
    self->_serviceProxy = v20;

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __55__CNXPCConnection_initWithConnection_interface_logger___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) serviceName];
  [v1 XPCConnectionWasInterruptedForService:v2];
}

void __55__CNXPCConnection_initWithConnection_interface_logger___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) serviceName];
  [v1 XPCConnectionWasInvalidatedForService:v2];
}

- (id)remoteResultForSelector:(SEL)selector param1:(id)param1 error:(id *)error
{
  v8 = MEMORY[0x1E696AE08];
  param1Copy = param1;
  weakObjectsPointerArray = [v8 weakObjectsPointerArray];
  [weakObjectsPointerArray addPointer:param1Copy];

  v11 = [(CNXPCConnection *)self remoteResultForSelector:selector parameters:weakObjectsPointerArray error:error];

  return v11;
}

- (id)remoteResultForSelector:(SEL)selector param1:(id)param1 param2:(id)param2 error:(id *)error
{
  v10 = MEMORY[0x1E696AE08];
  param2Copy = param2;
  param1Copy = param1;
  weakObjectsPointerArray = [v10 weakObjectsPointerArray];
  [weakObjectsPointerArray addPointer:param1Copy];

  [weakObjectsPointerArray addPointer:param2Copy];
  v14 = [(CNXPCConnection *)self remoteResultForSelector:selector parameters:weakObjectsPointerArray error:error];

  return v14;
}

void __60__CNXPCConnection_remoteResultForSelector_parameters_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  *(*(a1[6] + 8) + 24) = 1;
}

- (id)remoteResultForSelector:(SEL)selector parameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  if (self && objc_getProperty(self, v8, 16, 1))
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__8;
    v48 = __Block_byref_object_dispose__8;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__8;
    v42 = __Block_byref_object_dispose__8;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__CNXPCConnection_remoteResultForSelector_parameters_error___block_invoke;
    aBlock[3] = &unk_1E7413298;
    aBlock[4] = &v44;
    aBlock[5] = &v38;
    aBlock[6] = &v34;
    v10 = _Block_copy(aBlock);
    v11 = [parametersCopy count];
    serviceProxy = [(CNXPCConnection *)self serviceProxy];
    v13 = serviceProxy;
    switch(v11)
    {
      case 0:
        [serviceProxy selector];
        break;
      case 1:
        [serviceProxy selector];
        break;
      case 2:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_1_3();
        v16 = OUTLINED_FUNCTION_0_6();
        [v16 v17];
        break;
      case 3:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_1_3();
        [parametersCopy pointerAtIndex:2];
        v18 = OUTLINED_FUNCTION_0_6();
        [v18 v19];
        break;
      case 4:
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_1_3();
        [parametersCopy pointerAtIndex:2];
        [parametersCopy pointerAtIndex:3];
        v14 = OUTLINED_FUNCTION_0_6();
        [v14 v15];
        break;
      default:
        v20 = MEMORY[0x1E695DF30];
        v21 = MEMORY[0x1E696AEC0];
        v22 = NSStringFromSelector(selector);
        v23 = [v21 stringWithFormat:@"Too many arguments to %@", v22];
        v24 = [v20 exceptionWithName:@"CNXPCVariadicOverflow" reason:v23 userInfo:0];

        break;
    }

    if ((v35[3] & 1) == 0)
    {
      v25 = [CNErrorFactory errorWithCode:1 userInfo:0];
      v26 = v39[5];
      v39[5] = v25;
    }

    v27 = v39[5];
    v28 = v45[5];
    v29 = v28;
    if (error && !v28)
    {
      v30 = v27;
      *error = v27;
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
  }

  else
  {
    v31 = [CNErrorFactory errorWithCode:100 userInfo:0];
    if (error)
    {
      v31 = v31;
      *error = v31;
    }

    v29 = 0;
  }

  return v29;
}

@end
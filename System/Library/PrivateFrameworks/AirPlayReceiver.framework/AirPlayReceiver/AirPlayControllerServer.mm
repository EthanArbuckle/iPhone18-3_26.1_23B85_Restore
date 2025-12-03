@interface AirPlayControllerServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_connectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)getProperty:(id)property qualifier:(id)qualifier completion:(id)completion;
- (void)performCommand:(id)command qualifier:(id)qualifier params:(id)params completion:(id)completion;
- (void)postEvent:(id)event qualifier:(id)qualifier params:(id)params completion:(id)completion;
- (void)setDispatchQueue:(id)queue;
- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completion:(id)completion;
- (void)startWithXPCName:(id)name;
@end

@implementation AirPlayControllerServer

- (void)setProperty:(id)property qualifier:(id)qualifier value:(id)value completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    qualifierCopy = qualifier;
    valueCopy = value;
    propertyCopy = property;
    LogPrintF();
  }

  if ([property isEqual:{@"test", propertyCopy, qualifierCopy, valueCopy}])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_11;
  }

  setPropertyBlock = self->_setPropertyBlock;
  if (setPropertyBlock)
  {
    v12 = setPropertyBlock[2](setPropertyBlock, property, qualifier, value);
    if (!v12)
    {
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v13 = v12;
  }

  else
  {
    v13 = 4294960582;
  }

LABEL_12:
  v14 = *(completion + 2);

  v14(completion, v13);
}

- (void)getProperty:(id)property qualifier:(id)qualifier completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    propertyCopy = property;
    qualifierCopy = qualifier;
    LogPrintF();
  }

  v14 = 0;
  if ([property isEqual:{@"test", propertyCopy, qualifierCopy}])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = @"value";
    v11 = @"value";
  }

  else
  {
    copyPropertyBlock = self->_copyPropertyBlock;
    if (!copyPropertyBlock)
    {
      v10 = 0;
      v14 = -6714;
      goto LABEL_15;
    }

    v10 = copyPropertyBlock[2](copyPropertyBlock, property, qualifier, &v14);
    if (v14)
    {
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_15:
  (*(completion + 2))(completion);
}

- (void)postEvent:(id)event qualifier:(id)qualifier params:(id)params completion:(id)completion
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    qualifierCopy = qualifier;
    paramsCopy = params;
    eventCopy = event;
    LogPrintF();
  }

  if ([event isEqual:{@"test", eventCopy, qualifierCopy, paramsCopy}] && gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = *(completion + 2);

  v10(completion);
}

- (void)performCommand:(id)command qualifier:(id)qualifier params:(id)params completion:(id)completion
{
  v18 = 0;
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    qualifierCopy = qualifier;
    paramsCopy = params;
    commandCopy = command;
    LogPrintF();
  }

  if ([command isEqual:{@"test", commandCopy, qualifierCopy, paramsCopy}])
  {
    if (gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v18 = &unk_28513BB18;
    v14 = &unk_28513BB18;
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  performCommandBlock = self->_performCommandBlock;
  if (!performCommandBlock)
  {
    v13 = 4294960582;
    goto LABEL_15;
  }

  v12 = performCommandBlock[2](performCommandBlock, command, qualifier, params, &v18);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
LABEL_15:
  (*(completion + 2))(completion, v13, v18);
}

- (void)_connectionInvalidated:(id)invalidated
{
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    [invalidated processIdentifier];
    LogPrintF();
  }

  [invalidated setInvalidationHandler:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v12[7] = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    processIdentifier = [connection processIdentifier];
    LogPrintF();
  }

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_28513CBE8, processIdentifier}];
  v7 = MEMORY[0x277CBEB98];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v12[5] = objc_opt_class();
  v12[6] = objc_opt_class();
  v8 = [v7 setWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 7)}];
  [v6 setClasses:v8 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_performCommand_qualifier_params_completion_ argumentIndex:2 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_postEvent_qualifier_params_completion_ argumentIndex:2 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_getProperty_qualifier_completion_ argumentIndex:1 ofReply:1];
  [v6 setClasses:v8 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:1 ofReply:0];
  [v6 setClasses:v8 forSelector:sel_setProperty_qualifier_value_completion_ argumentIndex:2 ofReply:0];
  [connection setExportedInterface:v6];
  [connection setExportedObject:self];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__AirPlayControllerServer_listener_shouldAcceptNewConnection___block_invoke;
  v11[3] = &unk_278C60A08;
  v11[4] = self;
  v11[5] = connection;
  [connection setInvalidationHandler:v11];
  if (self->_queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [connection _setQueue:self->_queue];
  }

  [connection resume];
  return 1;
}

- (void)startWithXPCName:(id)name
{
  self->_serviceName = [name copy];
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:name];
  self->_xpcListener = v5;
  [(NSXPCListener *)v5 setDelegate:self];
  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener resume];
}

- (void)setDispatchQueue:(id)queue
{
  if (queue)
  {
    dispatch_retain(queue);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  self->_queue = queue;
}

- (void)dealloc
{
  self->_serviceName = 0;
  [(NSXPCListener *)self->_xpcListener invalidate];

  self->_xpcListener = 0;
  self->_performCommandBlock = 0;

  self->_copyPropertyBlock = 0;
  self->_setPropertyBlock = 0;
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = AirPlayControllerServer;
  [(AirPlayControllerServer *)&v4 dealloc];
}

@end
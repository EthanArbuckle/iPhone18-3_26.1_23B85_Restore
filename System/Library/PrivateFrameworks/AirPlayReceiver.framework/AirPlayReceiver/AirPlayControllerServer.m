@interface AirPlayControllerServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_connectionInvalidated:(id)a3;
- (void)dealloc;
- (void)getProperty:(id)a3 qualifier:(id)a4 completion:(id)a5;
- (void)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6;
- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6;
- (void)setDispatchQueue:(id)a3;
- (void)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5 completion:(id)a6;
- (void)startWithXPCName:(id)a3;
@end

@implementation AirPlayControllerServer

- (void)setProperty:(id)a3 qualifier:(id)a4 value:(id)a5 completion:(id)a6
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    v16 = a4;
    v17 = a5;
    v15 = a3;
    LogPrintF();
  }

  if ([a3 isEqual:{@"test", v15, v16, v17}])
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
    v12 = setPropertyBlock[2](setPropertyBlock, a3, a4, a5);
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
  v14 = *(a6 + 2);

  v14(a6, v13);
}

- (void)getProperty:(id)a3 qualifier:(id)a4 completion:(id)a5
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    v12 = a3;
    v13 = a4;
    LogPrintF();
  }

  v14 = 0;
  if ([a3 isEqual:{@"test", v12, v13}])
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

    v10 = copyPropertyBlock[2](copyPropertyBlock, a3, a4, &v14);
    if (v14)
    {
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_15:
  (*(a5 + 2))(a5);
}

- (void)postEvent:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6
{
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    v12 = a4;
    v13 = a5;
    v11 = a3;
    LogPrintF();
  }

  if ([a3 isEqual:{@"test", v11, v12, v13}] && gLogCategory_AirPlayControllerServer <= 50 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v10 = *(a6 + 2);

  v10(a6);
}

- (void)performCommand:(id)a3 qualifier:(id)a4 params:(id)a5 completion:(id)a6
{
  v18 = 0;
  if (gLogCategory_AirPlayControllerServer <= 30 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    v16 = a4;
    v17 = a5;
    v15 = a3;
    LogPrintF();
  }

  if ([a3 isEqual:{@"test", v15, v16, v17}])
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

  v12 = performCommandBlock[2](performCommandBlock, a3, a4, a5, &v18);
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
LABEL_15:
  (*(a6 + 2))(a6, v13, v18);
}

- (void)_connectionInvalidated:(id)a3
{
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    [a3 processIdentifier];
    LogPrintF();
  }

  [a3 setInvalidationHandler:0];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v12[7] = *MEMORY[0x277D85DE8];
  if (gLogCategory_AirPlayControllerServer <= 10 && (gLogCategory_AirPlayControllerServer != -1 || _LogCategory_Initialize()))
  {
    v10 = [a4 processIdentifier];
    LogPrintF();
  }

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:{&unk_28513CBE8, v10}];
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
  [a4 setExportedInterface:v6];
  [a4 setExportedObject:self];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__AirPlayControllerServer_listener_shouldAcceptNewConnection___block_invoke;
  v11[3] = &unk_278C60A08;
  v11[4] = self;
  v11[5] = a4;
  [a4 setInvalidationHandler:v11];
  if (self->_queue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [a4 _setQueue:self->_queue];
  }

  [a4 resume];
  return 1;
}

- (void)startWithXPCName:(id)a3
{
  self->_serviceName = [a3 copy];
  v5 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:a3];
  self->_xpcListener = v5;
  [(NSXPCListener *)v5 setDelegate:self];
  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener resume];
}

- (void)setDispatchQueue:(id)a3
{
  if (a3)
  {
    dispatch_retain(a3);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  self->_queue = a3;
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
@interface MTRDeviceControllerXPCConnection
+ (id)connectionWithWorkQueue:(id)queue connectBlock:(id)block;
- (MTRDeviceControllerXPCConnection)initWithWorkQueue:(id)queue connectBlock:(id)block;
- (MTRDeviceControllerXPCProxyHandle)proxyHandle;
- (void)deregisterReportHandlersWithController:(id)controller nodeID:(id)d completion:(id)completion;
- (void)getProxyHandleWithCompletion:(id)completion;
- (void)handleReportWithController:(id)controller nodeId:(unint64_t)id values:(id)values error:(id)error;
- (void)registerReportHandlerWithController:(id)controller nodeID:(id)d handler:(id)handler;
@end

@implementation MTRDeviceControllerXPCConnection

- (MTRDeviceControllerXPCConnection)initWithWorkQueue:(id)queue connectBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = MTRDeviceControllerXPCConnection;
  v9 = [(MTRDeviceControllerXPCConnection *)&v19 init];
  if (v9)
  {
    v10 = +[MTRDeviceController xpcInterfaceForServerProtocol];
    remoteDeviceServerProtocol = v9->_remoteDeviceServerProtocol;
    v9->_remoteDeviceServerProtocol = v10;

    v12 = +[MTRDeviceController xpcInterfaceForClientProtocol];
    remoteDeviceClientProtocol = v9->_remoteDeviceClientProtocol;
    v9->_remoteDeviceClientProtocol = v12;

    v14 = MEMORY[0x23EE78590](blockCopy);
    connectBlock = v9->_connectBlock;
    v9->_connectBlock = v14;

    objc_storeStrong(&v9->_workQueue, queue);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportRegistry = v9->_reportRegistry;
    v9->_reportRegistry = v16;
  }

  return v9;
}

+ (id)connectionWithWorkQueue:(id)queue connectBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v7 = [[MTRDeviceControllerXPCConnection alloc] initWithWorkQueue:queueCopy connectBlock:blockCopy];

  return v7;
}

- (void)getProxyHandleWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23922368C;
  v7[3] = &unk_278A72D98;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)registerReportHandlerWithController:(id)controller nodeID:(id)d handler:(id)handler
{
  controllerCopy = controller;
  dCopy = d;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239223BF4;
  v15[3] = &unk_278A73DB8;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = controllerCopy;
  dispatch_async(workQueue, v15);
}

- (void)deregisterReportHandlersWithController:(id)controller nodeID:(id)d completion:(id)completion
{
  controllerCopy = controller;
  dCopy = d;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239223E84;
  v15[3] = &unk_278A73DE0;
  v15[4] = self;
  v16 = controllerCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = dCopy;
  v13 = completionCopy;
  v14 = controllerCopy;
  dispatch_async(workQueue, v15);
}

- (void)handleReportWithController:(id)controller nodeId:(unint64_t)id values:(id)values error:(id)error
{
  controllerCopy = controller;
  valuesCopy = values;
  errorCopy = error;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239224420;
  block[3] = &unk_278A73E58;
  block[4] = self;
  v18 = controllerCopy;
  v20 = errorCopy;
  idCopy = id;
  v19 = valuesCopy;
  v14 = errorCopy;
  v15 = valuesCopy;
  v16 = controllerCopy;
  dispatch_async(workQueue, block);
}

- (MTRDeviceControllerXPCProxyHandle)proxyHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandle);

  return WeakRetained;
}

@end
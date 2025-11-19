@interface MTRDeviceControllerXPCConnection
+ (id)connectionWithWorkQueue:(id)a3 connectBlock:(id)a4;
- (MTRDeviceControllerXPCConnection)initWithWorkQueue:(id)a3 connectBlock:(id)a4;
- (MTRDeviceControllerXPCProxyHandle)proxyHandle;
- (void)deregisterReportHandlersWithController:(id)a3 nodeID:(id)a4 completion:(id)a5;
- (void)getProxyHandleWithCompletion:(id)a3;
- (void)handleReportWithController:(id)a3 nodeId:(unint64_t)a4 values:(id)a5 error:(id)a6;
- (void)registerReportHandlerWithController:(id)a3 nodeID:(id)a4 handler:(id)a5;
@end

@implementation MTRDeviceControllerXPCConnection

- (MTRDeviceControllerXPCConnection)initWithWorkQueue:(id)a3 connectBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    v14 = MEMORY[0x23EE78590](v8);
    connectBlock = v9->_connectBlock;
    v9->_connectBlock = v14;

    objc_storeStrong(&v9->_workQueue, a3);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    reportRegistry = v9->_reportRegistry;
    v9->_reportRegistry = v16;
  }

  return v9;
}

+ (id)connectionWithWorkQueue:(id)a3 connectBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[MTRDeviceControllerXPCConnection alloc] initWithWorkQueue:v5 connectBlock:v6];

  return v7;
}

- (void)getProxyHandleWithCompletion:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23922368C;
  v7[3] = &unk_278A72D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)registerReportHandlerWithController:(id)a3 nodeID:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239223BF4;
  v15[3] = &unk_278A73DB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

- (void)deregisterReportHandlersWithController:(id)a3 nodeID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_239223E84;
  v15[3] = &unk_278A73DE0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(workQueue, v15);
}

- (void)handleReportWithController:(id)a3 nodeId:(unint64_t)a4 values:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_239224420;
  block[3] = &unk_278A73E58;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(workQueue, block);
}

- (MTRDeviceControllerXPCProxyHandle)proxyHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyHandle);

  return WeakRetained;
}

@end
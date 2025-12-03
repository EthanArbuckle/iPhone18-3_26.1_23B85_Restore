@interface MTRDeviceControllerOverXPC
+ (id)sharedControllerWithID:(id)d xpcConnectBlock:(id)block;
- (BOOL)cancelCommissioningForNodeID:(id)d error:(id *)error;
- (BOOL)commissionDevice:(unint64_t)device commissioningParams:(id)params error:(id *)error;
- (BOOL)commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error;
- (BOOL)getBaseDevice:(unint64_t)device queue:(id)queue completionHandler:(id)handler;
- (BOOL)openPairingWindow:(unint64_t)window duration:(unint64_t)duration error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device address:(id)address port:(unsigned __int16)port discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error;
- (BOOL)pairDevice:(unint64_t)device onboardingPayload:(id)payload error:(id *)error;
- (BOOL)setupCommissioningSessionWithPayload:(id)payload newNodeID:(id)d error:(id *)error;
- (BOOL)stopDevicePairing:(unint64_t)pairing error:(id *)error;
- (MTRDeviceControllerOverXPC)initWithControllerID:(id)d workQueue:(id)queue connectBlock:(id)block;
- (MTRDeviceControllerOverXPC)initWithControllerID:(id)d workQueue:(id)queue xpcConnection:(id)connection;
- (id)baseDeviceForNodeID:(id)d;
- (id)deviceBeingCommissionedWithNodeID:(id)d error:(id *)error;
- (id)getDeviceBeingCommissioned:(unint64_t)commissioned error:(id *)error;
- (id)openPairingWindowWithPIN:(unint64_t)n duration:(unint64_t)duration discriminator:(unint64_t)discriminator setupPIN:(unint64_t)iN error:(id *)error;
- (void)fetchControllerIdWithQueue:(id)queue completion:(id)completion;
@end

@implementation MTRDeviceControllerOverXPC

+ (id)sharedControllerWithID:(id)d xpcConnectBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (qword_27DF77670 != -1)
  {
    sub_23952D5DC();
  }

  v7 = [MTRDeviceControllerOverXPC alloc];
  v8 = [(MTRDeviceControllerOverXPC *)v7 initWithControllerID:dCopy workQueue:qword_27DF77668 connectBlock:blockCopy];

  return v8;
}

- (BOOL)setupCommissioningSessionWithPayload:(id)payload newNodeID:(id)d error:(id *)error
{
  payloadCopy = payload;
  dCopy = d;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRDeviceController doesn't support setupCommissioningSessionWithPayload over XPC", v11, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)device discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error
{
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support pairDevice over XPC", v9, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)device address:(id)address port:(unsigned __int16)port discriminator:(unsigned __int16)discriminator setupPINCode:(unsigned int)code error:(id *)error
{
  addressCopy = address;
  v10 = sub_2393D9044(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support pairDevice over XPC", v12, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)device onboardingPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support pairDevice over XPC", v9, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)commissionDevice:(unint64_t)device commissioningParams:(id)params error:(id *)error
{
  paramsCopy = params;
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support commissionDevice over XPC", v9, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)stopDevicePairing:(unint64_t)pairing error:(id *)error
{
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support stopDevicePairing over XPC", v7, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (id)getDeviceBeingCommissioned:(unint64_t)commissioned error:(id *)error
{
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support getDeviceBeingCommissioned over XPC", v7, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)commissionNodeWithID:(id)d commissioningParams:(id)params error:(id *)error
{
  dCopy = d;
  paramsCopy = params;
  v9 = sub_2393D9044(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "MTRDeviceController doesn't support commissionNodeWithID over XPC", v11, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)cancelCommissioningForNodeID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "MTRDeviceController doesn't support cancelCommissioningForNodeID over XPC", v8, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (id)deviceBeingCommissionedWithNodeID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = sub_2393D9044(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "MTRDeviceController doesn't support deviceBeingCommissionedWithNodeID over XPC", v8, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)getBaseDevice:(unint64_t)device queue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2392D012C;
  v11[3] = &unk_278A75100;
  v11[4] = self;
  v12 = handlerCopy;
  deviceCopy = device;
  v9 = handlerCopy;
  [(MTRDeviceControllerOverXPC *)self fetchControllerIdWithQueue:queue completion:v11];

  return 1;
}

- (void)fetchControllerIdWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_2392D0334;
  v15[4] = sub_2392D0344;
  v16 = 0;
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2392D034C;
  v11[3] = &unk_278A751A0;
  v11[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v14 = v15;
  v9 = completionCopy;
  v10 = queueCopy;
  dispatch_async(workQueue, v11);

  _Block_object_dispose(v15, 8);
}

- (id)baseDeviceForNodeID:(id)d
{
  dCopy = d;
  v5 = [MTRDeviceOverXPC alloc];
  xpcConnection = [(MTRDeviceControllerOverXPC *)self xpcConnection];
  v7 = [(MTRDeviceOverXPC *)v5 initWithControllerOverXPC:self deviceID:dCopy xpcConnection:xpcConnection];

  return v7;
}

- (BOOL)openPairingWindow:(unint64_t)window duration:(unint64_t)duration error:(id *)error
{
  v5 = sub_2393D9044(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support openPairingWindow over XPC", v7, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  return 0;
}

- (id)openPairingWindowWithPIN:(unint64_t)n duration:(unint64_t)duration discriminator:(unint64_t)discriminator setupPIN:(unint64_t)iN error:(id *)error
{
  v7 = sub_2393D9044(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "MTRDevice doesn't support openPairingWindow over XPC", v9, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0, 1);
  }

  return 0;
}

- (MTRDeviceControllerOverXPC)initWithControllerID:(id)d workQueue:(id)queue xpcConnection:(id)connection
{
  dCopy = d;
  queueCopy = queue;
  connectionCopy = connection;
  controllerXPCID = self->_controllerXPCID;
  self->_controllerXPCID = dCopy;
  v12 = dCopy;

  workQueue = self->_workQueue;
  self->_workQueue = queueCopy;
  v14 = queueCopy;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = connectionCopy;

  return self;
}

- (MTRDeviceControllerOverXPC)initWithControllerID:(id)d workQueue:(id)queue connectBlock:(id)block
{
  dCopy = d;
  queueCopy = queue;
  v10 = [MTRDeviceControllerXPCConnection connectionWithWorkQueue:queueCopy connectBlock:block];
  v11 = [(MTRDeviceControllerOverXPC *)self initWithControllerID:dCopy workQueue:queueCopy xpcConnection:v10];

  return v11;
}

@end
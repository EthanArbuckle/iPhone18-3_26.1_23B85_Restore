@interface MTRDeviceControllerOverXPC
+ (id)sharedControllerWithID:(id)a3 xpcConnectBlock:(id)a4;
- (BOOL)cancelCommissioningForNodeID:(id)a3 error:(id *)a4;
- (BOOL)commissionDevice:(unint64_t)a3 commissioningParams:(id)a4 error:(id *)a5;
- (BOOL)commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5;
- (BOOL)getBaseDevice:(unint64_t)a3 queue:(id)a4 completionHandler:(id)a5;
- (BOOL)openPairingWindow:(unint64_t)a3 duration:(unint64_t)a4 error:(id *)a5;
- (BOOL)pairDevice:(unint64_t)a3 address:(id)a4 port:(unsigned __int16)a5 discriminator:(unsigned __int16)a6 setupPINCode:(unsigned int)a7 error:(id *)a8;
- (BOOL)pairDevice:(unint64_t)a3 discriminator:(unsigned __int16)a4 setupPINCode:(unsigned int)a5 error:(id *)a6;
- (BOOL)pairDevice:(unint64_t)a3 onboardingPayload:(id)a4 error:(id *)a5;
- (BOOL)setupCommissioningSessionWithPayload:(id)a3 newNodeID:(id)a4 error:(id *)a5;
- (BOOL)stopDevicePairing:(unint64_t)a3 error:(id *)a4;
- (MTRDeviceControllerOverXPC)initWithControllerID:(id)a3 workQueue:(id)a4 connectBlock:(id)a5;
- (MTRDeviceControllerOverXPC)initWithControllerID:(id)a3 workQueue:(id)a4 xpcConnection:(id)a5;
- (id)baseDeviceForNodeID:(id)a3;
- (id)deviceBeingCommissionedWithNodeID:(id)a3 error:(id *)a4;
- (id)getDeviceBeingCommissioned:(unint64_t)a3 error:(id *)a4;
- (id)openPairingWindowWithPIN:(unint64_t)a3 duration:(unint64_t)a4 discriminator:(unint64_t)a5 setupPIN:(unint64_t)a6 error:(id *)a7;
- (void)fetchControllerIdWithQueue:(id)a3 completion:(id)a4;
@end

@implementation MTRDeviceControllerOverXPC

+ (id)sharedControllerWithID:(id)a3 xpcConnectBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_27DF77670 != -1)
  {
    sub_23952D5DC();
  }

  v7 = [MTRDeviceControllerOverXPC alloc];
  v8 = [(MTRDeviceControllerOverXPC *)v7 initWithControllerID:v5 workQueue:qword_27DF77668 connectBlock:v6];

  return v8;
}

- (BOOL)setupCommissioningSessionWithPayload:(id)a3 newNodeID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)a3 discriminator:(unsigned __int16)a4 setupPINCode:(unsigned int)a5 error:(id *)a6
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

  if (a6)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)a3 address:(id)a4 port:(unsigned __int16)a5 discriminator:(unsigned __int16)a6 setupPINCode:(unsigned int)a7 error:(id *)a8
{
  v9 = a4;
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

  if (a8)
  {
    *a8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)pairDevice:(unint64_t)a3 onboardingPayload:(id)a4 error:(id *)a5
{
  v6 = a4;
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

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)commissionDevice:(unint64_t)a3 commissioningParams:(id)a4 error:(id *)a5
{
  v6 = a4;
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

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)stopDevicePairing:(unint64_t)a3 error:(id *)a4
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

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (id)getDeviceBeingCommissioned:(unint64_t)a3 error:(id *)a4
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

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)commissionNodeWithID:(id)a3 commissioningParams:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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

  if (a5)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)cancelCommissioningForNodeID:(id)a3 error:(id *)a4
{
  v5 = a3;
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

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (id)deviceBeingCommissionedWithNodeID:(id)a3 error:(id *)a4
{
  v5 = a3;
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

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MTRErrorDomain" code:6 userInfo:0];
  }

  return 0;
}

- (BOOL)getBaseDevice:(unint64_t)a3 queue:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2392D012C;
  v11[3] = &unk_278A75100;
  v11[4] = self;
  v12 = v8;
  v13 = a3;
  v9 = v8;
  [(MTRDeviceControllerOverXPC *)self fetchControllerIdWithQueue:a4 completion:v11];

  return 1;
}

- (void)fetchControllerIdWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v13 = v7;
  v14 = v15;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, v11);

  _Block_object_dispose(v15, 8);
}

- (id)baseDeviceForNodeID:(id)a3
{
  v4 = a3;
  v5 = [MTRDeviceOverXPC alloc];
  v6 = [(MTRDeviceControllerOverXPC *)self xpcConnection];
  v7 = [(MTRDeviceOverXPC *)v5 initWithControllerOverXPC:self deviceID:v4 xpcConnection:v6];

  return v7;
}

- (BOOL)openPairingWindow:(unint64_t)a3 duration:(unint64_t)a4 error:(id *)a5
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

- (id)openPairingWindowWithPIN:(unint64_t)a3 duration:(unint64_t)a4 discriminator:(unint64_t)a5 setupPIN:(unint64_t)a6 error:(id *)a7
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

- (MTRDeviceControllerOverXPC)initWithControllerID:(id)a3 workQueue:(id)a4 xpcConnection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  controllerXPCID = self->_controllerXPCID;
  self->_controllerXPCID = v8;
  v12 = v8;

  workQueue = self->_workQueue;
  self->_workQueue = v9;
  v14 = v9;

  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v10;

  return self;
}

- (MTRDeviceControllerOverXPC)initWithControllerID:(id)a3 workQueue:(id)a4 connectBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MTRDeviceControllerXPCConnection connectionWithWorkQueue:v9 connectBlock:a5];
  v11 = [(MTRDeviceControllerOverXPC *)self initWithControllerID:v8 workQueue:v9 xpcConnection:v10];

  return v11;
}

@end
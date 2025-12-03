@interface _HKFitnessMachineConnection
+ (id)taskIdentifier;
- (BOOL)isEqual:(id)equal;
- (HKDevice)deviceForFinalWorkout;
- (NSString)description;
- (_HKFitnessMachine)fitnessMachine;
- (_HKFitnessMachineConnection)initWithHealthStore:(id)store;
- (_HKFitnessMachineConnectionDelegate)delegate;
- (id)_init;
- (id)currentSessionConfiguration;
- (unint64_t)hash;
- (void)_clientQueue_deliverFailedWithError:(id)error;
- (void)_connectionInterruptedWithError:(id)error;
- (void)_registerClient;
- (void)clientRemote_deliverConnectionChangedToState:(unint64_t)state fromState:(unint64_t)fromState fitnessMachineSessionUUID:(id)d error:(id)error;
- (void)clientRemote_deliverDetectedNFC:(id)c;
- (void)clientRemote_deliverFailedWithError:(id)error;
- (void)clientRemote_deliverMachineChangedToState:(unint64_t)state fromState:(unint64_t)fromState fitnessMachineSessionUUID:(id)d date:(id)date;
- (void)clientRemote_deliverMachineInformationUpdated:(id)updated;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)end;
- (void)endWithFitnessMachineSessionUUID:(id)d;
- (void)markClientReady;
- (void)setDelegate:(id)delegate;
@end

@implementation _HKFitnessMachineConnection

- (_HKFitnessMachineConnection)initWithHealthStore:(id)store
{
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = _HKFitnessMachineConnection;
  v5 = [(_HKFitnessMachineConnection *)&v17 init];
  if (v5)
  {
    v6 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(HKTaskServerProxyProvider *)v6 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    objc_initWeak(&location, v5);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51___HKFitnessMachineConnection_initWithHealthStore___block_invoke;
    v14[3] = &unk_1E7379140;
    objc_copyWeak(&v15, &location);
    [(HKProxyProvider *)v5->_proxyProvider setAutomaticProxyReconnectionHandler:v14];
    v5->_machineState = 0;
    v5->_connectionState = 0;
    v11 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v5->_lock;
    v5->_lock = v11;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _HKFitnessMachineConnection;
  return [(_HKFitnessMachineConnection *)&v3 init];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(_HKFitnessMachineConnection *)self _registerClient];
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)connectionInterrupted
{
  v3 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"connection interrupted"];
  [(_HKFitnessMachineConnection *)self _connectionInterruptedWithError:v3];
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Connection invalidated", &v5, 0xCu);
  }

  [(_HKFitnessMachineConnection *)self connectionInterrupted];
  v4 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  uuid = [(_HKFitnessMachineConnection *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uuid = [(_HKFitnessMachineConnection *)self uuid];
    uuid2 = [equalCopy uuid];
    v7 = [uuid isEqual:uuid2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___HKFitnessMachineConnection_description__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  [(NSLock *)lock hk_withLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)markClientReady
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46___HKFitnessMachineConnection_markClientReady__block_invoke_2;
  v2[3] = &unk_1E7376898;
  v2[4] = self;
  [(_HKFitnessMachineConnection *)self _fetchProxyWithHandler:&__block_literal_global_66 errorHandler:v2];
}

- (void)_registerClient
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "Registering Client. Fitness machine connection %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46___HKFitnessMachineConnection__registerClient__block_invoke;
  v6[3] = &unk_1E737F960;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46___HKFitnessMachineConnection__registerClient__block_invoke_2;
  v5[3] = &unk_1E7376898;
  v5[4] = self;
  [(_HKFitnessMachineConnection *)self _fetchProxyWithHandler:v6 errorHandler:v5];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)end
{
  v8 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "End fitness machine connection %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34___HKFitnessMachineConnection_end__block_invoke_2;
  v5[3] = &unk_1E7376898;
  v5[4] = self;
  [(_HKFitnessMachineConnection *)self _fetchProxyWithHandler:&__block_literal_global_19 errorHandler:v5];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)endWithFitnessMachineSessionUUID:(id)d
{
  dCopy = d;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64___HKFitnessMachineConnection_endWithFitnessMachineSessionUUID___block_invoke;
  v7[3] = &unk_1E737F960;
  v8 = dCopy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___HKFitnessMachineConnection_endWithFitnessMachineSessionUUID___block_invoke_2;
  v6[3] = &unk_1E7376898;
  v6[4] = self;
  v5 = dCopy;
  [(_HKFitnessMachineConnection *)self _fetchProxyWithHandler:v7 errorHandler:v6];
}

- (id)currentSessionConfiguration
{
  v3 = objc_alloc_init(_HKFitnessMachineSessionConfiguration);
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___HKFitnessMachineConnection_currentSessionConfiguration__block_invoke;
  v8[3] = &unk_1E7378400;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(NSLock *)lock hk_withLock:v8];
  v6 = v5;

  return v5;
}

- (HKDevice)deviceForFinalWorkout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52___HKFitnessMachineConnection_deviceForFinalWorkout__block_invoke;
  v5[3] = &unk_1E737F988;
  v5[4] = self;
  v5[5] = &v6;
  [(NSLock *)lock hk_withLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_HKFitnessMachine)fitnessMachine
{
  [(NSLock *)self->_lock lock];
  v3 = self->_fitnessMachine;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)clientRemote_deliverDetectedNFC:(id)c
{
  cCopy = c;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___HKFitnessMachineConnection_clientRemote_deliverDetectedNFC___block_invoke;
  v11[3] = &unk_1E7378400;
  v11[4] = self;
  v6 = cCopy;
  v12 = v6;
  [(NSLock *)lock hk_withLock:v11];
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___HKFitnessMachineConnection_clientRemote_deliverDetectedNFC___block_invoke_2;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(clientQueue, v9);
}

- (void)clientRemote_deliverMachineInformationUpdated:(id)updated
{
  updatedCopy = updated;
  lock = self->_lock;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77___HKFitnessMachineConnection_clientRemote_deliverMachineInformationUpdated___block_invoke;
  v11[3] = &unk_1E7378400;
  v11[4] = self;
  v6 = updatedCopy;
  v12 = v6;
  [(NSLock *)lock hk_withLock:v11];
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77___HKFitnessMachineConnection_clientRemote_deliverMachineInformationUpdated___block_invoke_2;
  v9[3] = &unk_1E7378400;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(clientQueue, v9);
}

- (void)clientRemote_deliverMachineChangedToState:(unint64_t)state fromState:(unint64_t)fromState fitnessMachineSessionUUID:(id)d date:(id)date
{
  dCopy = d;
  dateCopy = date;
  lock = self->_lock;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114___HKFitnessMachineConnection_clientRemote_deliverMachineChangedToState_fromState_fitnessMachineSessionUUID_date___block_invoke;
  v21[3] = &unk_1E7378630;
  v21[4] = self;
  v21[5] = state;
  [(NSLock *)lock hk_withLock:v21];
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114___HKFitnessMachineConnection_clientRemote_deliverMachineChangedToState_fromState_fitnessMachineSessionUUID_date___block_invoke_2;
  block[3] = &unk_1E737F9B0;
  stateCopy = state;
  fromStateCopy = fromState;
  block[4] = self;
  v17 = dCopy;
  v18 = dateCopy;
  v14 = dateCopy;
  v15 = dCopy;
  dispatch_async(clientQueue, block);
}

- (void)clientRemote_deliverConnectionChangedToState:(unint64_t)state fromState:(unint64_t)fromState fitnessMachineSessionUUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__28;
  v27[4] = __Block_byref_object_dispose__28;
  v28 = 0;
  lock = self->_lock;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke;
  v23[3] = &unk_1E737F9D8;
  v23[4] = self;
  stateCopy = state;
  v13 = dCopy;
  v24 = v13;
  v25 = v27;
  [(NSLock *)lock hk_withLock:v23];
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __118___HKFitnessMachineConnection_clientRemote_deliverConnectionChangedToState_fromState_fitnessMachineSessionUUID_error___block_invoke_31;
  v17[3] = &unk_1E737FA00;
  stateCopy2 = state;
  fromStateCopy = fromState;
  v17[4] = self;
  v18 = v13;
  v19 = errorCopy;
  v20 = v27;
  v15 = errorCopy;
  v16 = v13;
  dispatch_async(clientQueue, v17);

  _Block_object_dispose(v27, 8);
}

- (void)clientRemote_deliverFailedWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___HKFitnessMachineConnection_clientRemote_deliverFailedWithError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_clientQueue_deliverFailedWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 fitnessMachineConnection:self failedWithError:errorCopy];
    }
  }
}

- (void)_connectionInterruptedWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HKProxyProvider *)self->_proxyProvider clientQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___HKFitnessMachineConnection__connectionInterruptedWithError___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(clientQueue, v7);
}

- (_HKFitnessMachineConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
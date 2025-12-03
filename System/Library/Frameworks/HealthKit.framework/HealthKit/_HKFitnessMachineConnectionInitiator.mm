@interface _HKFitnessMachineConnectionInitiator
+ (id)taskIdentifier;
- (_HKFitnessMachineConnectionInitiator)initWithHealthStore:(id)store;
- (_HKFitnessMachineConnectionInitiatorDelegate)delegate;
- (void)_fetchProxyWithHandler:(id)handler;
- (void)_simulateTapWithFitnessMachineType:(unint64_t)type;
- (void)clientRemote_encounteredError:(id)error;
- (void)clientRemote_updatedConnectionState:(unint64_t)state fitnessMachineSessionUUID:(id)d;
- (void)clientRemote_updatedFitnessMachine:(id)machine fitnessMachineSessionUUID:(id)d;
- (void)clientRemote_updatedFitnessMachineState:(unint64_t)state fitnessMachineSessionUUID:(id)d;
- (void)clientRemote_workoutAppReady;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)forbidConnectionForFitnessMachineSessionUUID:(id)d;
- (void)permitConnectionForFitnessMachineSessionUUID:(id)d activityType:(unint64_t)type;
- (void)registerClientIfNeeded;
@end

@implementation _HKFitnessMachineConnectionInitiator

- (_HKFitnessMachineConnectionInitiator)initWithHealthStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = _HKFitnessMachineConnectionInitiator;
  v5 = [(_HKFitnessMachineConnectionInitiator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(1u, &v5->_requiresRegistration);
    v7 = [HKTaskServerProxyProvider alloc];
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v7 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v6 taskUUID:uUID];
    proxyProvider = v6->_proxyProvider;
    v6->_proxyProvider = v10;

    objc_initWeak(&location, v6);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __60___HKFitnessMachineConnectionInitiator_initWithHealthStore___block_invoke;
    v16 = &unk_1E7379140;
    objc_copyWeak(&v17, &location);
    [(HKProxyProvider *)v6->_proxyProvider setAutomaticProxyReconnectionHandler:&v13];
    [(_HKFitnessMachineConnectionInitiator *)v6 registerClientIfNeeded:v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v6;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)connectionInterrupted
{
  atomic_store(1u, &self->_requiresRegistration);
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  v3 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"connection interrupted"];
  [delegate connectionInitiator:self failedWithError:v3];
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

  [(_HKFitnessMachineConnectionInitiator *)self connectionInterrupted];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)registerClientIfNeeded
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "Register Client if needed. Fitness machine connection initiator %@", buf, 0xCu);
  }

  if (atomic_exchange(&self->_requiresRegistration, 0))
  {
    _HKInitializeLogging();
    v4 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "Registering Client. Fitness machine connection initiator %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___HKFitnessMachineConnectionInitiator_registerClientIfNeeded__block_invoke;
    v6[3] = &unk_1E7379168;
    v6[4] = self;
    [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v6];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)permitConnectionForFitnessMachineSessionUUID:(id)d activityType:(unint64_t)type
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___HKFitnessMachineConnectionInitiator_permitConnectionForFitnessMachineSessionUUID_activityType___block_invoke;
  v8[3] = &unk_1E7379190;
  v9 = dCopy;
  typeCopy = type;
  v7 = dCopy;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v8];
}

- (void)forbidConnectionForFitnessMachineSessionUUID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85___HKFitnessMachineConnectionInitiator_forbidConnectionForFitnessMachineSessionUUID___block_invoke;
  v6[3] = &unk_1E7379168;
  v7 = dCopy;
  v5 = dCopy;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v6];
}

- (void)_fetchProxyWithHandler:(id)handler
{
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___HKFitnessMachineConnectionInitiator__fetchProxyWithHandler___block_invoke;
  v4[3] = &unk_1E7376898;
  v4[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:handler errorHandler:v4];
}

- (void)clientRemote_updatedConnectionState:(unint64_t)state fitnessMachineSessionUUID:(id)d
{
  dCopy = d;
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  delegate2 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  delegate3 = delegate2;
  if (v7)
  {
    [delegate2 connectionInitiator:self updatedConnectionState:state fitnessMachineSessionUUID:dCopy];
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    delegate3 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
    [delegate3 connectionInitiator:self updatedConnectionState:state error:0 fitnessMachineSessionUUID:dCopy];
  }

LABEL_6:
}

- (void)clientRemote_updatedFitnessMachine:(id)machine fitnessMachineSessionUUID:(id)d
{
  dCopy = d;
  machineCopy = machine;
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [delegate connectionInitiator:self updatedFitnessMachine:machineCopy fitnessMachineSessionUUID:dCopy];
}

- (void)clientRemote_updatedFitnessMachineState:(unint64_t)state fitnessMachineSessionUUID:(id)d
{
  dCopy = d;
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [delegate connectionInitiator:self updatedFitnessMachineState:state fitnessMachineSessionUUID:dCopy];
}

- (void)clientRemote_workoutAppReady
{
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [delegate connectionInitiatorWorkoutAppReady:self];
}

- (void)clientRemote_encounteredError:(id)error
{
  errorCopy = error;
  delegate = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [delegate connectionInitiator:self failedWithError:errorCopy];
}

- (void)_simulateTapWithFitnessMachineType:(unint64_t)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75___HKFitnessMachineConnectionInitiator__simulateTapWithFitnessMachineType___block_invoke;
  v3[3] = &__block_descriptor_40_e62_v16__0___HKFitnessMachineConnectionInitiatorServerInterface__8l;
  v3[4] = type;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v3];
}

- (_HKFitnessMachineConnectionInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
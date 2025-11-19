@interface _HKFitnessMachineConnectionInitiator
+ (id)taskIdentifier;
- (_HKFitnessMachineConnectionInitiator)initWithHealthStore:(id)a3;
- (_HKFitnessMachineConnectionInitiatorDelegate)delegate;
- (void)_fetchProxyWithHandler:(id)a3;
- (void)_simulateTapWithFitnessMachineType:(unint64_t)a3;
- (void)clientRemote_encounteredError:(id)a3;
- (void)clientRemote_updatedConnectionState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4;
- (void)clientRemote_updatedFitnessMachine:(id)a3 fitnessMachineSessionUUID:(id)a4;
- (void)clientRemote_updatedFitnessMachineState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4;
- (void)clientRemote_workoutAppReady;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)forbidConnectionForFitnessMachineSessionUUID:(id)a3;
- (void)permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4;
- (void)registerClientIfNeeded;
@end

@implementation _HKFitnessMachineConnectionInitiator

- (_HKFitnessMachineConnectionInitiator)initWithHealthStore:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _HKFitnessMachineConnectionInitiator;
  v5 = [(_HKFitnessMachineConnectionInitiator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    atomic_store(1u, &v5->_requiresRegistration);
    v7 = [HKTaskServerProxyProvider alloc];
    v8 = [objc_opt_class() taskIdentifier];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [(HKTaskServerProxyProvider *)v7 initWithHealthStore:v4 taskIdentifier:v8 exportedObject:v6 taskUUID:v9];
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
  v4 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  v3 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"connection interrupted"];
  [v4 connectionInitiator:self failedWithError:v3];
}

- (void)connectionInvalidated
{
  v7 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
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
    v8 = self;
    _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "Register Client if needed. Fitness machine connection initiator %@", buf, 0xCu);
  }

  if (atomic_exchange(&self->_requiresRegistration, 0))
  {
    _HKInitializeLogging();
    v4 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = self;
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

- (void)permitConnectionForFitnessMachineSessionUUID:(id)a3 activityType:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98___HKFitnessMachineConnectionInitiator_permitConnectionForFitnessMachineSessionUUID_activityType___block_invoke;
  v8[3] = &unk_1E7379190;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v8];
}

- (void)forbidConnectionForFitnessMachineSessionUUID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85___HKFitnessMachineConnectionInitiator_forbidConnectionForFitnessMachineSessionUUID___block_invoke;
  v6[3] = &unk_1E7379168;
  v7 = v4;
  v5 = v4;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v6];
}

- (void)_fetchProxyWithHandler:(id)a3
{
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63___HKFitnessMachineConnectionInitiator__fetchProxyWithHandler___block_invoke;
  v4[3] = &unk_1E7376898;
  v4[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:a3 errorHandler:v4];
}

- (void)clientRemote_updatedConnectionState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4
{
  v11 = a4;
  v6 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  v9 = v8;
  if (v7)
  {
    [v8 connectionInitiator:self updatedConnectionState:a3 fitnessMachineSessionUUID:v11];
  }

  else
  {
    v10 = objc_opt_respondsToSelector();

    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

    v9 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
    [v9 connectionInitiator:self updatedConnectionState:a3 error:0 fitnessMachineSessionUUID:v11];
  }

LABEL_6:
}

- (void)clientRemote_updatedFitnessMachine:(id)a3 fitnessMachineSessionUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [v8 connectionInitiator:self updatedFitnessMachine:v7 fitnessMachineSessionUUID:v6];
}

- (void)clientRemote_updatedFitnessMachineState:(unint64_t)a3 fitnessMachineSessionUUID:(id)a4
{
  v6 = a4;
  v7 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [v7 connectionInitiator:self updatedFitnessMachineState:a3 fitnessMachineSessionUUID:v6];
}

- (void)clientRemote_workoutAppReady
{
  v3 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [v3 connectionInitiatorWorkoutAppReady:self];
}

- (void)clientRemote_encounteredError:(id)a3
{
  v4 = a3;
  v5 = [(_HKFitnessMachineConnectionInitiator *)self delegate];
  [v5 connectionInitiator:self failedWithError:v4];
}

- (void)_simulateTapWithFitnessMachineType:(unint64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75___HKFitnessMachineConnectionInitiator__simulateTapWithFitnessMachineType___block_invoke;
  v3[3] = &__block_descriptor_40_e62_v16__0___HKFitnessMachineConnectionInitiatorServerInterface__8l;
  v3[4] = a3;
  [(_HKFitnessMachineConnectionInitiator *)self _fetchProxyWithHandler:v3];
}

- (_HKFitnessMachineConnectionInitiatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
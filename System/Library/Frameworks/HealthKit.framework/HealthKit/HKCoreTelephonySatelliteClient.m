@interface HKCoreTelephonySatelliteClient
- (BOOL)isSatelliteSupportedForEmergencyDemo;
- (HKCoreTelephonySatelliteClient)init;
- (HKCoreTelephonySatelliteClient)initWithDelegate:(id)a3 queue:(id)a4;
- (HKCoreTelephonySatelliteClientDelegate)delegate;
- (void)stateChanged:(id)a3;
@end

@implementation HKCoreTelephonySatelliteClient

- (HKCoreTelephonySatelliteClient)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HKCoreTelephonySatelliteClient;
  v8 = [(HKCoreTelephonySatelliteClient *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v8->_queue, a4);
    objc_storeWeak(&v9->_delegate, v6);
    v10 = [objc_alloc(MEMORY[0x1E6965080]) initWithDelegate:v9 queue:v9->_queue];
    stewieStateMonitor = v9->_stewieStateMonitor;
    v9->_stewieStateMonitor = v10;

    [(CTStewieStateMonitor *)v9->_stewieStateMonitor start];
    v12 = [(CTStewieStateMonitor *)v9->_stewieStateMonitor getState];
    v13 = [v12 copy];
    cachedStewieState = v9->_cachedStewieState;
    v9->_cachedStewieState = v13;
  }

  return v9;
}

- (HKCoreTelephonySatelliteClient)init
{
  v3 = HKCreateSerialDispatchQueue(self, @"HKCoreTelephonySatelliteClient");
  v4 = [(HKCoreTelephonySatelliteClient *)self initWithDelegate:0 queue:v3];

  return v4;
}

- (void)stateChanged:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  cachedStewieState = self->_cachedStewieState;
  self->_cachedStewieState = v5;

  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v7 = HKLogMedicalID;
  if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v12 = 138412290;
    *&v12[4] = objc_opt_class();
    v9 = *&v12[4];
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%@][Satellite Support] Satellite support changed", v12, 0xCu);
  }

  v10 = [(HKCoreTelephonySatelliteClient *)self delegate];
  [v10 satelliteSupportChanged:self];

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSatelliteSupportedForEmergencyDemo
{
  v13 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(CTStewieState *)self->_cachedStewieState isDemoAllowedForService:1];
  os_unfair_lock_unlock(&self->_lock);
  _HKInitializeLogging();
  v4 = HKLogMedicalID;
  if (os_log_type_enabled(HKLogMedicalID, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%@][Satellite Support] Fetched satellite support as: %d", &v9, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (HKCoreTelephonySatelliteClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
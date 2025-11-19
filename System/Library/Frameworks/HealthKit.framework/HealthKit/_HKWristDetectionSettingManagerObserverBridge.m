@interface _HKWristDetectionSettingManagerObserverBridge
- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)a3;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)a3;
@end

@implementation _HKWristDetectionSettingManagerObserverBridge

- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HKWristDetectionSettingManagerObserverBridge;
  v6 = [(_HKWristDetectionSettingManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, a3);
  }

  return v7;
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Observed change in wrist detection setting, notifying observers", &v13, 0xCu);
  }

  handle = self->_handle;
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v4 isWristDetectEnabled];

  v11 = [v9 numberWithBool:v10];
  [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:v8 newValue:v11];

  v12 = *MEMORY[0x1E69E9840];
}

@end
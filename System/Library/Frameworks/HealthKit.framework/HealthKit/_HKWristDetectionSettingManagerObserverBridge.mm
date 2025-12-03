@interface _HKWristDetectionSettingManagerObserverBridge
- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)handle;
- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change;
@end

@implementation _HKWristDetectionSettingManagerObserverBridge

- (_HKWristDetectionSettingManagerObserverBridge)initWithHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = _HKWristDetectionSettingManagerObserverBridge;
  v6 = [(_HKWristDetectionSettingManagerObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_handle, handle);
  }

  return v7;
}

- (void)wristDetectionSettingManagerDidObserveWristDetectChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  changeCopy = change;
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
  null = [MEMORY[0x1E695DFB0] null];
  v9 = MEMORY[0x1E696AD98];
  isWristDetectEnabled = [changeCopy isWristDetectEnabled];

  v11 = [v9 numberWithBool:isWristDetectEnabled];
  [(HKObserverBridgeHandle *)handle notifyObserversOfChangeForKey:null newValue:v11];

  v12 = *MEMORY[0x1E69E9840];
}

@end
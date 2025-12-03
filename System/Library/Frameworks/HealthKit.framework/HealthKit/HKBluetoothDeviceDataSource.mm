@interface HKBluetoothDeviceDataSource
- (HKBluetoothDeviceDataSource)init;
- (HKBluetoothDeviceDataSource)initWithDiscoveryType:(Class)type;
- (id)_beginDiscoveryWithObserver:(id)observer;
- (id)_devicesWithError:(uint64_t)error;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (id)pairedDevicesWithError:(id *)error;
- (void)_endDiscovery;
- (void)dealloc;
- (void)registerObserverForDevicePairingChanges:(id)changes updateHandler:(id)handler;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKBluetoothDeviceDataSource

- (HKBluetoothDeviceDataSource)init
{
  v3 = objc_opt_class();

  return [(HKBluetoothDeviceDataSource *)self initWithDiscoveryType:v3];
}

- (HKBluetoothDeviceDataSource)initWithDiscoveryType:(Class)type
{
  v5.receiver = self;
  v5.super_class = HKBluetoothDeviceDataSource;
  result = [(HKObserverBridge *)&v5 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_DiscoveryType = type;
    result->_lock_isDiscoveryActive = 0;
  }

  return result;
}

- (void)dealloc
{
  [(HKBluetoothDeviceDataSource *)self _endDiscovery];
  v3.receiver = self;
  v3.super_class = HKBluetoothDeviceDataSource;
  [(HKObserverBridge *)&v3 dealloc];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device found: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) notifyObserversOfChangeForKey:@"CBDiscoveryObservation" newValue:0];
  v7 = *MEMORY[0x1E69E9840];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_12(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 identifier];
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Device lost: %{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) notifyObserversOfChangeForKey:@"CBDiscoveryObservation" newValue:0];
  v7 = *MEMORY[0x1E69E9840];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13_cold_1(a1, v3, v4);
  }
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = *(a1 + 32);
  if (*(a1 + 40) == *(v4 + 40))
  {
    *(v4 + 48) = 1;
    v4 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v4 + 32));
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16_cold_1((a1 + 32), v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    v12 = 138543618;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v10 = v8;
    _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activated CBDiscovery:%p", &v12, 0x16u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerObserverForDevicePairingChanges:(id)changes updateHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__HKBluetoothDeviceDataSource_registerObserverForDevicePairingChanges_updateHandler___block_invoke;
  v8[3] = &unk_1E737B448;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(HKObserverBridge *)self registerObserver:changes forKey:@"CBDiscoveryObservation" newValueHandler:v8];
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  keyCopy = key;
  handleCopy = handle;
  if ([keyCopy isEqualToString:@"CBDiscoveryObservation"])
  {
    selfCopy = [(HKBluetoothDeviceDataSource *)self _beginDiscoveryWithObserver:handleCopy];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogInfrastructure();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [HKBluetoothDeviceDataSource makeAndRegisterBridgedObserverForKey:handle:];
    }

    selfCopy = self;
  }

  v10 = selfCopy;

  return v10;
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"CBDiscoveryObservation"])
  {
    [(HKBluetoothDeviceDataSource *)self _endDiscovery];
  }

  else
  {
    _HKInitializeLogging();
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [HKBluetoothDeviceDataSource unregisterBridgedObserver:forKey:];
    }
  }
}

- (void)_endDiscovery
{
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    [*(self + 40) invalidate];
    v2 = *(self + 40);
    *(self + 40) = 0;

    os_unfair_lock_unlock((self + 32));
  }
}

- (id)_devicesWithError:(uint64_t)error
{
  if (error)
  {
    v4 = +[_HKBehavior sharedBehavior];
    supportsBluetoothDiscovery = [v4 supportsBluetoothDiscovery];

    if (supportsBluetoothDiscovery)
    {
      os_unfair_lock_lock((error + 32));
      if (*(error + 48))
      {
        [*(error + 40) discoveredDevices];
      }

      else
      {
        [*(error + 56) devicesWithDiscoveryFlags:0x800000 error:a2];
      }
      v6 = ;
      os_unfair_lock_unlock((error + 32));
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pairedDevicesWithError:(id *)error
{
  v3 = [(HKBluetoothDeviceDataSource *)self _devicesWithError:error];
  v4 = [v3 hk_filter:&__block_literal_global_116];

  return v4;
}

- (id)_beginDiscoveryWithObserver:(id)observer
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (observer)
  {
    os_unfair_lock_lock(observer + 8);
    if (*(observer + 5))
    {
      _HKInitializeLogging();
      v4 = HKLogInfrastructure();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v24 = objc_opt_class();
        v13 = v24;
        _os_log_fault_impl(&dword_19197B000, v4, OS_LOG_TYPE_FAULT, "[%{public}@] CBDiscovery beginning while another is currently running", buf, 0xCu);
      }

      [*(observer + 5) invalidate];
      *(observer + 48) = 0;
    }

    v5 = *(observer + 7);
    v6 = objc_alloc_init(objc_opt_class());
    v7 = objc_opt_class();
    [v6 setDiscoveryFlags:0x800000];
    [v6 setLabel:@"HKBluetoothDeviceDataSource"];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke;
    v20[3] = &unk_1E7383C38;
    v22 = v7;
    v8 = v3;
    v21 = v8;
    [v6 setDeviceFoundHandler:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_12;
    v17[3] = &unk_1E7383C38;
    v19 = v7;
    v18 = v8;
    [v6 setDeviceLostHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13;
    v16[3] = &__block_descriptor_40_e17_v16__0__NSError_8lu32l8;
    v16[4] = v7;
    [v6 setErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16;
    v14[3] = &unk_1E7380648;
    v14[4] = observer;
    v9 = v6;
    v15 = v9;
    [v9 activateWithCompletion:v14];
    objc_storeStrong(observer + 5, v6);
    os_unfair_lock_unlock(observer + 8);
    v10 = v15;
    observer = v9;
  }

  v11 = *MEMORY[0x1E69E9840];

  return observer;
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_13_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%{public}@] Error during CBDiscovery: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __59__HKBluetoothDeviceDataSource__beginDiscoveryWithObserver___block_invoke_16_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = objc_opt_class();
  v6 = OUTLINED_FUNCTION_0_11(v5);
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Error activating CBDiscovery: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)makeAndRegisterBridgedObserverForKey:handle:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_11(v0);
  OUTLINED_FUNCTION_1_13(&dword_19197B000, v2, v3, "[%{public}@] Unsupported registration key: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterBridgedObserver:forKey:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_11(v0);
  OUTLINED_FUNCTION_1_13(&dword_19197B000, v2, v3, "[%{public}@] Unsupported unregistration key: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end
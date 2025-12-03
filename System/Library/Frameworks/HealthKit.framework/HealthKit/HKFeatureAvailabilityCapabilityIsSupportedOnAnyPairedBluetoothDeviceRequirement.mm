@interface HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement
- (BOOL)capabilityIsSupportedOnPairedBluetoothDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (id)isSatisfiedWithDataSource:(id)source error:(id *)error;
- (unint64_t)hash;
- (void)registerObserver:(id)observer forDataSource:(id)source;
- (void)unregisterObserver:(id)observer fromDataSource:(id)source;
@end

@implementation HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement

- (id)isSatisfiedWithDataSource:(id)source error:(id *)error
{
  bluetoothDeviceDataSource = [source bluetoothDeviceDataSource];
  v7 = [bluetoothDeviceDataSource pairedDevicesWithError:error];

  if (v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __115__HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement_isSatisfiedWithDataSource_error___block_invoke;
    v10[3] = &unk_1E7379DA0;
    v10[4] = self;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "hk_containsObjectPassingTest:", v10)}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)registerObserver:(id)observer forDataSource:(id)source
{
  observerCopy = observer;
  sourceCopy = source;
  objc_initWeak(&location, sourceCopy);
  bluetoothDeviceDataSource = [sourceCopy bluetoothDeviceDataSource];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114__HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement_registerObserver_forDataSource___block_invoke;
  v9[3] = &unk_1E7379DC8;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [bluetoothDeviceDataSource registerObserverForDevicePairingChanges:observerCopy updateHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __114__HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement_registerObserver_forDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v10 = 0;
    v7 = [v6 isSatisfiedWithDataSource:WeakRetained error:&v10];
    v8 = v10;
    if (v7)
    {
      [v3 featureAvailabilityRequirement:*v5 didUpdateSatisfaction:{objc_msgSend(v7, "BOOLValue")}];
    }

    else
    {
      _HKInitializeLogging();
      v9 = HKLogInfrastructure();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __114__HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(v5, v8, v9);
      }
    }
  }
}

- (void)unregisterObserver:(id)observer fromDataSource:(id)source
{
  observerCopy = observer;
  bluetoothDeviceDataSource = [source bluetoothDeviceDataSource];
  [bluetoothDeviceDataSource unregisterObserverForDevicePairingChanges:observerCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)capabilityIsSupportedOnPairedBluetoothDevice:(id)device
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

void __114__HKFeatureAvailabilityCapabilityIsSupportedOnAnyPairedBluetoothDeviceRequirement_registerObserver_forDataSource___block_invoke_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v8 = 138543618;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining satisfaction in response to change in device pairing: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end
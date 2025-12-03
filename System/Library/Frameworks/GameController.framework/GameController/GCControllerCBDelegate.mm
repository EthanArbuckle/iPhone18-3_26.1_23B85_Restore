@interface GCControllerCBDelegate
- (GCControllerCBDelegate)init;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals;
- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals;
- (void)centralManagerDidUpdateState:(id)state;
- (void)fireCompletionHandler;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)startScanWithTimeout:(double)timeout;
- (void)stopScan;
@end

@implementation GCControllerCBDelegate

- (GCControllerCBDelegate)init
{
  v8.receiver = self;
  v8.super_class = GCControllerCBDelegate;
  v2 = [(GCControllerCBDelegate *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    foundPeripherals = v2->_foundPeripherals;
    v2->_foundPeripherals = v3;

    v5 = objc_opt_new();
    connectedPeripherals = v2->_connectedPeripherals;
    v2->_connectedPeripherals = v5;
  }

  return v2;
}

- (void)fireCompletionHandler
{
  v3 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerCBDelegate_fireCompletionHandler__block_invoke;
    block[3] = &unk_1E8419198;
    v6 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)stopScan
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__GCControllerCBDelegate_stopScan__block_invoke;
  block[3] = &unk_1E8418C28;
  block[4] = self;
  dispatch_async(s_cbDelegateQueue, block);
}

uint64_t __34__GCControllerCBDelegate_stopScan__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) stopScan];
  v2 = *(a1 + 32);

  return [v2 fireCompletionHandler];
}

- (void)startScanWithTimeout:(double)timeout
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
  v7 = [v5 arrayWithObject:v6];

  v8 = MEMORY[0x1E695DF20];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v10 = [v8 dictionaryWithObject:v9 forKey:*MEMORY[0x1E695D220]];

  [(CBCentralManager *)self->_centralManager scanForPeripheralsWithServices:v7 options:v10];
  v11 = [(CBCentralManager *)self->_centralManager retrieveConnectedPeripheralsWithServices:v7];
  if ([v11 count])
  {
    v12 = MEMORY[0x1E695DF20];
    v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v14 = [v12 dictionaryWithObject:v13 forKey:*MEMORY[0x1E695D228]];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          [(NSMutableArray *)self->_foundPeripherals addObject:v20];
          [(CBCentralManager *)self->_centralManager connectPeripheral:v20 options:v14];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }
  }

  if (timeout > 0.0)
  {
    v21 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerCBDelegate_startScanWithTimeout___block_invoke;
    block[3] = &unk_1E8418C28;
    block[4] = self;
    dispatch_after(v21, s_cbDelegateQueue, block);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if ([stateCopy state] == 2)
  {
    if (gc_isInternalBuild())
    {
      [GCControllerCBDelegate centralManagerDidUpdateState:];
    }

    v5 = s_cbDelegateQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke;
    v11[3] = &unk_1E8418C28;
    v11[4] = self;
    v6 = v11;
  }

  else if ([stateCopy state] == 3)
  {
    if (gc_isInternalBuild())
    {
      [GCControllerCBDelegate centralManagerDidUpdateState:];
    }

    v5 = s_cbDelegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_105;
    v10[3] = &unk_1E8418C28;
    v10[4] = self;
    v6 = v10;
  }

  else
  {
    state = [stateCopy state];
    v5 = s_cbDelegateQueue;
    if (state > 4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_3;
      v8[3] = &unk_1E8418C28;
      v8[4] = self;
      v6 = v8;
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__GCControllerCBDelegate_centralManagerDidUpdateState___block_invoke_2;
      v9[3] = &unk_1E8418C28;
      v9[4] = self;
      v6 = v9;
    }
  }

  dispatch_async(v5, v6);
}

- (void)centralManager:(id)manager didRetrievePeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didRetrievePeripherals:];
  }
}

- (void)centralManager:(id)manager didRetrieveConnectedPeripherals:(id)peripherals
{
  peripheralsCopy = peripherals;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didRetrieveConnectedPeripherals:];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  managerCopy = manager;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  [(NSMutableArray *)self->_foundPeripherals addObject:peripheralCopy];
  v14 = MEMORY[0x1E695DF20];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v16 = [v14 dictionaryWithObject:v15 forKey:*MEMORY[0x1E695D228]];

  [managerCopy connectPeripheral:peripheralCopy options:v16];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v12[4] = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didConnectPeripheral:];
  }

  [(NSMutableArray *)self->_connectedPeripherals addObject:peripheralCopy];
  [peripheralCopy setDelegate:self];
  v6 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7d74f4bd-c74a-4431-862c-cce884371592"];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  [peripheralCopy discoverServices:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v17 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:peripheralCopy didDiscoverServices:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  services = [peripheralCopy services];
  v6 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(services);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [peripheralCopy discoverIncludedServices:0 forService:v10];
        [peripheralCopy discoverCharacteristics:0 forService:v10];
      }

      v7 = [services countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverIncludedServicesForService:(id)service error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  serviceCopy = service;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:serviceCopy didDiscoverIncludedServicesForService:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  includedServices = [serviceCopy includedServices];
  v9 = [includedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(includedServices);
        }

        [peripheralCopy discoverCharacteristics:0 forService:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [includedServices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v53 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  serviceCopy = service;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:serviceCopy didDiscoverCharacteristicsForService:? error:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [serviceCopy characteristics];
  v8 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v43;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        uUID = [serviceCopy UUID];
        v14 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
        v15 = [uUID isEqual:v14];

        if (v15)
        {
          if (gc_isInternalBuild())
          {
            v16 = getGCLogger();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              uUID2 = [v12 UUID];
              data = [uUID2 data];
              uUID3 = [v12 UUID];
              *buf = 138412546;
              v47 = data;
              v48 = 2112;
              v49 = uUID3;
              v19 = v16;
              v20 = "=battery=: (%@) %@ ";
              goto LABEL_28;
            }

LABEL_29:
          }

LABEL_18:
          [peripheralCopy readValueForCharacteristic:v12];
          goto LABEL_19;
        }

        uUID4 = [serviceCopy UUID];
        v22 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
        v23 = [uUID4 isEqual:v22];

        if (v23)
        {
          if (!gc_isInternalBuild())
          {
            goto LABEL_18;
          }

          v16 = getGCLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          uUID2 = [v12 UUID];
          data = [uUID2 data];
          uUID3 = [v12 UUID];
          *buf = 138412546;
          v47 = data;
          v48 = 2112;
          v49 = uUID3;
          v19 = v16;
          v20 = "=device info=: (%@) %@ ";
LABEL_28:
          _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);

          goto LABEL_29;
        }

        uUID5 = [serviceCopy UUID];
        v25 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
        v26 = [uUID5 isEqual:v25];

        isInternalBuild = gc_isInternalBuild();
        if (v26)
        {
          if (!isInternalBuild)
          {
            goto LABEL_18;
          }

          v16 = getGCLogger();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          uUID2 = [v12 UUID];
          data = [uUID2 data];
          uUID3 = [v12 UUID];
          *buf = 138412546;
          v47 = data;
          v48 = 2112;
          v49 = uUID3;
          v19 = v16;
          v20 = "=hid=: (%@) %@ ";
          goto LABEL_28;
        }

        if (isInternalBuild)
        {
          v32 = getGCLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            uUID6 = [v12 UUID];
            data2 = [uUID6 data];
            properties = [v12 properties];
            uUID7 = [v12 UUID];
            *buf = 138412802;
            v47 = data2;
            v48 = 2048;
            v49 = properties;
            v50 = 2112;
            v51 = uUID7;
            _os_log_impl(&dword_1D2CD5000, v32, OS_LOG_TYPE_DEFAULT, "=misc=: (%@:0x%lx) %@ ", buf, 0x20u);
          }
        }

        if (gc_isInternalBuild())
        {
          v28 = getGCLogger();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            value = [v12 value];
            v30 = objc_alloc(MEMORY[0x1E696AEC0]);
            value2 = [v12 value];
            v31 = [v30 initWithData:value2 encoding:4];
            *buf = 138412546;
            v47 = value;
            v48 = 2112;
            v49 = v31;
            _os_log_impl(&dword_1D2CD5000, v28, OS_LOG_TYPE_DEFAULT, "(%@) '%@'", buf, 0x16u);
          }
        }

LABEL_19:
        [peripheralCopy discoverDescriptorsForCharacteristic:v12];
        ++v11;
      }

      while (v9 != v11);
      v35 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      v9 = v35;
    }

    while (v35);
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:characteristicCopy didDiscoverDescriptorsForCharacteristic:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  descriptors = [characteristicCopy descriptors];
  v9 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(descriptors);
        }

        [peripheralCopy readValueForDescriptor:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:characteristicCopy didUpdateValueForCharacteristic:? error:?];
  }

  uUID = [characteristicCopy UUID];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2A19"];
  v8 = [uUID isEqual:v7];

  if (v8)
  {
    value = [characteristicCopy value];
    bytes = [value bytes];
    if (gc_isInternalBuild())
    {
      [GCControllerCBDelegate peripheral:bytes didUpdateValueForCharacteristic:? error:?];
    }

    if (gc_isInternalBuild())
    {
      [GCControllerCBDelegate peripheral:didUpdateValueForCharacteristic:error:];
    }
  }

  else
  {
    if (!gc_isInternalBuild())
    {
      goto LABEL_10;
    }

    [GCControllerCBDelegate peripheral:characteristicCopy didUpdateValueForCharacteristic:&v11 error:?];
    value = v11;
  }

LABEL_10:
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:descriptorCopy didUpdateValueForDescriptor:? error:?];
  }

  uUID = [descriptorCopy UUID];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2908"];
  v8 = [uUID isEqual:v7];

  if (v8)
  {
    value = [descriptorCopy value];
    bytes = [value bytes];
    if ([value length])
    {
      v11 = 0;
      v12 = (bytes + 1);
      do
      {
        if (gc_isInternalBuild())
        {
          v13 = getGCLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *v12 - 1;
            v17 = *(v12 - 1);
            characteristic = [descriptorCopy characteristic];
            uUID2 = [characteristic UUID];
            *buf = 67109634;
            *&buf[4] = v17;
            v20 = 1024;
            v21 = v16;
            v22 = 2112;
            v23 = uUID2;
            _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "Found HID report 0x%02x of type %d on char %@", buf, 0x18u);
          }
        }

        v11 += 2;
        v12 += 2;
      }

      while ([value length] > v11);
    }

    goto LABEL_14;
  }

  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:descriptorCopy didUpdateValueForDescriptor:buf error:?];
    value = *buf;
LABEL_14:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didFailToConnectPeripheral:error:];
  }

  [(NSMutableArray *)self->_foundPeripherals removeObject:peripheralCopy];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didDisconnectPeripheral:error:];
  }

  [(NSMutableArray *)self->_connectedPeripherals removeObject:peripheralCopy];
}

- (void)centralManagerDidUpdateState:.cold.1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)centralManagerDidUpdateState:.cold.2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)centralManager:didRetrievePeripherals:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:didRetrieveConnectedPeripherals:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:didDiscoverPeripheral:advertisementData:RSSI:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:didConnectPeripheral:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didDiscoverServices:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v10 = [a1 services];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didDiscoverIncludedServicesForService:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v10 = [a1 includedServices];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didDiscoverCharacteristicsForService:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didDiscoverDescriptorsForCharacteristic:error:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v10 = [a1 UUID];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didUpdateValueForCharacteristic:(NSObject *)a2 error:.cold.2(void *a1, NSObject **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1 value];
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [a1 value];
    v8 = [v6 initWithData:v7 encoding:4];
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_5_10(&dword_1D2CD5000, v9, v10, "(%@) '%@'", v11, v12, v13, v14, v16);
  }

  *a2 = v4;
  v15 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(unsigned __int16 *)a1 didUpdateValueForCharacteristic:error:.cold.3(unsigned __int16 *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v10 = __rev16(*a1);
    OUTLINED_FUNCTION_10();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:didUpdateValueForCharacteristic:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didUpdateValueForDescriptor:error:.cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [a1 UUID];
    v5 = [v4 data];
    v6 = [a1 UUID];
    OUTLINED_FUNCTION_1_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(void *)a1 didUpdateValueForDescriptor:(NSObject *)a2 error:.cold.2(void *a1, NSObject **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1 characteristic];
    v6 = [v5 UUID];
    v14 = [a1 value];
    OUTLINED_FUNCTION_5_10(&dword_1D2CD5000, v7, v8, "on (%@): %@", v9, v10, v11, v12, 2u);
  }

  *a2 = v4;
  v13 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:didFailToConnectPeripheral:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:didDisconnectPeripheral:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
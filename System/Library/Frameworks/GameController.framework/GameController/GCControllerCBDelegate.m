@interface GCControllerCBDelegate
- (GCControllerCBDelegate)init;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didRetrieveConnectedPeripherals:(id)a4;
- (void)centralManager:(id)a3 didRetrievePeripherals:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)fireCompletionHandler;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)startScanWithTimeout:(double)a3;
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

- (void)startScanWithTimeout:(double)a3
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

  if (a3 > 0.0)
  {
    v21 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__GCControllerCBDelegate_startScanWithTimeout___block_invoke;
    block[3] = &unk_1E8418C28;
    block[4] = self;
    dispatch_after(v21, s_cbDelegateQueue, block);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2)
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

  else if ([v4 state] == 3)
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
    v7 = [v4 state];
    v5 = s_cbDelegateQueue;
    if (v7 > 4)
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

- (void)centralManager:(id)a3 didRetrievePeripherals:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didRetrievePeripherals:];
  }
}

- (void)centralManager:(id)a3 didRetrieveConnectedPeripherals:(id)a4
{
  v4 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didRetrieveConnectedPeripherals:];
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  [(NSMutableArray *)self->_foundPeripherals addObject:v10];
  v14 = MEMORY[0x1E695DF20];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v16 = [v14 dictionaryWithObject:v15 forKey:*MEMORY[0x1E695D228]];

  [v13 connectPeripheral:v10 options:v16];
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didConnectPeripheral:];
  }

  [(NSMutableArray *)self->_connectedPeripherals addObject:v5];
  [v5 setDelegate:self];
  v6 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
  v12[2] = v8;
  v9 = [MEMORY[0x1E695D2A0] UUIDWithString:@"7d74f4bd-c74a-4431-862c-cce884371592"];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  [v5 discoverServices:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v4 didDiscoverServices:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 services];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v4 discoverIncludedServices:0 forService:v10];
        [v4 discoverCharacteristics:0 forService:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)a3 didDiscoverIncludedServicesForService:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v7 didDiscoverIncludedServicesForService:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 includedServices];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [v6 discoverCharacteristics:0 forService:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v7 didDiscoverCharacteristicsForService:? error:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [v7 characteristics];
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
        v13 = [v7 UUID];
        v14 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180F"];
        v15 = [v13 isEqual:v14];

        if (v15)
        {
          if (gc_isInternalBuild())
          {
            v16 = getGCLogger();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v12 UUID];
              v17 = [v38 data];
              v18 = [v12 UUID];
              *buf = 138412546;
              v47 = v17;
              v48 = 2112;
              v49 = v18;
              v19 = v16;
              v20 = "=battery=: (%@) %@ ";
              goto LABEL_28;
            }

LABEL_29:
          }

LABEL_18:
          [v6 readValueForCharacteristic:v12];
          goto LABEL_19;
        }

        v21 = [v7 UUID];
        v22 = [MEMORY[0x1E695D2A0] UUIDWithString:@"180A"];
        v23 = [v21 isEqual:v22];

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

          v38 = [v12 UUID];
          v17 = [v38 data];
          v18 = [v12 UUID];
          *buf = 138412546;
          v47 = v17;
          v48 = 2112;
          v49 = v18;
          v19 = v16;
          v20 = "=device info=: (%@) %@ ";
LABEL_28:
          _os_log_impl(&dword_1D2CD5000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x16u);

          goto LABEL_29;
        }

        v24 = [v7 UUID];
        v25 = [MEMORY[0x1E695D2A0] UUIDWithString:@"1812"];
        v26 = [v24 isEqual:v25];

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

          v38 = [v12 UUID];
          v17 = [v38 data];
          v18 = [v12 UUID];
          *buf = 138412546;
          v47 = v17;
          v48 = 2112;
          v49 = v18;
          v19 = v16;
          v20 = "=hid=: (%@) %@ ";
          goto LABEL_28;
        }

        if (isInternalBuild)
        {
          v32 = getGCLogger();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v12 UUID];
            v33 = [v40 data];
            v37 = [v12 properties];
            v34 = [v12 UUID];
            *buf = 138412802;
            v47 = v33;
            v48 = 2048;
            v49 = v37;
            v50 = 2112;
            v51 = v34;
            _os_log_impl(&dword_1D2CD5000, v32, OS_LOG_TYPE_DEFAULT, "=misc=: (%@:0x%lx) %@ ", buf, 0x20u);
          }
        }

        if (gc_isInternalBuild())
        {
          v28 = getGCLogger();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v12 value];
            v30 = objc_alloc(MEMORY[0x1E696AEC0]);
            v39 = [v12 value];
            v31 = [v30 initWithData:v39 encoding:4];
            *buf = 138412546;
            v47 = v29;
            v48 = 2112;
            v49 = v31;
            _os_log_impl(&dword_1D2CD5000, v28, OS_LOG_TYPE_DEFAULT, "(%@) '%@'", buf, 0x16u);
          }
        }

LABEL_19:
        [v6 discoverDescriptorsForCharacteristic:v12];
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

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v7 didDiscoverDescriptorsForCharacteristic:? error:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 descriptors];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [v6 readValueForDescriptor:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v5 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v5 didUpdateValueForCharacteristic:? error:?];
  }

  v6 = [v5 UUID];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2A19"];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v5 value];
    v10 = [v9 bytes];
    if (gc_isInternalBuild())
    {
      [GCControllerCBDelegate peripheral:v10 didUpdateValueForCharacteristic:? error:?];
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

    [GCControllerCBDelegate peripheral:v5 didUpdateValueForCharacteristic:&v11 error:?];
    v9 = v11;
  }

LABEL_10:
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v5 didUpdateValueForDescriptor:? error:?];
  }

  v6 = [v5 UUID];
  v7 = [MEMORY[0x1E695D2A0] UUIDWithString:@"2908"];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v5 value];
    v10 = [v9 bytes];
    if ([v9 length])
    {
      v11 = 0;
      v12 = (v10 + 1);
      do
      {
        if (gc_isInternalBuild())
        {
          v13 = getGCLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *v12 - 1;
            v17 = *(v12 - 1);
            v18 = [v5 characteristic];
            v14 = [v18 UUID];
            *buf = 67109634;
            *&buf[4] = v17;
            v20 = 1024;
            v21 = v16;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&dword_1D2CD5000, v13, OS_LOG_TYPE_DEFAULT, "Found HID report 0x%02x of type %d on char %@", buf, 0x18u);
          }
        }

        v11 += 2;
        v12 += 2;
      }

      while ([v9 length] > v11);
    }

    goto LABEL_14;
  }

  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate peripheral:v5 didUpdateValueForDescriptor:buf error:?];
    v9 = *buf;
LABEL_14:
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didFailToConnectPeripheral:error:];
  }

  [(NSMutableArray *)self->_foundPeripherals removeObject:v7];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (gc_isInternalBuild())
  {
    [GCControllerCBDelegate centralManager:didDisconnectPeripheral:error:];
  }

  [(NSMutableArray *)self->_connectedPeripherals removeObject:v7];
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
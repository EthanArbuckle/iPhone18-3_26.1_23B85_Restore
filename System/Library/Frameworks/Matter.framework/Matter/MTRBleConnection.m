@interface MTRBleConnection
- (BOOL)checkDiscriminator:(unsigned __int16)a3;
- (MTRBleConnection)init;
- (MTRBleConnection)initWithDelegate:(BleScannerDelegate *)a3 prewarm:(BOOL)a4;
- (MTRBleConnection)initWithDiscriminators:(const void *)a3;
- (NSString)description;
- (id).cxx_construct;
- (void)addPeripheralToCache:(id)a3 data:(id)a4;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)clearTimer;
- (void)connect:(id)a3 withLongDiscriminator:(id)a4;
- (void)detachScannerDelegate;
- (void)dispatchConnectionComplete:(id)a3;
- (void)dispatchConnectionError:(ChipError)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)removePeripheralFromCache:(id)a3;
- (void)removePeripheralsFromCache;
- (void)setDesiredDiscriminators:()vector<chip:(std::allocator<chip::SetupDiscriminator>> *)a3 :SetupDiscriminator;
- (void)setupTimer:(unint64_t)a3;
- (void)start;
- (void)startScanning;
- (void)stop;
- (void)stopScanning;
- (void)updateWithDelegate:(BleScannerDelegate *)a3 prewarm:(BOOL)a4;
- (void)updateWithDiscriminators:(const void *)a3;
- (void)updateWithPeripheral:(id)a3;
@end

@implementation MTRBleConnection

- (MTRBleConnection)init
{
  v11.receiver = self;
  v11.super_class = MTRBleConnection;
  v2 = [(MTRBleConnection *)&v11 init];
  if (v2)
  {
    v3 = sub_23948A818(&unk_2395C1E00);
    chipServiceUUID = v2->_chipServiceUUID;
    v2->_chipServiceUUID = v3;

    if (qword_27DF7BD08 != -1)
    {
      sub_23953343C(v5);
    }

    objc_storeStrong(&v2->_workQueue, qword_27DF7BCD0);
    v6 = objc_alloc(MEMORY[0x277CBDFF8]);
    centralManager = v2->_centralManager;
    v2->_centralManager = v6;

    v2->_found = 0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedPeripherals = v2->_cachedPeripherals;
    v2->_cachedPeripherals = v8;

    [(MTRBleConnection *)v2 _resetCounters];
  }

  return v2;
}

- (MTRBleConnection)initWithDelegate:(BleScannerDelegate *)a3 prewarm:(BOOL)a4
{
  v4 = a4;
  v6 = [(MTRBleConnection *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_scannerDelegate = a3;
    if (v4)
    {
      v6->_currentMode = 2;
      [(MTRBleConnection *)v6 setupTimer:120];
    }

    else
    {
      v6->_currentMode = 1;
    }
  }

  return v7;
}

- (MTRBleConnection)initWithDiscriminators:(const void *)a3
{
  v4 = [(MTRBleConnection *)self init];
  if (v4)
  {
    sub_23948A0F8(&v7, *a3, *a3 + 4 * *(a3 + 1));
    begin = v4->_desiredDiscriminators.__begin_;
    if (begin)
    {
      v4->_desiredDiscriminators.__end_ = begin;
      operator delete(begin);
      v4->_desiredDiscriminators.__begin_ = 0;
      v4->_desiredDiscriminators.__end_ = 0;
      v4->_desiredDiscriminators.__cap_ = 0;
    }

    *&v4->_desiredDiscriminators.__begin_ = v7;
    v4->_desiredDiscriminators.__cap_ = v8;
    v4->_currentMode = 3;
    [(MTRBleConnection *)v4 setupTimer:60];
  }

  return v4;
}

- (void)setupTimer:(unint64_t)a3
{
  [(MTRBleConnection *)self clearTimer];
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workQueue);
  timer = self->_timer;
  self->_timer = v5;

  v7 = self->_timer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_239486F3C;
  handler[3] = &unk_278A72320;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  v8 = 1000000000 * a3;
  v9 = self->_timer;
  v10 = dispatch_walltime(0, v8);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  dispatch_resume(self->_timer);
}

- (void)clearTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)dispatchConnectionError:(ChipError)a3
{
  mFile = a3.mFile;
  v4 = *&a3.mError;
  onConnectionError = self->_onConnectionError;
  appState = self->_appState;
  [(MTRBleConnection *)self clearConnectionCallbacks];
  if (onConnectionError)
  {

    onConnectionError(appState, v4, mFile);
  }
}

- (void)dispatchConnectionComplete:(id)a3
{
  v9 = a3;
  onConnectionComplete = self->_onConnectionComplete;
  onConnectionCompleteWithDiscriminator = self->_onConnectionCompleteWithDiscriminator;
  v6 = self->_matchedLongDiscriminator;
  appState = self->_appState;
  [(MTRBleConnection *)self clearConnectionCallbacks];
  if (onConnectionCompleteWithDiscriminator)
  {
    if (!v6)
    {
      v8 = sub_2393D9044(2u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "We should only have a peripheral without a discriminator if the NewConnection entrypoint took a BLE_CONNECTION_OBJECT, and in that case we would not be using onConnectionCompleteWithDiscriminator.", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(2u, 1);
      }

      abort();
    }

    onConnectionCompleteWithDiscriminator(appState, [(NSNumber *)v6 unsignedShortValue], v9);
  }

  else if (onConnectionComplete)
  {
    onConnectionComplete(appState, v9);
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 371);
  v12 = 2;
  v13 = "dwnpm_ble_cbmgr_state";
  v14 = [v4 state];
  v15 = 2;
  sub_23948BD20(&v12);
  v5 = [v4 state];
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v9 = sub_2393D9044(2u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "CBManagerState: Unauthorized", &v12, 2u);
        }

        if (sub_2393D5398(3u))
        {
          goto LABEL_28;
        }

        break;
      case 4:
        v11 = sub_2393D9044(2u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "CBManagerState: OFF", &v12, 2u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(2u, 3);
        }

        [(MTRBleConnection *)self stop];
        [(MTRBleConnection *)self dispatchConnectionError:0x17E0000040DLL, "src/platform/Darwin/BleConnectionDelegateImpl.mm"];
        break;
      case 5:
        v7 = sub_2393D9044(2u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "CBManagerState: ON", &v12, 2u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(2u, 3);
        }

        [(MTRBleConnection *)self start];
        break;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v10 = sub_2393D9044(2u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "CBManagerState: RESETTING", &v12, 2u);
      }

      if (sub_2393D5398(3u))
      {
        goto LABEL_28;
      }
    }

    else if (v5 == 2)
    {
      v6 = sub_2393D9044(2u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "CBManagerState: UNSUPPORTED", &v12, 2u);
      }

      if (sub_2393D5398(3u))
      {
LABEL_28:
        sub_2393D5320(2u, 3);
      }
    }
  }

  else
  {
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "CBManagerState: UNKNOWN", &v12, 2u);
    }

    if (sub_2393D5398(3u))
    {
      goto LABEL_28;
    }
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v10 = a4;
  v11 = a5;
  v38 = a6;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 404);
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  v13 = [v12 objectForKeyedSubscript:self->_chipServiceUUID];

  if (v13)
  {
    v14 = [v11 objectForKey:*MEMORY[0x277CBDCF0]];
    *buf = 1;
    *&v40[4] = "dwnpm_ble_discovered_peripheral";
    *&v40[12] = [v14 BOOLValue];
    v40[16] = 1;
    sub_23948BD20(buf);
    if ([v14 BOOLValue])
    {
      v15 = v13;
      v16 = [v13 bytes];
      if ([v13 length] == 8)
      {
        v17 = *v16;
        if (v17 < 2)
        {
          v28 = v16[1];
          v29 = v16[2];
          if ([(MTRBleConnection *)self isConnecting])
          {
            v30 = v28 & 0xFFFFF0FF | ((v29 & 0xF) << 8);
            if ([(MTRBleConnection *)self checkDiscriminator:v30])
            {
              *buf = 0;
              *&v40[4] = "dwnpm_ble_discovered_matching_peripheral";
              v40[16] = 0;
              sub_23948BD20(buf);
              v31 = sub_2393D9044(2u);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                *v40 = v10;
                *&v40[8] = 1024;
                *&v40[10] = v30;
                _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_DEFAULT, "Connecting to device %p with discriminator: %d", buf, 0x12u);
              }

              if (sub_2393D5398(2u))
              {
                v35 = v10;
                v36 = v30;
                sub_2393D5320(2u, 2);
              }

              v32 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{v30, v35, v36, v37, v38}];
              [(MTRBleConnection *)self connect:v10 withLongDiscriminator:v32];

              [(MTRBleConnection *)self stopScanning];
            }

            else
            {
              v33 = sub_2393D9044(2u);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v40 = v10;
                *&v40[8] = 1024;
                *&v40[10] = v30;
                _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "A device (%p) with a matching Matter UUID has been discovered but the service data discriminator not match our expectation (discriminator = %u).", buf, 0x12u);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393D5320(2u, 1);
              }

              *buf = 2;
              *&v40[4] = "dwnpm_ble_mismatched_discriminator";
              v40[16] = 0;
              sub_23948BD20(buf);
            }
          }

          else
          {
            [(MTRBleConnection *)self addPeripheralToCache:v10 data:v13];
          }
        }

        else
        {
          v18 = sub_2393D9044(2u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v40 = v10;
            *&v40[8] = 1024;
            *&v40[10] = v17;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "A device (%p) with a matching Matter UUID has been discovered but the service data opCode not match our expectation (opCode = %u).", buf, 0x12u);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393D5320(2u, 1);
          }

          *buf = 2;
          *&v40[4] = "dwnpm_ble_bad_opcode";
          *&v40[12] = v17;
          v40[16] = 2;
          sub_23948BD20(buf);
        }
      }

      else
      {
        v20 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(v13, "length")}];
        for (i = 0; i < [v13 length]; ++i)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02lx", v16[i]];
          [v20 appendString:v22];
        }

        v23 = sub_2393D9044(2u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = v20;
          v25 = [v20 UTF8String];
          *buf = 134218242;
          *v40 = v10;
          *&v40[8] = 2080;
          *&v40[10] = v25;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "A device (%p) with a matching Matter UUID has been discovered but the service data len does not match our expectation (serviceData = %s)", buf, 0x16u);
        }

        if (sub_2393D5398(1u))
        {
          v26 = v20;
          v35 = v10;
          v36 = [v20 UTF8String];
          sub_2393D5320(2u, 1);
        }

        v27 = [v13 length];
        *buf = 2;
        *&v40[4] = "dwnpm_ble_bad_service_data";
        *&v40[12] = v27;
        v40[16] = 2;
        sub_23948BD20(buf);
      }
    }

    else
    {
      v19 = sub_2393D9044(2u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v40 = v10;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "A device (%p) with a matching Matter UUID has been discovered but it is not connectable.", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(2u, 1);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)checkDiscriminator:(unsigned __int16)a3
{
  begin = self->_desiredDiscriminators.__begin_;
  end = self->_desiredDiscriminators.__end_;
  if (begin != end)
  {
    while (1)
    {
      v5 = begin->mIsShortDiscriminator ? HIBYTE(a3) : a3;
      if (begin->mDiscriminator == v5)
      {
        break;
      }

      if (++begin == end)
      {
        begin = self->_desiredDiscriminators.__end_;
        return begin != end;
      }
    }
  }

  return begin != end;
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 476);
  v6 = 1;
  v7 = "dwnpm_ble_connect_peripheral";
  v8 = 0;
  sub_23948BD20(&v6);
  v6 = 0;
  v7 = "dwnpm_ble_discovered_svs";
  v8 = 0;
  sub_23948BD20(&v6);
  [v5 setDelegate:self];
  [v5 discoverServices:0];
  [(MTRBleConnection *)self stopScanning];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 491);
  if (v7)
  {
    v8 = sub_2393D9044(2u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v28 = v7;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to discover services: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v21 = v7;
      sub_2393D5320(2u, 1);
    }
  }

  v9 = [v7 code];
  *buf = 1;
  *&v28[4] = "dwnpm_ble_discovered_svs";
  v29 = v9 & 0xFFFFFF | 0x1000000;
  v30 = 3;
  sub_23948BD20(buf);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v6 services];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 UUID];
        if ([v15 isEqual:self->_chipServiceUUID])
        {
          v16 = [(MTRBleConnection *)self found];

          if (!v16)
          {
            *buf = 0;
            *&v28[4] = "dwnpm_ble_discovered_chrs";
            v30 = 0;
            sub_23948BD20(buf);
            [v6 discoverCharacteristics:0 forService:v14];
            [(MTRBleConnection *)self setFound:1];
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

LABEL_17:

  v17 = [(MTRBleConnection *)self found];
  if (v7)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  if (!v18)
  {
    v19 = sub_2393D9044(2u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Matter Service not found on the device", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    *buf = 2;
    *&v28[4] = "dwnpm_ble_discovered_svs";
    v29 = 3;
    v30 = 3;
    sub_23948BD20(buf);
    [(MTRBleConnection *)self dispatchConnectionError:0x1FF00000003, "src/platform/Darwin/BleConnectionDelegateImpl.mm"];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 517);
  *buf = 1;
  *&v13[4] = "dwnpm_ble_discovered_chrs";
  v14 = [v8 code] & 0xFFFFFF | 0x1000000;
  v15 = 3;
  sub_23948BD20(buf);
  if (v8)
  {
    v9 = sub_2393D9044(2u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v13 = v8;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Failed to discover characteristics: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v11 = v8;
      sub_2393D5320(2u, 1);
    }
  }

  [(MTRBleConnection *)self dispatchConnectionComplete:v7, v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 532);
  if (v10)
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to write characteristic: %@", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    LODWORD(buf) = 2;
    *(&buf + 1) = "dwnpm_ble_write_chr_val_failed";
    v19 = 1031;
    v20 = 3;
    sub_23948BD20(&buf);
    sub_2393CE200(self->_bleLayer, v8, 0x21D00000407, "src/platform/Darwin/BleConnectionDelegateImpl.mm");
  }

  else
  {
    v12 = [v9 service];
    v13 = [v12 UUID];
    *&buf = sub_23948A894(v13);
    *(&buf + 1) = v14;

    v15 = [v9 UUID];
    v21[0] = sub_23948A894(v15);
    v21[1] = v16;

    sub_2393CD74C(self->_bleLayer, v8, &buf, v21);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v27[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 549);
  v11 = [v9 isNotifying];
  if (v10)
  {
    v12 = sub_2393D9044(2u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 localizedDescription];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = [v13 UTF8String];
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "BLE:Error subscribing/unsubcribing some characteristic on the device: [%s]", &buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = [v10 localizedDescription];
      v15 = v14;
      [v14 UTF8String];
      sub_2393D5320(2u, 1);
    }

    LODWORD(buf) = 2;
    *(&buf + 1) = "dwnpm_ble_chr_nfy_state_failed";
    if (v11)
    {
      v25 = 1031;
      v26 = 3;
      sub_23948BD20(&buf);
      v16 = 0x23800000406;
    }

    else
    {
      v25 = 1029;
      v26 = 3;
      sub_23948BD20(&buf);
      v16 = 0x23C00000405;
    }

    sub_2393CE200(self->_bleLayer, v8, v16, "src/platform/Darwin/BleConnectionDelegateImpl.mm");
  }

  else
  {
    v17 = [v9 service];
    v18 = [v17 UUID];
    *&buf = sub_23948A894(v18);
    *(&buf + 1) = v19;

    v20 = [v9 UUID];
    v27[0] = sub_23948A894(v20);
    v27[1] = v21;

    bleLayer = self->_bleLayer;
    if (v11)
    {
      sub_2393CDCC4(bleLayer, v8, &buf, v27);
    }

    else
    {
      sub_2393CE048(bleLayer, v8, &buf, v27);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v27[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  sub_23947632C("src/platform/Darwin/BleConnectionDelegateImpl.mm", 581);
  if (v10)
  {
    v11 = sub_2393D9044(2u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v23 = v10;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to receive characteristic indication: %@", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(2u, 1);
    }

    *buf = 2;
    *&v23[4] = "dwnpm_ble_upd_chr_val_failed";
    v24 = 1032;
    v25 = 3;
    sub_23948BD20(buf);
    sub_2393CE200(self->_bleLayer, v8, 0x25C00000408, "src/platform/Darwin/BleConnectionDelegateImpl.mm");
  }

  else
  {
    v12 = [v9 service];
    v13 = [v12 UUID];
    v27[0] = sub_23948A894(v13);
    v27[1] = v14;

    v15 = [v9 UUID];
    v26[0] = sub_23948A894(v15);
    v26[1] = v16;

    v17 = [v9 value];
    sub_2393D9E54([v17 bytes], objc_msgSend(v17, "length"), 0, 0x26u, &v21);
    if (v21)
    {
      if (!sub_2393CD478(self->_bleLayer, v8, v27, v26, &v21))
      {
        v18 = sub_2393D9044(2u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Failed to handle incoming BLE data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(2u, 1);
        }

        *buf = 2;
        *&v23[4] = "dwnpm_ble_upd_chr_val_failed";
        v24 = 3;
        v25 = 3;
        sub_23948BD20(buf);
      }
    }

    else
    {
      v19 = sub_2393D9044(2u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to allocate buffer for incoming BLE data", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(2u, 1);
      }

      *buf = 2;
      *&v23[4] = "dwnpm_ble_upd_chr_val_failed";
      v24 = 11;
      v25 = 3;
      sub_23948BD20(buf);
      sub_2393CE200(self->_bleLayer, v8, 0x2520000000BLL, "src/platform/Darwin/BleConnectionDelegateImpl.mm");
    }

    if (v21)
    {
      sub_2393D96C8(v21);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  if (self->_peripheral)
  {
    v3 = 0;
    v4 = "dwnpm_ble_discovered_matching_peripheral";
    v5 = 0;
    sub_23948BD20(&v3);
    [(MTRBleConnection *)self connect:self->_peripheral withLongDiscriminator:self->_matchedLongDiscriminator];
  }

  else
  {

    MEMORY[0x2821F9670](self, sel_startScanning);
  }
}

- (void)stop
{
  [(MTRBleConnection *)self detachScannerDelegate];
  self->_found = 0;
  [(MTRBleConnection *)self stopScanning];
  [(MTRBleConnection *)self removePeripheralsFromCache];
  if (self->_peripheral)
  {
    bleLayer = self->_bleLayer;
    sub_2393CC984();
    peripheral = self->_peripheral;
    self->_peripheral = 0;
  }

  centralManager = self->_centralManager;
  if (centralManager)
  {
    [(CBCentralManager *)centralManager setDelegate:0];
    v6 = self->_centralManager;
    self->_centralManager = 0;
  }

  v7 = qword_27DF7C078;
  if (qword_27DF7C078 == self)
  {
    qword_27DF7C078 = 0;
  }
}

- (void)startScanning
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_centralManager)
  {
    v7 = 0;
    v8 = "dwnpm_ble_scan";
    v9 = 0;
    sub_23948BD20(&v7);
    v7 = 0;
    v8 = "dwnpm_ble_discovered_peripheral";
    v9 = 0;
    sub_23948BD20(&v7);
    v7 = 0;
    v8 = "dwnpm_ble_discovered_matching_peripheral";
    v9 = 0;
    sub_23948BD20(&v7);
    [(MTRBleConnection *)self _resetCounters];
    v11 = *MEMORY[0x277CBDDB0];
    v12[0] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    centralManager = self->_centralManager;
    chipServiceUUID = self->_chipServiceUUID;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&chipServiceUUID count:1];
    [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v5 options:v3];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)stopScanning
{
  if (self->_centralManager)
  {
    v3 = 1;
    v4 = "dwnpm_ble_scan";
    v5 = 0;
    sub_23948BD20(&v3);
    [(MTRBleConnection *)self _resetCounters];
    [(MTRBleConnection *)self clearTimer];
    [(CBCentralManager *)self->_centralManager stopScan];
  }
}

- (void)connect:(id)a3 withLongDiscriminator:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7 && self->_centralManager)
  {
    v9 = 1;
    v10 = "dwnpm_ble_discovered_matching_peripheral";
    v11 = 0;
    sub_23948BD20(&v9);
    v9 = 0;
    v10 = "dwnpm_ble_connect_peripheral";
    v11 = 0;
    sub_23948BD20(&v9);
    objc_storeStrong(&self->_peripheral, a3);
    objc_storeStrong(&self->_matchedLongDiscriminator, a4);
    [(CBCentralManager *)self->_centralManager connectPeripheral:v7 options:0];
  }
}

- (void)detachScannerDelegate
{
  scannerDelegate = self->_scannerDelegate;
  if (scannerDelegate)
  {
    self->_scannerDelegate = 0;
    (*(scannerDelegate->var0 + 4))();
  }
}

- (void)updateWithDelegate:(BleScannerDelegate *)a3 prewarm:(BOOL)a4
{
  v15 = a4;
  v22 = *MEMORY[0x277D85DE8];
  [(MTRBleConnection *)self detachScannerDelegate];
  if (a3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_cachedPeripherals;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKeyedSubscript:v10];
          v12 = [v11 objectForKeyedSubscript:@"data"];

          v13 = v12;
          v16 = *[v12 bytes];
          (*(a3->var0 + 2))(a3, v10, &v16);
        }

        v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    self->_scannerDelegate = a3;
  }

  if (v15)
  {
    self->_currentMode = 2;
    [(MTRBleConnection *)self setupTimer:120];
  }

  else
  {
    self->_currentMode = 1;
    [(MTRBleConnection *)self clearTimer];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateWithDiscriminators:(const void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  [(MTRBleConnection *)self detachScannerDelegate];
  sub_23948A0F8(buf, *a3, *a3 + 4 * *(a3 + 1));
  begin = self->_desiredDiscriminators.__begin_;
  if (begin)
  {
    self->_desiredDiscriminators.__end_ = begin;
    operator delete(begin);
    self->_desiredDiscriminators.__begin_ = 0;
    self->_desiredDiscriminators.__end_ = 0;
    self->_desiredDiscriminators.__cap_ = 0;
  }

  *&self->_desiredDiscriminators.__begin_ = *buf;
  self->_desiredDiscriminators.__cap_ = v25;
  self->_currentMode = 3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_cachedPeripherals;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKeyedSubscript:v10];
        v12 = [v11 objectForKeyedSubscript:@"data"];

        v13 = v12;
        v14 = (*[v12 bytes] >> 8) & 0xFFF;
        if ([(MTRBleConnection *)self checkDiscriminator:v14])
        {
          v15 = v10;
          v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14];

          goto LABEL_13;
        }
      }

      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  [(MTRBleConnection *)self removePeripheralsFromCache];
  if (v15)
  {
    *buf = 0;
    *&buf[8] = "dwnpm_ble_discovered_matching_peripheral";
    BYTE4(v25) = 0;
    sub_23948BD20(buf);
    v16 = sub_2393D9044(2u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Connecting to cached device: %p", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v18 = v15;
      sub_2393D5320(2u, 2);
    }

    [(MTRBleConnection *)self connect:v15 withLongDiscriminator:v7, v18];
  }

  else
  {
    [(MTRBleConnection *)self setupTimer:60];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updateWithPeripheral:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MTRBleConnection *)self detachScannerDelegate];
  self->_currentMode = 3;
  *buf = 0;
  *&v9[4] = "dwnpm_ble_discovered_matching_peripheral";
  v10 = 0;
  sub_23948BD20(buf);
  v5 = sub_2393D9044(2u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *v9 = v4;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Connecting to device: %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = v4;
    sub_2393D5320(2u, 2);
  }

  [(MTRBleConnection *)self connect:v4 withLongDiscriminator:0, v7];
  [(MTRBleConnection *)self stopScanning];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addPeripheralToCache:(id)a3 data:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKey:v6];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKeyedSubscript:v6];
    v10 = [v9 objectForKeyedSubscript:@"data"];
    v11 = [v7 isEqualToData:v10];

    if ((v11 & 1) == 0)
    {
      v12 = sub_2393D9044(2u);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "Updating peripheral %p from the cache", &buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        v29 = v6;
        sub_2393D5320(2u, 2);
      }
    }

    v13 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKeyedSubscript:v6, v29];
    v14 = [v13 objectForKeyedSubscript:@"timer"];

    v15 = v11 ^ 1;
  }

  else
  {
    v16 = sub_2393D9044(2u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Adding peripheral %p to the cache", &buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v29 = v6;
      sub_2393D5320(2u, 2);
    }

    scannerDelegate = self->_scannerDelegate;
    if (scannerDelegate)
    {
      v18 = v7;
      *&buf = *[v7 bytes];
      (*(scannerDelegate->var0 + 2))(scannerDelegate, v6, &buf);
    }

    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workQueue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_239489998;
    handler[3] = &unk_278A72298;
    handler[4] = self;
    v31 = v6;
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(v14);

    v15 = 1;
  }

  v19 = dispatch_walltime(0, 9000000000);
  dispatch_source_set_timer(v14, v19, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  v20 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKeyedSubscript:v6];
  v21 = v20 == 0;

  if (v21)
  {
    v22 = self->_totalDevicesAdded + 1;
    self->_totalDevicesAdded = v22;
    LODWORD(buf) = 2;
    *(&buf + 1) = "dwnpm_ble_peripheral_added";
    v35 = v22;
    v36 = 1;
    sub_23948BD20(&buf);
  }

  v32[0] = @"data";
  v32[1] = @"timer";
  v33[0] = v7;
  v33[1] = v14;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:{2, v29}];
  [(NSMutableDictionary *)self->_cachedPeripherals setObject:v23 forKeyedSubscript:v6];

  if (v15)
  {
    v24 = v7;
    v25 = *[v7 bytes];
    v26 = sub_2393D9044(2u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = (v25 >> 20) & 0xF;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "  - Version: %u", &buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(2u, 2);
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = (v25 >> 8) & 0xFFF;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "  - Discriminator: %u", &buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(2u, 2);
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = (v25 >> 24);
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "  - VendorId: %u", &buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(2u, 2);
    }

    v27 = v25 >> 40;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v27;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_DEFAULT, "  - ProductId: %u", &buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(2u, 2);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)removePeripheralFromCache:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_cachedPeripherals objectForKey:v4];
  if (v5)
  {
    v6 = sub_2393D9044(2u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v4;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Removing peripheral %p from the cache", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      v10 = v4;
      sub_2393D5320(2u, 2);
    }

    v7 = [v5 objectForKeyedSubscript:{@"timer", v10}];
    dispatch_source_cancel(v7);

    [(NSMutableDictionary *)self->_cachedPeripherals removeObjectForKey:v4];
    scannerDelegate = self->_scannerDelegate;
    if (scannerDelegate)
    {
      (*(scannerDelegate->var0 + 3))(scannerDelegate, v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removePeripheralsFromCache
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_cachedPeripherals allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(MTRBleConnection *)self removePeripheralFromCache:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  appState = self->_appState;
  return [v3 stringWithFormat:@"<%@ %p mode=%d cbstate=%p peripheral=%@>", v4, self, self->_currentMode, appState, self->_peripheral];
}

- (void)setDesiredDiscriminators:()vector<chip:(std::allocator<chip::SetupDiscriminator>> *)a3 :SetupDiscriminator
{
  p_desiredDiscriminators = &self->_desiredDiscriminators;
  if (p_desiredDiscriminators != a3)
  {
    sub_239489FC8(p_desiredDiscriminators, a3->__begin_, a3->__end_, a3->__end_ - a3->__begin_);
  }
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

@end
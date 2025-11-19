@interface OSDBluetooth
- (BOOL)_setBluetoothPower:(BTLocalDeviceImpl *)a3 enabled:(BOOL)a4 timeout:(double)a5;
- (BOOL)_setupBluetoothSessionAndDevice:(id *)a3;
- (OSDBluetooth)init;
- (id)performBluetoothScanWithTimeout:(double)a3 foundDevices:(id)a4;
- (int)_bluetoothPower:(BTLocalDeviceImpl *)a3 isEnabled:(BOOL *)a4;
- (void)_teardownBluetoothSessionAndDevice;
- (void)performScanOnQueue:(id)a3 timeout:(double)a4 gracePeriod:(double)a5 completionBlock:(id)a6;
@end

@implementation OSDBluetooth

- (OSDBluetooth)init
{
  v8.receiver = self;
  v8.super_class = OSDBluetooth;
  v2 = [(OSDBluetooth *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create([@"com.apple.Diagnostics.DABluetooth" UTF8String], 0);
    btQueue = v2->_btQueue;
    v2->_btQueue = v3;

    v5 = dispatch_semaphore_create(0);
    statusSema = v2->_statusSema;
    v2->_statusSema = v5;

    v2->_attachDetachCallback.sessionEvent = sub_1000014DC;
    v2->_discoveryCallbacks.statusEvent = sub_1000016D4;
    v2->_discoveryCallbacks.discoveryEvent = sub_100001818;
    v2->_localDeviceCallbacks.leTestStopped = 0;
    v2->_localDeviceCallbacks.afhMapChanged = 0;
    v2->_localDeviceCallbacks.statusEvent = sub_100001AAC;
    objc_storeStrong(&qword_10000C820, v2);
  }

  return v2;
}

- (int)_bluetoothPower:(BTLocalDeviceImpl *)a3 isEnabled:(BOOL *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = -5;
  do
  {
    objc_initWeak(&location, self);
    btQueue = self->_btQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001F44;
    block[3] = &unk_1000082A0;
    objc_copyWeak(v13, &location);
    block[4] = &v15;
    block[5] = &v19;
    v13[1] = a3;
    v13[2] = a4;
    dispatch_sync(btQueue, block);
    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
    v9 = *(v16 + 6);
    if (v9)
    {
      break;
    }
  }

  while (*(v20 + 6) == -889275714 && v7++ != 0);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v9;
}

- (BOOL)_setBluetoothPower:(BTLocalDeviceImpl *)a3 enabled:(BOOL)a4 timeout:(double)a5
{
  v5 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v21 = 0;
  if (![(OSDBluetooth *)self _bluetoothPower:a3 isEnabled:&v21])
  {
    if ((v21 & 1) == v5)
    {
      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v14 = "BT module was already in the correct power state; doing nothing.";
        v15 = v9;
        v16 = 2;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }

    else
    {
      btQueue = self->_btQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000242C;
      block[3] = &unk_1000082C8;
      block[4] = &v22;
      block[5] = a3;
      v20 = v5;
      dispatch_sync(btQueue, block);
      statusSema = self->_statusSema;
      v13 = dispatch_time(0, (a5 * 1000000000.0));
      dispatch_semaphore_wait(statusSema, v13);
      if (*(v23 + 6))
      {
        v9 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100003F1C();
        }

        goto LABEL_4;
      }

      v9 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"OFF";
        if (v5)
        {
          v17 = @"ON";
        }

        *buf = 138412290;
        v27 = v17;
        v14 = "Set BT module power: %@";
        v15 = v9;
        v16 = 12;
        goto LABEL_15;
      }
    }

    v10 = 1;
    goto LABEL_17;
  }

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100003EE0();
  }

LABEL_4:
  v10 = 0;
LABEL_17:

  _Block_object_dispose(&v22, 8);
  return v10;
}

- (BOOL)_setupBluetoothSessionAndDevice:(id *)a3
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (!self->_session)
  {
    objc_initWeak(&location, self);
    btQueue = self->_btQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000283C;
    block[3] = &unk_1000082F0;
    objc_copyWeak(&v23, &location);
    block[4] = &v25;
    dispatch_sync(btQueue, block);
    statusSema = self->_statusSema;
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(statusSema, v8);
    if (*(v26 + 6))
    {
      [OSDError setError:a3 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2101 format:@"Error attaching to BTSession."];
      v3 = 0;
LABEL_18:
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      goto LABEL_19;
    }

    v9 = self->_btQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000028E4;
    v20[3] = &unk_1000082F0;
    objc_copyWeak(&v21, &location);
    v20[4] = &v25;
    dispatch_sync(v9, v20);
    if (*(v26 + 6))
    {
      [OSDError setError:a3 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2102 format:@"Error getting default bluetooth device"];
      v3 = 0;
LABEL_17:
      objc_destroyWeak(&v21);
      goto LABEL_18;
    }

    v10 = self->_btQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000294C;
    v18[3] = &unk_1000082F0;
    objc_copyWeak(&v19, &location);
    v18[4] = &v25;
    dispatch_sync(v10, v18);
    if (*(v26 + 6))
    {
      [OSDError setError:a3 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2103 format:@"Error adding bluetooth device callbacks"];
      v3 = 0;
LABEL_16:
      objc_destroyWeak(&v19);
      goto LABEL_17;
    }

    v11 = self->_btQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000029B4;
    v16[3] = &unk_1000082F0;
    objc_copyWeak(&v17, &location);
    v16[4] = &v25;
    dispatch_sync(v11, v16);
    if (*(v26 + 6))
    {
      v12 = @"Error creating bluetooth discovery agent";
      v13 = 2104;
    }

    else
    {
      session = self->_session;
      v3 = session != 0;
      if (!session)
      {
        [OSDError setError:a3 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2105 format:@"Error creating a Bluetooth session"];
      }

      if (self->_localDevice)
      {
        goto LABEL_15;
      }

      v12 = @"Error creating a Bluetooth local device object";
      v13 = 2106;
    }

    [OSDError setError:a3 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:v13 format:v12];
    v3 = 0;
LABEL_15:
    objc_destroyWeak(&v17);
    goto LABEL_16;
  }

  v3 = 1;
LABEL_19:
  _Block_object_dispose(&v25, 8);
  return v3;
}

- (void)_teardownBluetoothSessionAndDevice
{
  objc_initWeak(&location, self);
  btQueue = self->_btQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002AC4;
  v4[3] = &unk_100008318;
  objc_copyWeak(&v5, &location);
  dispatch_sync(btQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)performBluetoothScanWithTimeout:(double)a3 foundDevices:(id)a4
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100002D00;
  v21 = sub_100002D10;
  v22 = &off_100008568;
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_queue_create([@"com.apple.Diagnostics.DABluetooth" UTF8String], 0);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100002D18;
  v13[3] = &unk_100008278;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  v10 = v7;
  v15 = v10;
  [(OSDBluetooth *)self performScanOnQueue:v8 timeout:v13 gracePeriod:a3 completionBlock:2.0];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

- (void)performScanOnQueue:(id)a3 timeout:(double)a4 gracePeriod:(double)a5 completionBlock:(id)a6
{
  v10 = a6;
  if (a4 <= 0.0)
  {
    a4 = 8.0;
  }

  if (a5 <= 0.0)
  {
    a5 = 2.0;
  }

  v11 = a3;
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003060;
  v13[3] = &unk_100008340;
  v13[4] = self;
  objc_copyWeak(v15, &location);
  v15[1] = *&a4;
  v15[2] = *&a5;
  v14 = v10;
  v12 = v10;
  dispatch_async(v11, v13);

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);
}

@end
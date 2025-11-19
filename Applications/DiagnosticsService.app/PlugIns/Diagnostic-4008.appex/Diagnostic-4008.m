void sub_100001108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001140(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v7 = DiagnosticLogHandleForCategory();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100003AE4(v6, v8);
      }

      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth scan completed successfully. Devices: %@", &v12, 0xCu);
      }

      v9 = &off_100008550;
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000014DC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (qword_10000C820)
  {
    [qword_10000C820 setSession:0];
    if (a2 == 1)
    {
      if (a3)
      {
        v8 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100003B5C();
        }

        goto LABEL_12;
      }

      v14 = DiagnosticLogHandleForCategory();
      v11 = v14;
      if (a4)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15) = 0;
          v12 = "Successfully detached from BT.";
          v13 = &v15;
          goto LABEL_21;
        }

LABEL_22:

        [qword_10000C820 setSession:a1];
        goto LABEL_28;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100003BD0();
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!a2)
    {
      if (a3)
      {
        v8 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_100003C0C();
        }

LABEL_12:

LABEL_28:
        v9 = [qword_10000C820 statusSema];
        dispatch_semaphore_signal(v9);
        goto LABEL_29;
      }

      v10 = DiagnosticLogHandleForCategory();
      v11 = v10;
      if (a4)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 0;
          v12 = "Successfully attached to BT.";
          v13 = &v16;
LABEL_21:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100003C80();
      }

      goto LABEL_27;
    }

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003CBC();
    }
  }

  else
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100003D24();
    }
  }

LABEL_29:
}

void sub_1000016D4(uint64_t a1, int a2)
{
  v3 = qword_10000C820;
  v4 = DiagnosticLogHandleForCategory();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003D24();
    }

    goto LABEL_14;
  }

  if (a2 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received discovery status update: BT_DISCOVERY_SCAN_STOPPED.", v6, 2u);
    }

    [qword_10000C820 setStopped:1];
    v5 = [qword_10000C820 statusSema];
    dispatch_semaphore_signal(v5);
    goto LABEL_14;
  }

  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003D60();
    }

LABEL_14:

    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received discovery status update: BT_DISCOVERY_SCAN_STARTED.", buf, 2u);
  }

  [qword_10000C820 setStarted:1];
}

void sub_100001818(uint64_t a1, int a2)
{
  if (qword_10000C820)
  {
    v3 = [qword_10000C820 devices];
    memset(v11, 0, sizeof(v11));
    if (a2)
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100003DC8();
      }
    }

    else
    {
      BTDeviceGetAddressString();
      v4 = [NSString stringWithUTF8String:v11];
      BTDeviceGetName();
      v5 = [NSString stringWithUTF8String:v11];
      BTDeviceGetDefaultName();
      v6 = [NSString stringWithUTF8String:v11];
      BTDeviceGetDeviceType();
      BTDeviceGetDeviceClass();
      if (v4 && v5 && v6)
      {
        v7 = objc_alloc_init(OSDBluetoothDevice);
        [(OSDBluetoothDevice *)v7 setAddress:v4];
        [(OSDBluetoothDevice *)v7 setName:v5];
        [(OSDBluetoothDevice *)v7 setDefaultName:v6];
        [(OSDBluetoothDevice *)v7 setDeviceType:0];
        [(OSDBluetoothDevice *)v7 setDeviceClass:0];
        [v3 addObject:v7];
        v8 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Discovered a BT device: %@", buf, 0xCu);
        }
      }

      else
      {
        v7 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
        {
          sub_100003E30();
        }
      }
    }
  }

  else
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100003D24();
    }
  }
}

void sub_100001AAC(uint64_t a1, int a2)
{
  v3 = qword_10000C820;
  v4 = DiagnosticLogHandleForCategory();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003D24();
    }

    goto LABEL_34;
  }

  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67109120;
          v8 = 4;
          v6 = "Received a BT_LOCAL_DEVICE_PAIRING_STATUS_CHANGED callback: %d";
          goto LABEL_33;
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 67109120;
        v8 = 5;
        v6 = "Received a BT_LOCAL_DEVICE_CONNECTION_STATUS_CHANGED callback: %d";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    switch(a2)
    {
      case 6:
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67109120;
          v8 = 6;
          v6 = "Received a BT_LOCAL_DEVICE_DISCOVERY_STARTED callback: %d";
          goto LABEL_33;
        }

        goto LABEL_34;
      case 7:
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67109120;
          v8 = 7;
          v6 = "Received a BT_LOCAL_DEVICE_DISCOVERY_STOPPED callback: %d";
          goto LABEL_33;
        }

        goto LABEL_34;
      case 8:
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 67109120;
          v8 = 8;
          v6 = "Received a BT_LOCAL_DEVICE_ADVERTISING_STATUS_CHANGED callback: %d";
LABEL_33:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v7, 8u);
          goto LABEL_34;
        }

        goto LABEL_34;
    }

LABEL_35:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100003E6C();
    }

    goto LABEL_34;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 67109120;
        v8 = 2;
        v6 = "Received a BT_LOCAL_DEVICE_DISCOVERABILITY_CHANGED callback: %d";
        goto LABEL_33;
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = 3;
      v6 = "Received a BT_LOCAL_DEVICE_CONNECTABILITY_CHANGED callback: %d";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109120;
      v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a BT_LOCAL_DEVICE_POWER_STATE_CHANGED callback: %d", &v7, 8u);
    }

    v5 = [qword_10000C820 statusSema];
    dispatch_semaphore_signal(v5);
    goto LABEL_34;
  }

  if (a2 != 1)
  {
    goto LABEL_35;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    v8 = 1;
    v6 = "Received a BT_LOCAL_DEVICE_NAME_CHANGED callback: %d";
    goto LABEL_33;
  }

LABEL_34:
}

void sub_100001F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 40) + 8);
    *(*(*(a1 + 32) + 8) + 24) = BTLocalDeviceGetModulePower();
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      v5 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_6:

        goto LABEL_17;
      }

      LOWORD(v16) = 0;
      v6 = "Error while trying to get the BT module power.";
LABEL_5:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v16, 2u);
      goto LABEL_6;
    }

    v7 = *(*(*(a1 + 40) + 8) + 24);
    v8 = DiagnosticLogHandleForCategory();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 != -889275714)
    {
      if (v9)
      {
        v13 = @"OFF";
        v14 = *(*(*(a1 + 40) + 8) + 24);
        if (v14 == -1)
        {
          v13 = @"ON";
        }

        v16 = 138412546;
        v17 = v13;
        v18 = 1024;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Read BT module power: %@. Powerstate: %x", &v16, 0x12u);
      }

      v15 = *(a1 + 64);
      if (v15)
      {
        *v15 = *(*(*(a1 + 40) + 8) + 24) == -1;
        goto LABEL_17;
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      v5 = DiagnosticLogHandleForCategory();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      LOWORD(v16) = 0;
      v6 = "Callback pointer passed to isEnabled was NULL";
      goto LABEL_5;
    }

    if (v9)
    {
      v10 = *(*(*(a1 + 40) + 8) + 24);
      v16 = 67109120;
      LODWORD(v17) = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Read BT module powerstate: %x. Starting runloop", &v16, 8u);
    }

    v11 = WeakRetained[12];
    v12 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v11, v12);
  }

LABEL_17:
}

void sub_1000023FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000242C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = BTLocalDeviceSetModulePower();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1000027E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 - 136));
  _Block_object_dispose((v5 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000283C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = +[NSProcessInfo processInfo];
    v4 = [v3 processName];
    [v4 UTF8String];
    v5 = v6[1];
    *(*(*(a1 + 32) + 8) + 24) = BTSessionAttachWithQueue();

    WeakRetained = v6;
  }
}

uint64_t sub_1000028E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    *(*(*(a1 + 32) + 8) + 24) = BTLocalDeviceGetDefault();
  }

  return _objc_release_x1();
}

uint64_t sub_10000294C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    *(*(*(a1 + 32) + 8) + 24) = BTLocalDeviceAddCallbacks();
  }

  return _objc_release_x2();
}

uint64_t sub_1000029B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[8];
    *(*(*(a1 + 32) + 8) + 24) = BTDiscoveryAgentCreate();
  }

  return _objc_release_x2();
}

uint64_t sub_100002AC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained + 10;
    v6 = WeakRetained;
    if (WeakRetained[10])
    {
      BTDiscoveryAgentDestroy();
      v2 = v6;
      *v3 = 0;
    }

    if (v2[9])
    {
      BTLocalDeviceRemoveCallbacks();
      v2 = v6;
    }

    v4 = v2 + 8;
    if (v2[8])
    {
      BTSessionDetachWithQueue();
      *v4 = 0;
    }
  }

  return _objc_release_x1();
}

void sub_100002CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100002D00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002D18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = DiagnosticLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003FA8();
    }

    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 code]);
    goto LABEL_21;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Bluetooth scan completed successfully. Devices: %@", buf, 0xCu);
  }

  if (!*(a1 + 32))
  {
LABEL_17:
    v9 = &off_100008580;
    goto LABEL_21;
  }

  if ([v5 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(a1 + 32);
          v16 = [*(*(&v20 + 1) + 8 * v14) defaultName];
          [v15 addObject:v16];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    goto LABEL_17;
  }

  v17 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10000401C();
  }

  v9 = &off_100008598;
LABEL_21:
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100003060(uint64_t a1)
{
  v44 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v2 = *(a1 + 32);
  v39 = 0;
  [v2 _setupBluetoothSessionAndDevice:&v39];
  v3 = v39;
  v4 = objc_alloc_init(NSMutableArray);
  [*(a1 + 32) setDevices:v4];

  [*(a1 + 32) setStarted:0];
  [*(a1 + 32) setStopped:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _bluetoothPower:WeakRetained[9] isEnabled:&v44];
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v44)
      {
        v8 = @"ON";
      }

      else
      {
        v8 = @"OFF";
      }

      *buf = 138412290;
      *v46 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Initial Bluetooth power state is %@", buf, 0xCu);
    }

    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to power on Bluetooth... (if necessary)", buf, 2u);
    }

    if (([v6 _setBluetoothPower:v6[9] enabled:1 timeout:*(a1 + 56)] & 1) == 0)
    {
      v38 = v3;
      [OSDError setError:&v38 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2107 format:@"Error unable to set the bluetooth power state to ON"];
      v10 = v38;

      v3 = v10;
    }

    v11 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    v12 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to do a Bluetooth scan...", buf, 2u);
    }

    v13 = v6[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000037FC;
    block[3] = &unk_1000082F0;
    objc_copyWeak(&v37, (a1 + 48));
    block[4] = &v40;
    dispatch_sync(v13, block);
    if (*(v41 + 6))
    {
      v35 = v3;
      [OSDError setError:&v35 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2108 format:@"Error trying to start a Bluetooth scan"];
      v14 = v35;

      v3 = v14;
    }

    else
    {
      dispatch_semaphore_wait(v6[12], v11);
    }

    v15 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 32) started];
      v17 = [*(a1 + 32) stopped];
      *buf = 67109376;
      *v46 = v16;
      *&v46[4] = 1024;
      *&v46[6] = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Scan complete. Started: %d Stopped: %d", buf, 0xEu);
    }

    if ([*(a1 + 32) started])
    {
      v18 = [*(a1 + 32) stopped];
    }

    else
    {
      v18 = 0;
    }

    if ([*(a1 + 32) started] && (objc_msgSend(*(a1 + 32), "stopped") & 1) == 0)
    {
      v19 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending a stop scan command...", buf, 2u);
      }

      v20 = v6[1];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100003864;
      v33[3] = &unk_100008318;
      objc_copyWeak(&v34, (a1 + 48));
      dispatch_sync(v20, v33);
      v11 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
      v21 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v46 = 0x4000000000000000;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding grace period delay of %.02f sec for stop notification...", buf, 0xCu);
      }

      dispatch_semaphore_wait(v6[12], v11);
      v22 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 32) started];
        v24 = [*(a1 + 32) stopped];
        *buf = 67109376;
        *v46 = v23;
        *&v46[4] = 1024;
        *&v46[6] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Overtime-scan complete. Started: %d Stopped: %d", buf, 0xEu);
      }

      if ([*(a1 + 32) started])
      {
        v18 = [*(a1 + 32) stopped];
      }

      else
      {
        v18 = 0;
      }

      objc_destroyWeak(&v34);
    }

    if ((v44 & 1) == 0)
    {
      v25 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Attempting to power off Bluetooth...", buf, 2u);
      }

      v26 = [v6 _setBluetoothPower:v6[9] enabled:0 timeout:v11 - CFAbsoluteTimeGetCurrent()];
      if (!([*(a1 + 32) stopped] & 1 | ((v26 & 1) == 0)))
      {
        [*(a1 + 32) setStopped:1];
      }
    }

    if (([*(a1 + 32) started] & 1) == 0)
    {
      v32 = v3;
      [OSDError setError:&v32 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2108 format:@"Error trying to start a Bluetooth scan"];
      v27 = v32;

      v3 = v27;
    }

    if (([*(a1 + 32) stopped] & 1) == 0)
    {
      v31 = v3;
      [OSDError setError:&v31 withDomain:@"com.apple.Diagnostics.DABluetooth" withCode:2109 format:@"Error trying to stop a Bluetooth scan"];
      v28 = v31;

      v3 = v28;
    }

    [*(a1 + 32) _teardownBluetoothSessionAndDevice];
    if ((v18 & 1) == 0)
    {
      [*(a1 + 32) setDevices:0];
    }

    v29 = *(a1 + 40);
    v30 = [*(a1 + 32) devices];
    (*(v29 + 16))(v29, v30, v3);

    [*(a1 + 32) setDevices:0];
    objc_destroyWeak(&v37);
  }

  _Block_object_dispose(&v40, 8);
}

void sub_10000378C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1000037FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WeakRetained[10];
    *(*(*(a1 + 32) + 8) + 24) = BTDiscoveryAgentStartScan();
    WeakRetained = v4;
  }
}

void sub_100003864(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained[10];
    BTDiscoveryAgentStopScan();
    WeakRetained = v3;
  }
}

void sub_1000039D4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_1000039F4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was previously assigned.  New unsaved error: %@", &v2, 0xCu);
}

void sub_100003A6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "NSError variable was nil.  New unsaved error: %@", &v2, 0xCu);
}

void sub_100003AE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Bluetooth scan error: %@", &v2, 0xCu);
}

void sub_100003BD0()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003C80()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003D24()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003E30()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003EE0()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000401C()
{
  sub_1000039C8();
  sub_1000039BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}
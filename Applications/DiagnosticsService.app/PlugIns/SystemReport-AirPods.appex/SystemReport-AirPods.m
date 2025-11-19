id stringOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

id numberOrNull(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = +[NSNull null];
  }

  v4 = v3;

  return v4;
}

void removeNullFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v1 objectForKeyedSubscript:v7];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || ([v1 objectForKeyedSubscript:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
        {
        }

        else
        {
          v10 = v9;
          v11 = [v1 objectForKeyedSubscript:v7];

          if (v11)
          {
            continue;
          }
        }

        [v1 removeObjectForKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_10000361C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000363C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003654(uint64_t a1)
{
  v5 = +[UIDevice currentDevice];
  v2 = [v5 systemVersion];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100004A68(id a1)
{
  v1 = MGCopyAnswer();
  if ([v1 isEqualToString:@"Beta"])
  {
    byte_100015100 = 1;
  }
}

uint64_t sub_1000054B8(uint64_t a1, uint64_t a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  v6 = *(a1 + 32);
  v7 = [NSNumber numberWithUnsignedLong:value];
  v8 = [NSString stringWithCString:a2 encoding:4];
  [v6 setValue:v7 forKey:v8];

  return 1;
}

void sub_100006F9C(uint64_t a1)
{
  v2 = +[BluetoothManager sharedInstance];
  [*(a1 + 32) setBtManager:v2];

  v3 = [*(a1 + 32) btManager];
  v4 = [v3 available];

  if (v4)
  {
    [*(a1 + 32) bluetoothManagerDidBecomeAvailable];
    v7 = [*(a1 + 32) btManagerAvailableSemaphore];
    dispatch_semaphore_signal(v7);
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bluetooth manager is not available on init. Waiting for availability before retrieving devices.", buf, 2u);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:*(a1 + 32) selector:"bluetoothManagerDidBecomeAvailable" name:BluetoothAvailabilityChangedNotification object:0];
  }
}

void sub_100007C58(id a1)
{
  qword_100015118 = objc_alloc_init(BCBatteryDeviceController);

  _objc_release_x1();
}

void sub_100008544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000857C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100008594(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = [v31 bluetoothUUID];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v8 = +[DSDateFormatter sharedFormatter];
      v9 = [v8 formatterWithType:0];

      v10 = [v31 lastMeasurementTimestampLeft];
      if (v10)
      {
        v11 = [v9 stringFromDate:v10];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v11 forKeyedSubscript:@"lastMeasurementTimestampLeft"];
      }

      v12 = [v31 lastMeasurementTimestampRight];
      if (v12)
      {
        v13 = [v9 stringFromDate:v12];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v13 forKeyedSubscript:@"lastMeasurementTimestampRight"];
      }

      v14 = [v31 version];
      [v7 addObjectIfNotNil:v14 forKey:@"version" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v15 = [v31 daysSinceLastMeasurementLeft];
      [v7 addObjectIfNotNil:v15 forKey:@"daysSinceLastCalLeft" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v16 = [v31 daysSinceLastMeasurementRight];
      [v7 addObjectIfNotNil:v16 forKey:@"daysSinceLastCalRight" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v17 = [v31 daysSinceLastHarmonicMeasurementLeft];
      [v7 addObjectIfNotNil:v17 forKey:@"daysSinceLastHarmonicLeft" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v18 = [v31 daysSinceLastHarmonicMeasurementRight];
      [v7 addObjectIfNotNil:v18 forKey:@"daysSinceLastHarmonicRight" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"errMicStatusLeft") toDictionary:{@"errMicStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"errMicStatusRight") toDictionary:{@"errMicStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"generalSystemStatusLeft") toDictionary:{@"generalSystemStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"generalSystemStatusRight") toDictionary:{@"generalSystemStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"frontVentStatusLeft") toDictionary:{@"frontVentStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"frontVentStatusRight") toDictionary:{@"frontVentStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"latestMeasurementResultLeft") toDictionary:{@"latestMeasurementResultLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"latestMeasurementResultRight") toDictionary:{@"latestMeasurementResultRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"rearVentStatusLeft") toDictionary:{@"rearVentStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"rearVentStatusRight") toDictionary:{@"rearVentStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"refMicStatusLeft") toDictionary:{@"refMicStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"refMicStatusRight") toDictionary:{@"refMicStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"speakerStatusLeft") toDictionary:{@"speakerStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"speakerStatusRight") toDictionary:{@"speakerStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"vceMicStatusLeft") toDictionary:{@"vceMicStatusLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"vceMicStatusRight") toDictionary:{@"vceMicStatusRight", *(*(*(a1 + 48) + 8) + 40)}];
      v19 = [v31 ancLossTypeLeft];
      if (v19 > 3)
      {
        v20 = "?";
      }

      else
      {
        v20 = (&off_100010510)[v19];
      }

      v21 = [NSString stringWithUTF8String:v20];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v21 forKeyedSubscript:@"ancLossTypeLeft"];

      v22 = [v31 ancLossTypeRight];
      if (v22 > 3)
      {
        v23 = "?";
      }

      else
      {
        v23 = (&off_100010510)[v22];
      }

      v24 = [NSString stringWithUTF8String:v23];
      [*(*(*(a1 + 48) + 8) + 40) setObject:v24 forKeyedSubscript:@"ancLossTypeRight"];

      v25 = [v31 ancCleanLossScoreLeft];
      [v7 addObjectIfNotNil:v25 forKey:@"ancCleanLossScoreLeft" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v26 = [v31 ancCleanLossScoreRight];
      [v7 addObjectIfNotNil:v26 forKey:@"ancCleanLossScoreRight" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v27 = [v31 ancFullLossScoreLeft];
      [v7 addObjectIfNotNil:v27 forKey:@"ancFullLossScoreLeft" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v28 = [v31 ancFullLossScoreRight];
      [v7 addObjectIfNotNil:v28 forKey:@"ancFullLossScoreRight" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v29 = [v31 ancSevereLossScoreLeft];
      [v7 addObjectIfNotNil:v29 forKey:@"ancSevereLossScoreLeft" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      v30 = [v31 ancSevereLossScoreRight];
      [v7 addObjectIfNotNil:v30 forKey:@"ancSevereLossScoreRight" toDictionary:*(*(*(a1 + 48) + 8) + 40)];

      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"totalHarmonicDistortionLeft") toDictionary:{@"totalHarmonicDistortionLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"totalHarmonicDistortionRight") toDictionary:{@"totalHarmonicDistortionRight", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"frequencyAccuracyLeft") toDictionary:{@"frequencyAccuracyLeft", *(*(*(a1 + 48) + 8) + 40)}];
      [v7 addEnumValueIfNotZero:objc_msgSend(v31 forKey:"frequencyAccuracyRight") toDictionary:{@"frequencyAccuracyRight", *(*(*(a1 + 48) + 8) + 40)}];
      dispatch_semaphore_signal(*(a1 + 40));
    }
  }
}

void sub_100008D18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Unable to activate HMServiceClient with error: %@", &v6, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}
void sub_2DAD4()
{
  sub_C254();
  v4 = [HDDaemonTransaction transactionWithOwner:v2 activityName:@"RemovePairing"];
  if (v2)
  {
    v5 = *(v2 + 16);
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(v0 + 16) = sub_B8F0;
  *(v0 + 24) = &unk_5CF80;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v6 = v1;
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v7 = v4;
  sub_C268();
}

void sub_2DB98()
{
  sub_C254();
  v4 = [HDDaemonTransaction transactionWithOwner:v2 activityName:@"RemovePeripheral"];
  if (v2)
  {
    v5 = *(v2 + 16);
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(v0 + 16) = sub_BC44;
  *(v0 + 24) = &unk_5CF80;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v6 = v1;
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v7 = v4;
  sub_C268();
}

void sub_2DC5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [HDDaemonTransaction transactionWithOwner:a1 activityName:@"GetPeripheralStatus"];
  if (a1)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = 0;
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(a2 + 16) = sub_2D060;
  *(a2 + 24) = &unk_5CF80;
  *(a2 + 32) = a1;
  *(a2 + 40) = a3;
  v10 = a4;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  v11 = v8;
  dispatch_async(v9, a2);
}

void sub_2DD3C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [HDDaemonTransaction transactionWithOwner:a1 activityName:@"GetSupportedPropertyNames"];
  if (a1)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(a2 + 16) = sub_2D188;
  *(a2 + 24) = &unk_5C878;
  *(a2 + 32) = a1;
  v8 = a3;
  *(a2 + 40) = v6;
  *(a2 + 48) = v8;
  v9 = v6;
  dispatch_async(v7, a2);
}

void sub_2DE08(uint64_t a1)
{
  if (a1)
  {
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = 5;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Starting device information timer with duration: %lld", buf, 0xCu);
    }

    v3 = dispatch_walltime(0, 5000000000);
    v4 = *(a1 + 136);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2E25C;
    block[3] = &unk_5C800;
    block[4] = a1;
    dispatch_after(v3, v4, block);
  }
}

void *sub_2DF28(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_DAF0;
    v14 = sub_DB00;
    v15 = 0;
    v5 = a1[17];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_DB08;
    block[3] = &unk_5C7B0;
    v9 = &v10;
    block[4] = a1;
    v8 = v3;
    dispatch_sync(v5, block);
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

id *sub_2E0A0(id *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 105) & 1) == 0)
    {
      _HKInitializeLogging();
      v2 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v2;
        v4 = NSStringFromSelector("_queue_setDeviceInformationHasBeenLoaded");
        *buf = 138412546;
        v17 = v1;
        v18 = 2112;
        v19 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
      }

      *(v1 + 105) = 1;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v1[18];
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            HKDispatchAsyncOnGlobalConcurrentQueue();
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      return [v1[18] removeAllObjects];
    }
  }

  return result;
}

id *sub_2E25C(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 128);
    v5 = v2;
    v6 = [v4 count];
    v7 = [*(*(a1 + 32) + 112) count];
    v9 = 138412802;
    v10 = v3;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@: Timeout fired, %lu properties left of %lu", &v9, 0x20u);
  }

  if ([*(*(a1 + 32) + 128) count])
  {
    [*(*(a1 + 32) + 128) removeAllObjects];
  }

  return sub_2E0A0(*(a1 + 32));
}

uint64_t sub_2E390(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = _PropertyNamesToCharacteristicIdentifiers();
    v9 = [v4 objectForKeyedSubscript:v3];

    if (v9)
    {
      v5 = [v2[14] objectForKeyedSubscript:v9];
      if (v5)
      {
        v6 = v5;
        v7 = [v2 healthPeripheral];
        v8 = [v7 cbPeripheral];
        [v8 readValueForCharacteristic:v6];
      }
    }

    return _objc_release_x1();
  }

  return result;
}

void sub_2E464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 UUID];
    v9 = [v8 UUIDString];

    v10 = _CharacteristicIdentifiersToPropertyNames();
    v11 = [v10 objectForKeyedSubscript:v9];

    if (v11 && (![a1 fetchLimitedCharacteristics] || objc_msgSend(v9, "isEqualToString:", @"2A29")))
    {
      [*(a1 + 128) addObject:v11];
      v12 = *(a1 + 112);
      v13 = [v7 UUID];
      v14 = [v13 UUIDString];
      [v12 setObject:v7 forKeyedSubscript:v14];

      _HKInitializeLogging();
      v15 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = v11;
        v18 = 2114;
        v19 = v9;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Reading device information characteristic %{public}@ (%{public}@)", &v16, 0x16u);
      }

      [v5 readValueForCharacteristic:v7];
    }
  }
}

void sub_2E61C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (v9)
    {
      _HKInitializeLogging();
      v11 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412802;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        v21 = 2114;
        v22 = v10;
        _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Error updating value for peripheral: %@ characteristic: %@; %{public}@", &v17, 0x20u);
      }
    }

    else
    {
      v12 = [v8 UUID];
      v13 = [v12 UUIDString];

      v14 = _CharacteristicIdentifiersToPropertyNames();
      v15 = [v14 objectForKeyedSubscript:v13];

      if ([a1[16] containsObject:v15])
      {
        v16 = sub_2E7F0(a1, v8);
        if (v16)
        {
          [a1[15] setObject:v16 forKeyedSubscript:v15];
        }

        [a1[16] removeObject:v15];
      }

      if (![a1[16] count])
      {
        sub_2E0A0(a1);
      }
    }
  }
}

id sub_2E7F0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = [a2 value];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 length];
      v5 = strnlen([v3 bytes], v4);
      v6 = [NSString alloc];
      if (v4 == v5)
      {
        v7 = [v6 initWithData:v3 encoding:4];
      }

      else
      {
        v7 = [v6 initWithUTF8String:{objc_msgSend(v3, "bytes")}];
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_2E9CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Bad oob data: %@", &v2, 0xCu);
}

void sub_2EA6C(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 8) workoutConfiguration];
    v3 = [v2 fitnessMachineSessionUUID];

    v4 = [a1 profile];
    v5 = [v4 fitnessMachineManager];
    v6 = [v5 fitnessMachineTypeForSessionUUID:v3];

    v7 = objc_alloc_init(NSMutableSet);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = HKSupportedMetricsForMachineType();
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v20 + 1) + 8 * v12) unsignedIntegerValue];
          if (v13 != &dword_14)
          {
            v14 = [HKObjectType objectTypeForWorkoutMetric:v13 fitnessMachineType:v6];
            if (v14)
            {
              [v7 addObject:v14];
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v15 = *(a1 + 32);
    *(a1 + 32) = v7;
    v16 = v7;

    v17 = [HKObjectType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
    v18 = [NSSet setWithObject:v17];
    v19 = *(a1 + 40);
    *(a1 + 40) = v18;
  }
}

uint64_t sub_2EC84(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 _source];
    v6 = [v5 _isLocalDevice];

    v7 = [v4 _source];
    v8 = [v7 _isConnectedGymSource];

    if ((v8 & 1) == 0 && (v6 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
      {
        v47 = v9;
        v48 = [v4 _source];
        v54 = 138543362;
        v55 = v48;
        _os_log_debug_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "Sample for source %{public}@ ignored - Not local device source or fitness machine source", &v54, 0xCu);
      }

      goto LABEL_6;
    }

    v11 = [a1 profile];
    v12 = [v11 fitnessMachineManager];
    v13 = [v12 fitnessMachineDataProducer];
    v14 = [v13 attached];

    v15 = [a1 profile];
    v16 = [v15 fitnessMachineManager];
    v17 = [v16 machinePreferredUntilDate];

    if (v6 && (v14 & 1) == 0)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v54) = 0;
        sub_1004C();
        _os_log_debug_impl(v49, v50, v51, v52, v53, 2u);
      }

      goto LABEL_11;
    }

    v18 = a1[5];
    v19 = [v4 sampleType];
    LODWORD(v18) = [v18 containsObject:v19];

    if (v18)
    {
      if (v17 && ([v4 endDate], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "hk_isBeforeOrEqualToDate:", v17), v20, v21))
      {
        if ((v8 & 1) == 0)
        {
LABEL_27:
          _HKInitializeLogging();
          v36 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
          {
            v26 = v36;
            v37 = [v4 sampleType];
            v38 = [v4 endDate];
            v39 = [v4 _source];
            sub_1005C();
            v56 = v38;
            v57 = v40;
            v58 = v41;
            v59 = v40;
            v60 = v17;
            sub_1004C();
            _os_log_debug_impl(v42, v43, v44, v45, v46, 0x2Au);

            goto LABEL_29;
          }

          goto LABEL_11;
        }
      }

      else if ((v6 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = a1[4];
      v23 = [v4 sampleType];
      LODWORD(v22) = [v22 containsObject:v23];

      if (v22)
      {
        v24 = v8;
      }

      else
      {
        v24 = v6;
      }

      if ((v24 & 1) == 0)
      {
        _HKInitializeLogging();
        v25 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
        {
          v26 = v25;
          v27 = [v4 sampleType];
          v28 = [v4 _source];
          sub_1005C();
          v56 = v29;
          sub_1004C();
          _os_log_debug_impl(v30, v31, v32, v33, v34, 0x16u);

LABEL_29:
        }

LABEL_11:
        v10 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v10 = 1;
    goto LABEL_25;
  }

LABEL_6:
  v10 = 0;
LABEL_26:

  return v10;
}

void sub_2F060(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v5 = [WeakRetained fitnessMachineManager];
    [v5 addFitnessMachineSessionObserver:a1];

    v6 = *(a1 + 24);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1279C;
    v7[3] = &unk_5C8C8;
    v8 = v3;
    v9 = a1;
    dispatch_async(v6, v7);
  }
}

void sub_2F12C(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained fitnessMachineManager];
    v4 = [v3 fitnessMachineDataProducer];

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 16));
      v6 = [v5 workoutDataAccumulator];

      _HKInitializeLogging();
      v7 = HKLogWorkouts;
      v8 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v9 = 138543874;
          v10 = a1;
          v11 = 2114;
          v12 = v4;
          v13 = 2114;
          v14 = v6;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: At session start, adding %{public}@ as workout data accumulation observer at %{public}@", &v9, 0x20u);
        }

        [v6 addDataAccumulationObserver:v4];
      }

      else if (v8)
      {
        v9 = 138543362;
        v10 = a1;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: No accumulator available; marking needs-accumulator and waiting for destination set change.", &v9, 0xCu);
      }
    }
  }
}

void sub_2F294(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v6 = [WeakRetained fitnessMachineManager];

    *(a1 + 48) = 0;
    [v6 removeFitnessMachineSessionObserver:a1];
    v3 = [v6 fitnessMachineDataProducer];
    if (v3)
    {
      v4 = objc_loadWeakRetained((a1 + 16));
      v5 = [v4 workoutDataAccumulator];
      [v5 removeDataAccumulationObserver:v3];
    }
  }
}

void sub_2F34C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v15 = 0;
    v4 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v15];

    v5 = v15;
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v7 = [WeakRetained fitnessMachineManager];
      [v7 recoverSessionWithConfiguration:v4];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v16) = HIDWORD(a1);
        v17 = 2114;
        v18 = v5;
        sub_13244(&dword_0, v8, v9, "%{public}@: Failed to unarchive recovery state with error: %{public}@", v10, v11, v12, v13, v14, v15, 2u);
      }
    }
  }
}

void sub_2F488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v17 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v17];
    v4 = v17;
    v5 = v4;
    if (v3 || !v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 16));
      v16 = v5;
      v13 = [WeakRetained storeSessionControllerState:v3 forRecoveryIdentifier:@"com.apple.SessionController.GymKit" error:&v16];
      v14 = v16;

      if ((v13 & 1) == 0)
      {
        _HKInitializeLogging();
        v15 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
        {
          sub_13230();
          v19 = v14;
          _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed to store recovery state with error: %{public}@", buf, 0x16u);
        }
      }

      v5 = v14;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_13230();
        v19 = v5;
        sub_13244(&dword_0, v6, v7, "%{public}@: Failed to unarchive persisted recovery configuration: %{public}@", v8, v9, v10, v11, v16, v17, buf[0]);
      }
    }
  }
}

void sub_2F614(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchive recovery state with error: %{public}@", &v3, 0x16u);
}

void sub_2F69C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve recovery configuration for current fitness machine session", &v3, 0xCu);
}

id sub_2F750(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v2 = [WeakRetained serviceManager];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_2F7A8(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = a2;
    v6 = sub_180B8();
    dispatch_assert_queue_V2(v6);
    v7 = sub_300A0(v3, v2);

    v3 = v7 != 0;
  }

  return v3;
}

void sub_2F80C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_15;
  }

  dispatch_assert_queue_V2(*(a1 + 16));
  v7 = [v5 domain];
  v8 = [v7 isEqualToString:CBInternalErrorDomain];

  if (v8)
  {
    if ([v5 code] == &dword_8)
    {
      HKSessionTrackerAriadneTrigger();
      v9 = @"MFA Authentication Failed";
      v10 = 203;
    }

    else
    {
      if ([v5 code] != &dword_8 + 1)
      {
        goto LABEL_8;
      }

      HKSessionTrackerAriadneTrigger();
      v9 = @"MFA Authentication Timed Out";
      v10 = 204;
    }

    v11 = [NSError hk_error:v10 description:v9 underlyingError:v5];

    v5 = v11;
LABEL_8:
    _HKInitializeLogging();
    v12 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v5;
      _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "MFA authentication failed: %{public}@", buf, 0xCu);
    }
  }

  if (([v5 hk_isHealthKitErrorWithCode:108] & 1) == 0)
  {
    [*(a1 + 104) workoutFailedWithError:v5];
  }

  _HKInitializeLogging();
  v13 = HKLogWorkouts;
  if (sub_1817C())
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "(#w0) Fitness machine connection failed with error %{public}@", buf, 0xCu);
  }

  sub_7C60();
  v14[1] = 3221225472;
  v14[2] = sub_173C4;
  v14[3] = &unk_5D378;
  v15 = v6;
  v5 = v5;
  v16 = v5;
  sub_321D0(a1, v14);

LABEL_15:
}

void sub_2FA4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v8 && !sub_2F7A8(a1, v8))
    {
      [NSError hk_error:801 format:@"Unknown connection UUID"];
      objc_claimAutoreleasedReturnValue();
      v26 = sub_18120();
      sub_2F80C(v26, a4, v8);
      goto LABEL_7;
    }

    if (a4 & 1) != 0 || ([*(a1 + 48) fitnessMachineSessionUUID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", v7), v9, (v10))
    {
      _HKInitializeLogging();
      if (sub_1817C())
      {
        sub_1813C();
        _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
      }

      v24 = sub_180DC();
      sub_2FC38(v24, v25);
    }

    else
    {
      _HKInitializeLogging();
      a4 = HKLogWorkouts;
      if (sub_1817C())
      {
        v11 = *(a1 + 48);
        v12 = a4;
        v13 = [sub_18120() fitnessMachineSessionUUID];
        sub_3B54();
        sub_1813C();
        _os_log_impl(v14, v15, v16, v17, v18, 0x16u);

LABEL_7:
      }
    }
  }
}

void sub_2FC38(uint64_t a1, char a2)
{
  if (a1)
  {
    sub_7CD4(a1);
    v4 = *(v2 + 48);
    if (v4)
    {
      if ((a2 & 1) != 0 || *(v2 + 57) != 1)
      {
        *(v2 + 57) = 1;
        if ([v4 healthServiceSessionIdentifier])
        {
          sub_31874(v2);
        }

        else
        {
          _HKInitializeLogging();
          if (sub_7CEC())
          {
            LOWORD(v34) = 0;
            sub_7C80();
            _os_log_impl(v9, v10, v11, v12, v13, 2u);
          }

          [*(v2 + 96) cancelAllTimers];
          [*(v2 + 80) detachHealthServiceSession];
          [*(v2 + 32) tearDown];
          v14 = *(v2 + 32);
          *(v2 + 32) = 0;

          v15 = +[NSNotificationCenter defaultCenter];
          [v15 postNotificationName:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:v2];

          v16 = *(v2 + 104);
          v17 = [*(v2 + 48) fitnessMachine];
          v18 = [v17 type];
          v19 = [*(v2 + 48) fitnessMachine];
          v20 = [v19 brand];
          [v16 setFitnessMachineType:v18 manufacturer:v20];

          v21 = *(v2 + 104);
          WeakRetained = objc_loadWeakRetained((v2 + 8));
          v23 = [WeakRetained daemon];
          v24 = [v23 analyticsSubmissionCoordinator];
          [v21 workoutEndedSubmitMetricsWith:v24];

          sub_30DF4(v2, 5, 0);
          [*(v2 + 40) reset];
          v25 = sub_2F750(v2);
          [v25 releasePrivateMode];

          v26 = *(v2 + 48);
          *(v2 + 48) = 0;

          v27 = sub_2F750(v2);
          v28 = objc_opt_self();
          NSStringFromClass(v28);
          objc_claimAutoreleasedReturnValue();
          [sub_180B8() sendBluetoothStatusUpdatesForServer:WeakRetained updateHandler:0 completion:0];

          v29 = sub_2F750(v2);
          [v29 resetOOBState];

          *(v2 + 57) = 0;
        }

        v33 = *(v2 + 64);
        *(v2 + 64) = 0;
      }

      else
      {
        _HKInitializeLogging();
        v5 = HKLogWorkouts;
        v6 = sub_18170();
        if (os_log_type_enabled(v6, v7))
        {
          *v35 = 0;
          sub_18108(&dword_0, v5, v8, "Ignoring reset request because a reset is already in progress.", v35);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = HKLogWorkouts;
      if (sub_7CEC())
      {
        *v36 = 0;
        sub_18108(&dword_0, v30, v31, "Ignoring reset request because there is no session.", v36);
      }

      v32 = sub_2F750(v2);
      [v32 resetOOBState];
    }
  }
}

void sub_2FF10(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (sub_7CEC())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = sub_181FC();
    v7 = sub_300A0(v6, v4);
    v8 = sub_300A0(*(a1 + 32), *(a1 + 40));
    v9 = [v8 client];
    v10 = *(a1 + 40);
    sub_180E8();
    sub_7C80();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  if (sub_2F7A8(*(a1 + 32), *(a1 + 40)))
  {
    _HKInitializeLogging();
    v16 = HKLogWorkouts;
    if (sub_7CEC())
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = v16;
      v20 = sub_181FC();
      v21 = sub_300A0(v20, v18);
      v22 = sub_300A0(*(a1 + 32), *(a1 + 40));
      v23 = [v22 client];
      v24 = *(a1 + 40);
      sub_180E8();
      sub_7C80();
      _os_log_impl(v25, v26, v27, v28, v29, 0x20u);
    }

    sub_30144(*(a1 + 32), *(a1 + 40));
  }
}

id sub_300A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = *(a1 + 24);
    sub_4FB4();
    sub_7D04();
    v7 = sub_1745C;
    v8 = &unk_5D3A0;
    v9 = v3;
    a1 = [v4 hk_firstObjectPassingTest:v6];
  }

  return a1;
}

void sub_30144(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v4 = *(a1 + 24);
    sub_4FB4();
    sub_7D04();
    v6 = sub_174A0;
    v7 = &unk_5D3A0;
    v8 = v3;
    [v4 hk_removeObjectsPassingTest:v5];
  }
}

void sub_301CC(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    _HKInitializeLogging();
    v6 = sub_180DC();
    if (os_log_type_enabled(v6, v7))
    {
      sub_180C4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
    }

    if (!*(a1 + 48))
    {
      v13 = [[HDFitnessMachineSession alloc] initWithRecoveryConfiguration:v5];
      v14 = *(a1 + 48);
      *(a1 + 48) = v13;

      v15 = sub_2F750(a1);
      [*(a1 + 48) nfcSessionID];
      objc_claimAutoreleasedReturnValue();
      [sub_18120() enablePrivateModeForSessionWithIdentifier:v2];

      v16 = -[HDFitnessMachineSimulatorSupport initWithFitnessMachineType:]([HDFitnessMachineSimulatorSupport alloc], "initWithFitnessMachineType:", [v5 machineType]);
      [*(a1 + 48) healthService];
      objc_claimAutoreleasedReturnValue();
      [sub_18120() updateAdvertisementDataForSimulation:v2];

      v17 = [HDFitnessMachineDataCollector alloc];
      v18 = [v5 machineType];
      objc_loadWeakRetained((a1 + 8));
      v19 = [sub_181B8() initWithFitnessMachineType:? profile:?];
      v20 = *(a1 + 32);
      *(a1 + 32) = v19;

      [sub_181E4() machineBrand];
      objc_claimAutoreleasedReturnValue();
      [sub_180A8() setMachineBrand:?];

      [sub_181E4() machineStartDate];
      objc_claimAutoreleasedReturnValue();
      [sub_180A8() setMachineStartDate:?];

      [sub_181E4() machinePreferredUntilDate];
      objc_claimAutoreleasedReturnValue();
      [sub_180A8() setMachinePreferredUntilDate:?];

      sub_30DF4(a1, 6, 0);
      sub_303C4(a1, 1);
      v21 = +[NSNotificationCenter defaultCenter];
      [v21 postNotificationName:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:a1];
    }
  }
}

void sub_303C4(uint64_t a1, int a2)
{
  if (a1)
  {
    sub_7CD4(a1);
    _HKInitializeLogging();
    v4 = HKLogWorkouts;
    if (sub_7CEC())
    {
      *buf = 67109120;
      v28 = a2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "(#w0) Connecting to fitness machine, reconnect=%{BOOL}d", buf, 8u);
    }

    v5 = [*(v2 + 48) healthService];

    if (v5)
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_16950;
      v26[3] = &unk_5D238;
      v26[4] = v2;
      v5 = objc_retainBlock(v26);
      v8 = +[NSMutableArray array];
      v9 = *(v2 + 64);
      *(v2 + 64) = v8;

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_16A18;
      v25[3] = &unk_5D260;
      v25[4] = v2;
      v10 = objc_retainBlock(v25);
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_16B24;
      v24[3] = &unk_5D288;
      v24[4] = v2;
      v11 = objc_retainBlock(v24);
      v12 = sub_30ACC(v2, *(v2 + 48), a2);
      if (v12 <= 1)
      {
        _HKInitializeLogging();
        v13 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          sub_18108(&dword_0, v13, v14, "(#w0) Marking MFA authenticated as it's not required", buf);
        }

        [*(v2 + 48) markMFAAuthenticated];
      }

      [*(v2 + 96) beginRetryConnectionTimeout];
      v15 = sub_2F750(v2);
      v16 = [*(v2 + 48) healthService];
      v17 = [*(v2 + 48) oobInfo];
      v18 = [v17 oobData];
      v23 = 0;
      v19 = [v15 connectHealthService:v16 connectionOptions:v12 sessionHandler:v5 dataHandler:v10 mfaSuccessHandler:v11 autoPairData:v18 error:&v23];
      v20 = v23;

      if (v19)
      {
        [*(v2 + 48) setHealthServiceSessionIdentifier:v19];
      }

      else if (([v20 hk_isHealthKitErrorWithCode:201] & 1) == 0)
      {
        [*(v2 + 96) cancelRetryConnectionTimeout];
        sub_30728(v2, v20);
        v21 = sub_18170();
        sub_2FC38(v21, v22);
      }
    }

    else
    {
      [NSError hk_error:802 description:@"No fitness machine has been found"];
      objc_claimAutoreleasedReturnValue();
      v6 = sub_18098();
      sub_30728(v6, v7);
    }
  }
}

void sub_30728(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    sub_2F80C(a1, v4, 0);
    [*(a1 + 40) deliverError:v4];
  }
}

void sub_3079C(uint64_t a1, int *a2, int a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v8 = [*(a1 + 48) serviceStatus];
    if (!v7 || v8 != a2)
    {
      _HKInitializeLogging();
      v9 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = _HKStringForHealthServiceStatus();
        sub_3B54();
        v14 = 1024;
        v15 = a3;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "(#w0) Connection status changed to %{public}@, finished: %{BOOL}d, error: %{public}@", v13, 0x1Cu);
      }

      if (a2 == &dword_8)
      {
        if (v7)
        {
          sub_30728(a1, v7);
        }
      }

      else if (a2 == (&dword_8 + 1))
      {
        v12 = *(a1 + 64);
        *(a1 + 64) = 0;

        if (*(a1 + 56) == 1)
        {
          sub_30C44(a1, v7);
        }

        else if (([v7 hk_isHealthKitErrorWithCode:201] & 1) == 0)
        {
          sub_30CE8(a1);
        }
      }

      else if (a2 == (&dword_4 + 3))
      {
        HKSessionTrackerAriadneTrigger();
        sub_30BD8(a1);
      }

      [*(a1 + 48) setServiceStatus:a2];
    }
  }
}

void sub_3094C(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if ([*(a1 + 48) dataTransferRequirementsComplete])
    {
      sub_30E90(a1);
      [a1 _queue_handleReceivedCharacteristic:v12 device:v9 error:v10];
    }

    else
    {
      v11 = [[_HDHealthServiceDataUpdate alloc] initWithSessionIdentifier:a3 characteristic:v12 device:v9 error:v10];
      [*(a1 + 64) addObject:v11];
    }
  }
}

id sub_30A28(id result)
{
  if (result)
  {
    sub_7CD4(result);
    HKSessionTrackerAriadneTrigger();
    result = [*(v1 + 96) cancelMfaTimeout];
    if ((*(v1 + 57) & 1) == 0)
    {
      result = [*(v1 + 48) waitingOnMFA];
      if (result)
      {
        [*(v1 + 104) userIsAuthorized];
        _HKInitializeLogging();
        if (sub_7CEC())
        {
          LOWORD(v7) = 0;
          sub_7C80();
          _os_log_impl(v2, v3, v4, v5, v6, 2u);
        }

        result = [*(v1 + 48) markMFAAuthenticated];
        *(v1 + 56) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_30ACC(uint64_t result, void *a2, char a3)
{
  if (result)
  {
    v4 = [a2 oobInfo];

    v5 = v4 != 0;
    v6 = (a3 & 1) == 0 && CFPreferencesGetAppBooleanValue(kHKConnectedGymPreferencesSkipMFA, kHKConnectedGymPreferencesDomain, 0) == 0;
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    v8 = sub_18170();
    if (os_log_type_enabled(v8, v9))
    {
      v10[0] = 67109120;
      v10[1] = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "requireMFA = %{BOOL}d", v10, 8u);
    }

    if (v6)
    {
      return v5 | 2;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

void sub_30BD8(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    [v1[12] cancelRetryConnectionTimeout];
    [v1[5] handleBLEConnectionCompletedSuccessfully:1];
    if ([v1[6] waitingOnMFA])
    {
      [v1[12] beginMfaTimeout];
    }

    [v1[6] markBluetoothConnectionComplete];

    sub_31BE8(v1);
  }
}

void sub_30C44(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v5 = a2;
    v6 = sub_180B8();
    dispatch_assert_queue_V2(v6);
    sub_30DF4(a1, 6, v2);

    dispatch_time(0, 500000000);
    v7 = *(a1 + 16);
    sub_4FB4();
    sub_7D04();
    sub_181AC();
    dispatch_after(v8, v9, v10);
    *(a1 + 56) = 0;
  }
}

void sub_30CE8(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    [v1[5] handleBLEConnectionCompletedSuccessfully:0];
    [v1[6] setHealthServiceSessionIdentifier:0];
    _HKInitializeLogging();
    if (sub_7CEC())
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = "[HDFitnessMachineManager _queue_handleBluetoothDisconnection]";
      sub_7C80();
      _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    }

    [v1[12] cancelDisconnectTimeout];
    v8 = sub_2F750(v1);
    [v1[6] healthService];
    objc_claimAutoreleasedReturnValue();
    [sub_180B8() unpairHealthServiceIfNecessary:v2];

    v9 = sub_181F0();
    sub_2FC38(v9, v10);
  }
}

void sub_30DF4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = *(a1 + 16);
    v7 = a3;
    dispatch_assert_queue_V2(v5);
    v6 = [*(a1 + 48) connectionState];
    [sub_1814C() setConnectionState:?];
    sub_3201C(a1, v6, a2, v7, 1);
  }
}

id sub_30E90(id result)
{
  if (result)
  {
    sub_7CD4(result);
    while (1)
    {
      result = [v1[8] count];
      if (!result)
      {
        break;
      }

      v4 = [v1[8] firstObject];
      [v4 characteristic];
      objc_claimAutoreleasedReturnValue();
      [sub_180B8() device];
      objc_claimAutoreleasedReturnValue();
      v5 = [sub_181D8() error];
      [v1 _queue_handleReceivedCharacteristic:v2 device:v3 error:v5];

      [v1[8] removeObjectAtIndex:0];
    }
  }

  return result;
}

void *sub_30F3C(void *result, void *a2)
{
  if (result)
  {
    v4 = result;
    v5 = result[2];
    v6 = a2;
    v7 = sub_180B8();
    dispatch_assert_queue_V2(v7);
    v8 = [v4[6] fitnessMachine];
    [v8 _setDevice:v2];

    [v4[6] fitnessMachine];
    objc_claimAutoreleasedReturnValue();
    [sub_181FC() manufacturer];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() _setBrand:v3];

    v9 = v4[4];
    v10 = [v2 manufacturer];

    [v9 setMachineBrand:v10];
    v11 = sub_181F0();
    sub_31D84(v11, v12);
    v13 = v4[9];
    sub_4FB4();
    sub_7D04();
    sub_181AC();
    return [v14 notifyObservers:?];
  }

  return result;
}

void sub_31030(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if ((sub_31348(a1, v3) & 1) == 0)
    {
      [*(a1 + 32) handleDataCharacteristic:v3];
    }
  }
}

void sub_3109C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if ((sub_313C4(a1, v4) & 1) == 0)
    {
      v5 = [*(a1 + 48) machineState];
      switch([v4 machineState])
      {
        case 1uLL:
          if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            goto LABEL_5;
          }

          if (!v5)
          {
            [*(a1 + 80) sendInitialValues];
            v6 = 4;
            goto LABEL_16;
          }

          break;
        case 2uLL:
        case 4uLL:
          sub_3146C(a1);
LABEL_5:
          v6 = 2;
          goto LABEL_16;
        case 3uLL:
          [*(a1 + 96) beginPauseTimeout];
          [*(a1 + 80) pauseCurrentSession];
          v6 = 3;
          goto LABEL_16;
        case 5uLL:
          [*(a1 + 96) cancelWaitForMachineStartTimeout];
          if (v5 == 3)
          {
            [*(a1 + 96) cancelPauseTimeout];
            [*(a1 + 80) resumeCurrentSession];
          }

          else if (v5 == 4)
          {
            _HKInitializeLogging();
            v7 = HKLogWorkouts;
            if (sub_1817C())
            {
              v8 = v7;
              v2 = [v4 updateTime];
              sub_3B54();
              sub_1813C();
              _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
            }

            [sub_181E4() updateTime];
            objc_claimAutoreleasedReturnValue();
            [sub_180A8() setMachineStartDate:?];

            [*(a1 + 48) setMachinePreferredUntilDate:0];
          }

          v6 = 1;
LABEL_16:
          if (v6 != v5)
          {
            [v4 updateTime];
            objc_claimAutoreleasedReturnValue();
            v14 = sub_180B8();
            sub_31508(v14, v6, v5);
          }

          break;
        default:
          break;
      }
    }
  }
}

void sub_31294(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (([*(a1 + 48) waitingOnInitialMachineStatus] & 1) != 0 || objc_msgSend(*(a1 + 48), "waitingOnInitialMachineData"))
    {
      _HKInitializeLogging();
      v4 = sub_180DC();
      if (os_log_type_enabled(v4, v5))
      {
        sub_180C4();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
      }

      [sub_1814C() setInitialEnhancedFTMSData:?];
    }

    else
    {
      [*(a1 + 32) handleDataCharacteristic:v3];
    }
  }
}

uint64_t sub_31348(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (([*(a1 + 48) waitingOnInitialMachineStatus] & 1) != 0 || objc_msgSend(*(a1 + 48), "waitingOnInitialMachineData"))
    {
      [*(a1 + 48) setWaitingOnInitialMachineData:0];
      [sub_1814C() setInitialMachineData:?];
      sub_315E4(a1);
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_313C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (([*(a1 + 48) waitingOnInitialMachineStatus] & 1) != 0 || objc_msgSend(*(a1 + 48), "waitingOnInitialMachineData"))
    {
      [*(a1 + 48) setWaitingOnInitialMachineStatus:0];
      v4 = [v3 machineState];
      v5 = *(a1 + 48);
      if (v4 != &dword_0 + 1)
      {
        [v5 setInitialMachineStatus:v3];
        sub_315E4(a1);
        a1 = 1;
        goto LABEL_7;
      }

      [v5 setWaitingOnInitialMachineData:0];
      [*(a1 + 48) setInitialMachineData:0];
    }

    a1 = 0;
  }

LABEL_7:

  return a1;
}

void *sub_3146C(void *result)
{
  if (result)
  {
    v1 = result;
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (sub_7CEC())
    {
      v6[0] = 0;
      sub_18108(&dword_0, v2, v3, "Delivering final Eurotas values and disconnecting", v6);
    }

    v4 = v1[10];
    sub_4FB4();
    sub_7D04();
    sub_181AC();
    return [v5 deliverFinalValuesAndDetachWithCompletion:?];
  }

  return result;
}

void sub_31508(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (a2 == 1)
    {
      v6 = [*(a1 + 48) machineStartDate];

      if (!v6)
      {
        [sub_1814C() setMachineStartDate:?];
        v7 = *(a1 + 72);
        sub_4FB4();
        sub_7D04();
        v11 = sub_17150;
        v12 = &unk_5D2B0;
        v13 = a1;
        [v8 notifyObservers:v10];
      }
    }

    v9 = [*(a1 + 48) machineState];
    [*(a1 + 48) setMachineState:a2];
    [sub_1814C() setMachineStateUpdateDate:?];
    sub_31EA0(a1, v9, v5);
  }
}

void sub_315E4(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (([*(v1 + 48) waitingOnInitialMachineStatus] & 1) == 0 && (objc_msgSend(*(v1 + 48), "waitingOnInitialMachineData") & 1) == 0)
    {
      v3 = [*(v1 + 48) initialMachineData];
      v4 = [v3 elapsedTime];

      v5 = [*(v1 + 48) initialMachineData];
      [v5 updateTime];
      objc_claimAutoreleasedReturnValue();
      v6 = [sub_181D8() dateWithTimeInterval:v2 sinceDate:-v4];

      _HKInitializeLogging();
      v7 = sub_180DC();
      if (os_log_type_enabled(v7, v8))
      {
        LODWORD(v22) = 138543362;
        *(&v22 + 4) = v6;
        sub_180C4();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      sub_31508(v1, 1, v6);
      v14 = [*(v1 + 48) initialMachineData];
      v15 = [v14 updateTime];
      sub_317E4(v1, v15);

      [*(v1 + 32) setMachineStartDate:v6];
      [*(v1 + 48) initialMachineData];
      objc_claimAutoreleasedReturnValue();
      v16 = sub_1812C();
      sub_31030(v16);

      v17 = [*(v1 + 48) initialEnhancedFTMSData];

      if (v17)
      {
        [*(v1 + 48) initialEnhancedFTMSData];
        objc_claimAutoreleasedReturnValue();
        v18 = sub_1812C();
        sub_31294(v18, v19);
      }

      [*(v1 + 48) initialMachineStatus];
      objc_claimAutoreleasedReturnValue();
      v20 = sub_1812C();
      sub_3109C(v20, v21);

      [*(v1 + 48) setInitialMachineStatus:0];
      [*(v1 + 48) setInitialMachineData:0];
      [*(v1 + 48) setInitialEnhancedFTMSData:0];
    }
  }
}

void *sub_317E4(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[6];
    v5 = a2;
    [sub_180B8() setMachinePreferredUntilDate:v2];
    [v3[4] setMachinePreferredUntilDate:v2];

    v6 = v3[9];
    sub_4FB4();
    sub_7D04();
    sub_181AC();
    return [v7 notifyObservers:?];
  }

  return result;
}

void sub_31874(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    [*(v1 + 96) cancelMfaTimeout];
    [*(v1 + 96) cancelWaitForMachineStartTimeout];
    if ([*(v1 + 48) healthServiceSessionIdentifier])
    {
      _HKInitializeLogging();
      if (sub_7CEC())
      {
        LOWORD(v8) = 0;
        sub_7C80();
        _os_log_impl(v2, v3, v4, v5, v6, 2u);
      }

      *(v1 + 56) = 0;
      [*(v1 + 96) beginDisconnectTimeout];
      v7 = sub_2F750(v1);
      [v7 disconnectHealthService:{objc_msgSend(*(v1 + 48), "healthServiceSessionIdentifier")}];
    }
  }
}

void sub_31A54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    sub_4FB4();
    sub_7D04();
    v5 = sub_171E0;
    v6 = &unk_5D300;
    v7 = v3;
    sub_321D0(a1, v4);
  }
}

void sub_31AD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (a2 == 2)
    {
      if ([*(a1 + 96) isDisconnectTimerValid])
      {
        _HKInitializeLogging();
        v6 = HKLogServices;
        v7 = sub_180DC();
        if (os_log_type_enabled(v7, v8))
        {
          *v17 = 0;
          sub_18108(&dword_0, v6, v9, "Re-attempting disconnect", v17);
        }

        sub_31874(a1);
      }

      else if ([*(a1 + 96) isRetryConnectionTimerValid])
      {
        _HKInitializeLogging();
        v10 = sub_180DC();
        if (os_log_type_enabled(v10, v11))
        {
          sub_180C4();
          _os_log_impl(v12, v13, v14, v15, v16, 2u);
        }

        sub_303C4(a1, *(a1 + 56) == 0);
        [*(a1 + 96) cancelRetryConnectionTimeout];
      }
    }
  }
}

void sub_31BE8(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if ([*(v1 + 48) dataTransferRequirementsComplete] && objc_msgSend(*(v1 + 48), "connectionState") != &dword_4)
    {
      [*(v1 + 96) beginWaitForMachineStartTimeout];
      if ((*(v1 + 57) & 1) == 0 && ([*(v1 + 48) waitingOnMFA] & 1) == 0)
      {
        _HKInitializeLogging();
        if (sub_7CEC())
        {
          sub_7C80();
          _os_log_impl(v10, v11, v12, v13, v14, 2u);
        }

        *(v1 + 56) = 1;
      }

      sub_30DF4(v1, 4, 0);
      [*(v1 + 80) attachHealthServiceSession:{objc_msgSend(*(v1 + 48), "healthServiceSessionIdentifier")}];
      sub_30E90(v1);
    }

    else
    {
      _HKInitializeLogging();
      v2 = HKLogWorkouts;
      if (sub_7CEC())
      {
        v3 = *(v1 + 48);
        v4 = v2;
        [sub_181FC() dataTransferPermitted];
        [*(v1 + 48) waitingOnBluetoothConnection];
        [*(v1 + 48) waitingOnActivityType];
        sub_7C80();
        _os_log_impl(v5, v6, v7, v8, v9, 0x14u);
      }
    }
  }
}

void sub_31D84(uint64_t a1, int a2)
{
  if (a1)
  {
    sub_7CD4(a1);
    _HKInitializeLogging();
    v4 = HKLogWorkouts;
    v5 = sub_180DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v2 + 48);
      v8 = v4;
      v9 = [v7 fitnessMachine];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Fitness machine information updated %@", buf, 0xCu);
    }

    sub_4FB4();
    sub_7D04();
    v11 = sub_17234;
    v12 = &unk_5D300;
    v13 = v2;
    sub_321D0(v2, v10);
    if (a2)
    {
      [*(v2 + 40) updatedFitnessMachine];
    }
  }
}

void sub_31EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v7 = *(a1 + 40);
    [*(a1 + 48) machineState];
    [*(a1 + 48) fitnessMachineSessionUUID];
    objc_claimAutoreleasedReturnValue();
    [sub_181B8() updatedFitnessMachineState:? fitnessMachineSessionUUID:?];

    _HKInitializeLogging();
    v8 = HKLogWorkouts;
    if (sub_1817C())
    {
      v9 = v8;
      sub_18120();
      v10 = _HKStringForFitnessMachineState();
      [*(a1 + 48) machineState];
      v11 = _HKStringForFitnessMachineState();
      *buf = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Fitness machine state changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    sub_4FB4();
    sub_7D04();
    v13 = sub_172A4;
    v14 = &unk_5D328;
    v15 = a1;
    v17 = a2;
    v16 = v6;
    sub_321D0(a1, v12);
  }
}

void sub_3201C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = _HKStringForFitnessMachineConnectionState();
      v13 = _HKStringForFitnessMachineConnectionState();
      v14 = [*(a1 + 48) fitnessMachineSessionUUID];
      *buf = 138544130;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Fitness machine connection state changed from %{public}@ to %{public}@, error %{public}@ in sessionID %{public}@", buf, 0x2Au);
    }

    sub_7C60();
    v16[1] = 3221225472;
    v16[2] = sub_1733C;
    v16[3] = &unk_5D350;
    v18 = a3;
    v19 = a2;
    v16[4] = a1;
    v15 = v9;
    v17 = v15;
    sub_321D0(a1, v16);
    if (a5)
    {
      [*(a1 + 40) updatedConnectionStateWithError:v15];
    }
  }
}

void sub_321D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = *(a1 + 24);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v3[2](v3, *(*(&v9 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

void sub_3285C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    [v7 uuid];
    objc_claimAutoreleasedReturnValue();
    v4 = sub_18098();
    v6 = sub_300A0(v4, v5);

    if (!v6)
    {
      [*(a1 + 24) addObject:v7];
    }
  }
}

void sub_328E8(uint64_t a1)
{
  sub_2FC38(*(a1 + 32), 0);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sub_30728(v2, v3);
}

void sub_329A0(uint64_t a1)
{
  [*(*(a1 + 32) + 48) markActivityTypeProvided];
  [sub_181CC() markDataTransferPermitted];
  v2 = *(a1 + 32);

  sub_31BE8(v2);
}

void sub_329F4(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    _HKInitializeLogging();
    if (sub_7CEC())
    {
      sub_7C80();
      _os_log_impl(v1, v2, v3, v4, v5, 0xCu);
    }

    v6 = sub_181F0();
    sub_2FC38(v6, v7);
  }
}

void sub_32AAC(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v3 = [sub_181CC() fitnessMachine];
  v4 = [v3 device];

  if (v4)
  {
    v5 = [*(*(a1 + 32) + 48) fitnessMachine];
    [v5 device];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_181D8();
    sub_30F3C(v6, v1);
  }

  if (![sub_181CC() healthServiceSessionIdentifier])
  {
    [sub_181CC() setHealthServiceSessionIdentifier:?];
    ++qword_6B790;
  }

  if (([*(*(a1 + 32) + 80) attached] & 1) == 0)
  {
    [*(*(a1 + 32) + 80) attachHealthServiceSession:{objc_msgSend(*(*(a1 + 32) + 48), "healthServiceSessionIdentifier")}];
  }

  v7 = *(a1 + 32);

  sub_31D84(v7, 0);
}

void sub_32BB4(uint64_t *a1, uint64_t a2)
{
  v3 = sub_2F750(*a1);
  [v3 unpairHealthServiceIfNecessary:a2];
}

void sub_32C08(void *a1)
{
  v1 = a1;
  v2 = _HKStringForFitnessMachineType();
  sub_3B54();
  sub_C29C();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_32CA4()
{
  [NSError hk_error:310 description:@"Fitness Machine brand not detected"];
  objc_claimAutoreleasedReturnValue();
  v1 = sub_18098();
  sub_30728(v1, v2);
  v3 = sub_18170();
  sub_2FC38(v3, v4);
}

void sub_32CF4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[HDFitnessMachineManager pairingManagerWillBeginPairing:fitnessMachineToken:]";
  _os_log_debug_impl(&dword_0, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void sub_32DEC(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "NFC Enabled State Change %{BOOL}d", v2, 8u);
}

void sub_32E68(void *a1)
{
  if (a1)
  {
    v2 = [a1 profile];
    v3 = [v2 fitnessMachineManager];
    v4 = [v3 metricsCollector];

    [v4 removeObserver:a1];
  }
}

id sub_32EEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = [v10 unsignedIntegerValue] - 1;
          if (v11 <= 0x12 && ((0x51AD9u >> v11) & 1) != 0)
          {
            v12 = **(&off_5D3C0 + v11);
            if (v12)
            {
              v13 = v12;
              v14 = [v5 objectForKeyedSubscript:v10];
              [v4 setObject:v14 forKeyedSubscript:v13];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v15 = v4;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_330A8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%{public}@: Couldn't notify GymKit metrics data source client of collected metrics with error: %{public}@", &v4, 0x16u);
}

void sub_33134(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_19430(a1);
    v4[1] = 3221225472;
    v4[2] = sub_19158;
    v4[3] = &unk_5CA50;
    v5 = v2;
    v4[4] = v1;
    dispatch_async(v3, v4);
  }
}

void sub_33198(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_19274;
    v6[3] = &unk_5C8C8;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_33240(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [HDDaemonTransaction transactionWithOwner:a1 activityName:@"Connect"];
    v5 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18CBC;
    block[3] = &unk_5C788;
    block[4] = a1;
    v8 = v3;
    v9 = v4;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

void sub_3331C(uint64_t a1)
{
  if (a1)
  {
    v3[1] = 3221225472;
    v3[2] = sub_18B48;
    v3[3] = &unk_5C9B0;
    v3[4] = sub_19430(a1);
    v3[5] = v1;
    dispatch_async(v2, v3);
  }
}

void sub_3337C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_3331C(WeakRetained);
}

void sub_333CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_3331C(WeakRetained);
}

uint64_t sub_334AC(uint64_t result, int a2, int a3)
{
  if (!result)
  {
    return result;
  }

  objc_opt_class();
  sub_19AD8();
  result = [v5 uint8:? toData:? before:?];
  if (!result)
  {
    return result;
  }

  if (a2 == 65534)
  {
    if (a3 != 1 && a3 != 4)
    {
      _HKInitializeLogging();
      v12 = HKLogServices;
      result = os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v13[0] = 67109120;
        v13[1] = a3;
        _os_log_error_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Disabled value was sent for a non-heart rate type: %d", v13, 8u);
        return 0;
      }

      return result;
    }

    goto LABEL_11;
  }

  if (a2 == 0xFFFF)
  {
LABEL_11:
    objc_opt_class();
    sub_19AD8();
    result = [v7 uint8:? toData:? before:?];
    if (result)
    {
      objc_opt_class();
      sub_19AD8();
      return ([v8 uint8:? toData:? before:?] & 1) != 0;
    }

    return result;
  }

  objc_opt_class();
  sub_19AD8();
  result = [v9 uint8:? toData:? before:?];
  if (result)
  {
    objc_opt_class();
    sub_19AD8();
    result = [v10 uint8:? toData:? before:?];
    if (result)
    {
      objc_opt_class();
      sub_19AD8();
      result = [v11 uint16:? toData:? before:?];
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_33654(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_33664(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v4 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      v8 = v4;
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      sub_1AA40();
      v11 = v3;
      _os_log_debug_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "Notifying service manager %@ with characteristic %@", v10, 0x16u);
    }

    v5 = objc_loadWeakRetained((a1 + 72));
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 deviceInformation];
    [v5 characteristicReceived:v3 device:v7];
  }
}

void sub_33784(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v4 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = NSStringFromSelector("_bufferCharacteristicToBeNotified:");
      *buf = 138412546;
      v11 = a1;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
    }

    v7 = *(a1 + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1A8C8;
    v8[3] = &unk_5C8C8;
    v8[4] = a1;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void sub_338E0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 96) objectAtIndexedSubscript:0];
    v7 = v6;
    if (v6 && *(v6 + 24))
    {
      (*(*(v6 + 24) + 16))(*(v6 + 24), a1, v8, v5);
    }

    [*(a1 + 96) removeObjectAtIndex:0];
    sub_339AC(a1);
  }
}

void sub_339AC(id *a1)
{
  if (a1 && [a1[12] count])
  {
    v2 = [a1[12] objectAtIndexedSubscript:0];
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 16);
    }

    v5 = [objc_opt_class() uuid];
    v6 = [a1[10] objectForKeyedSubscript:v5];
    if (v6)
    {
      if (v3)
      {
        v7 = *(v3 + 8) ^ 1;
        v8 = *(v3 + 16);
      }

      else
      {
        v8 = 0;
        v7 = 1;
      }

      v22 = 0;
      v9 = v8;
      v10 = [v9 getBinaryValueWithError:&v22];
      v11 = v22;

      if (!v10 || v11)
      {
        sub_338E0(a1, 0, v11);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(a1 + 6);
        v13 = [WeakRetained cbPeripheral];

        _HKInitializeLogging();
        v14 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v5;
          if (v3)
          {
            v15 = *(v3 + 16);
          }

          else
          {
            v15 = 0;
          }

          v20 = v15;
          v16 = v14;
          v17 = objc_loadWeakRetained(a1 + 6);
          *buf = 138413826;
          v24 = v10;
          v25 = 2112;
          v26 = v6;
          v27 = 2112;
          v28 = v13;
          v29 = 2112;
          v30 = v15;
          v31 = 2112;
          v32 = v17;
          v33 = 2112;
          v34 = a1;
          v35 = 2048;
          v36 = v7;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Attempting to write data (%@) to CBCharacteristic: %@, CBPeripheral: %@, HDCharacteristic: %@, HDPeripheral: %@, HDHealthService: %@ with write type %ld", buf, 0x48u);

          v5 = v21;
        }

        [v13 writeValue:v10 forCharacteristic:v6 type:v7];
        if (!v3 || (*(v3 + 8) & 1) == 0)
        {
          sub_338E0(a1, 0, 0);
        }
      }
    }

    else
    {
      [NSError hk_error:306 description:@"Write characteristic not supported"];
      v19 = v18 = v5;
      sub_338E0(a1, 0, v19);

      v5 = v18;
    }
  }
}

void sub_33C50(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_33CCC;
    block[3] = &unk_5C800;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

unsigned __int8 *sub_33DF4(unsigned __int8 *result)
{
  if (result)
  {
    v1 = result;
    v2 = atomic_load(result + 32);
    if (v2)
    {
      _HKInitializeLogging();
      v3 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = NSStringFromSelector("_dataQueue_deliverDataIfPossible");
        *buf = 138412546;
        v17 = v1;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
      }

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = *(v1 + 16);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            sub_33664(v1, *(*(&v11 + 1) + 8 * v10));
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }

      return [*(v1 + 16) removeAllObjects];
    }
  }

  return result;
}

void sub_33FA4(char a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a2 + 24);
  }

  v4 = *a3;
  v5 = v3;
  v6 = [NSError hk_error:300 description:@"Device disconnected"];
  (v3)[2](v5, v4, 0, v6);
}

void sub_340D8(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Characteristic has no writable properties and will not be marked writable. No data will be written to this characteristic: %@", &v3, 0xCu);
}

void sub_34154(uint64_t a1, id **a2, _HDHealthServiceWriteOperation **a3)
{
  v6 = objc_alloc_init(_HDHealthServiceWriteOperation);
  sub_33654(v6, *(a1 + 40));
  if (v6)
  {
    v6->_expectResponse = *(a1 + 56);
    objc_setProperty_nonatomic_copy(v6, v7, *(a1 + 48), 24);
  }

  [(*a2)[12] addObject:v6];
  if (*(*a2 + 34) == 1 && [(*a2)[12] count] == &dword_0 + 1)
  {
    sub_339AC(*a2);
  }

  *a3 = v6;
}

void sub_341F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "|>- readProperty: %@", &v2, 0xCu);
}

void sub_342DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*(a2 + 40) value];
  sub_338E0(v3, v4, *(a2 + 48));
}

id *sub_3433C(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = HDFitnessMachineStateTimer;
    v13 = objc_msgSendSuper2(&v17, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a2);
      a1[2] = a3;
      objc_storeStrong(a1 + 5, a4);
      v14 = objc_retainBlock(v12);
      v15 = a1[4];
      a1[4] = v14;
    }
  }

  return a1;
}

void sub_3440C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 24);
      *(a1 + 24) = 0;

      _HKInitializeLogging();
      v4 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 8);
        v5 = v4;
        sub_1B5A4(&dword_0, v6, v7, "HDFitnessMachineStateTimer: Canceling %@ timer", v8, v9, v10, v11, 2u);
      }
    }
  }
}

void sub_345B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_345D4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_3474C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_34768(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_348E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_348FC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_34A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_34A90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_34C08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_34C24(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

void sub_34D9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_34DB8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_34F30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_34F4C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_350C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  sub_1B5DC();
  objc_destroyWeak(&location);
  _Unwind_Resume(v14);
}

void sub_350E0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_352F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35318(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_353A8(char a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v10 = *(a2 + 8);
    v3 = a3;
    sub_1B5A4(&dword_0, v4, v5, "HDFitnessMachineStateTimer: %@ timer already running", v6, v7, v8, v9, 2u);
  }
}

void sub_35434(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
  }

  v3 = a2;
  sub_1B5A4(&dword_0, v4, v5, "HDFitnessMachineStateTimer: %@ timer expired", v6, v7, v8, v9, 2u);
}

void sub_354C4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Unknown stop or pause procedure 0x%02x, returning unknown status.", v2, 8u);
}

void sub_3553C(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "HDFitnessMachineStatus ignoring fitness machine status op code 0x%02x, returning unknown status.", v2, 8u);
}

dispatch_queue_t *sub_355B4(dispatch_queue_t *result)
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(result[3]);
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (sub_7CEC())
    {
      v3 = v2;
      v4 = NSStringFromSelector("_queue_handleMFASuccessNotification");
      *buf = 138543618;
      v13 = v1;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v5 = v1[11];
    sub_4FB4();
    v8 = 3221225472;
    v9 = sub_20810;
    v10 = &unk_5C800;
    v11 = v1;
    return [v6 hk_withLock:v7];
  }

  return result;
}

void sub_356D8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = NSStringFromSelector("_disconnectPeripheralWithDeviceIdentifier:error:");
      v31 = 138544130;
      v32 = a1;
      v33 = 2114;
      v34 = v9;
      v35 = 2114;
      v36 = v5;
      v37 = 2114;
      v38 = v6;
      sub_24C28(&dword_0, v8, v10, "%{public}@: %{public}@: deviceIdentifier: %{public}@, error: %{public}@", &v31);
    }

    sub_201B0(a1, v5);
    sub_24B0C();
    v12 = v11;
    sub_24BB0();
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v22 = v14;
      v23 = *v30;
      do
      {
        v24 = 0;
        do
        {
          sub_24B5C(v14, v15, v16, v17, v18, v19, v20, v21, v28, v29, v30);
          if (v25 != v23)
          {
            objc_enumerationMutation(v12);
          }

          v26 = *(v29 + 8 * v24);
          if (v26)
          {
            v27 = *(v26 + 16);
          }

          else
          {
            v27 = 0;
          }

          sub_1F550(a1, v27, v6);
          v24 = v24 + 1;
        }

        while (v22 != v24);
        sub_24BB0();
        v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
        v22 = v14;
      }

      while (v14);
    }
  }
}

void sub_35898(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = NSStringFromSelector("_queue_notifyBluetoothStatusUpdates:error:");
      v25 = 138543874;
      v26 = a1;
      v27 = 2114;
      v28 = v8;
      v29 = 2048;
      v30 = a2;
      sub_24B2C(&dword_0, v7, v9, "%{public}@: %{public}@: status: %ld", &v25);
    }

    v23 = 0u;
    v24 = 0;
    v10 = [*(a1 + 120) allValues];
    sub_24BB0();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v20 = v12;
      do
      {
        v21 = 0;
        do
        {
          sub_24B5C(v12, v13, v14, v15, v16, v17, v18, v19, v23, *(&v23 + 1), v24);
          if (v22 != 0x100000CFEEDFACFLL)
          {
            objc_enumerationMutation(v10);
          }

          v12 = (*(*(*(&v23 + 1) + 8 * v21) + 16))();
          v21 = v21 + 1;
        }

        while (v20 != v21);
        sub_24BB0();
        v12 = [v10 countByEnumeratingWithState:? objects:? count:?];
        v20 = v12;
      }

      while (v12);
    }
  }
}

void sub_35A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 56))
  {
    v3 = objc_alloc_init(HDIdentifierTable);
    v4 = *(a1 + 32);
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = *(a1 + 32);
  }

  if (!*(v2 + 64))
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = v6;
  }

  v12 = sub_35BB0([_HDHealthServiceDiscoveryInfo alloc], *(a1 + 48), *(a1 + 40), *(a1 + 80), *(a1 + 64) == 1);
  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 56) addObject:v12];
  if (v12)
  {
    v12[3] = *(*(*(a1 + 56) + 8) + 24);
  }

  v9 = sub_35C7C(*(a1 + 32), *(a1 + 72), *(*(*(a1 + 56) + 8) + 24));
  sub_35D8C(v12, v9);

  v10 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v12];
  }

  else
  {
    v11 = [NSMutableArray arrayWithObject:v12];
    [*(*(a1 + 32) + 64) setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }
}

id *sub_35BB0(id *a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = _HDHealthServiceDiscoveryInfo;
    a1 = objc_msgSendSuper2(&v16, "init");
    if (a1)
    {
      v11 = [v9 copy];
      v12 = a1[4];
      a1[4] = v11;

      objc_storeStrong(a1 + 5, a3);
      *(a1 + 16) = a4;
      *(a1 + 17) = a5;
      v13 = +[NSMutableSet set];
      v14 = a1[1];
      a1[1] = v13;
    }
  }

  return a1;
}

NSObject *sub_35C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

    v8 = dispatch_time(0, 1000000000 * a2);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
    sub_7C60();
    v10[1] = 3221225472;
    v10[2] = sub_1E170;
    v10[3] = &unk_5D668;
    v10[4] = a1;
    v10[5] = "_createDiscoveryTimeout:forIdentifier:";
    v10[6] = a2;
    v10[7] = a3;
    dispatch_source_set_event_handler(v7, v10);
    dispatch_resume(v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_35D8C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_24ADC(a1, a2);
  }
}

id sub_35D98(id a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = HDHealthServiceClassForCBUUID(v9);
    if (v13 && (v14 = v13, [v13 serviceType] <= 3))
    {
      v15 = [v12 objectForKeyedSubscript:CBAdvertisementDataLocalNameKey];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = [v10 name];
      }

      v22 = v17;

      v25 = [HKHealthService alloc];
      v26 = [v14 serviceType];
      v27 = [v10 identifier];
      a1 = [v25 initWithType:v26 identifier:v27 name:v22];

      v28 = [v9 UUIDString];
      [a1 setServiceId:v28];

      [a1 setAdvertisementData:v11];
      [a1 setPeripheral:v10];
    }

    else
    {
      _HKInitializeLogging();
      v18 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        v20 = [v9 UUIDString];
        sub_3B54();
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Service with UUID %@ not supported", v30, 0xCu);
      }

      v21 = [HKHealthService alloc];
      v22 = [v10 identifier];
      v23 = [v10 name];
      v24 = [v9 UUIDString];
      a1 = [v21 initUnknownServiceWithIdentifier:v22 name:v23 serviceId:v24];
    }
  }

  return a1;
}

id *sub_36008(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, double a9)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a8;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = _HDHealthServiceConnectionInfo;
    a1 = objc_msgSendSuper2(&v32, "init");
    if (a1)
    {
      v23 = [v17 copy];
      v24 = a1[3];
      a1[3] = v23;

      v25 = [v18 copy];
      v26 = a1[4];
      a1[4] = v25;

      v27 = [v19 copy];
      v28 = a1[5];
      a1[5] = v27;

      v29 = [v20 copy];
      v30 = a1[6];
      a1[6] = v29;

      a1[7] = a7;
      if ((a7 & 2) != 0)
      {
        a1[8] = &dword_0 + 1;
      }

      if (a7)
      {
        objc_storeStrong(a1 + 9, a6);
      }

      objc_storeStrong(a1 + 10, a8);
      a1[11] = 0;
      *(a1 + 13) = a9;
    }
  }

  return a1;
}

uint64_t sub_3616C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    goto LABEL_43;
  }

  _HKInitializeLogging();
  v9 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector("_connectHealthService:connectionInfo:error:");
    sub_24A98();
    sub_24B68();
    sub_24C28(&dword_0, v10, v12, "%{public}@: %{public}@: hkService: %{public}@, connectionInfo: %{public}@", buf);
  }

  if (!v7)
  {
    _HKInitializeLogging();
    if (!sub_24B98())
    {
LABEL_42:
      [NSError hk_assignError:a4 code:303 format:@"An internal service session error has occurred.", v77];
      goto LABEL_43;
    }

    *buf = 0;
LABEL_46:
    sub_24A88();
    _os_log_error_impl(v72, v73, v74, v75, v76, 2u);
    goto LABEL_42;
  }

  if (!v8 || !v8[3])
  {
    _HKInitializeLogging();
    if (!sub_24B98())
    {
      goto LABEL_42;
    }

    *buf = 0;
    goto LABEL_46;
  }

  if ([*(a1 + 16) state] != &dword_4 + 1)
  {
    +[NSError hk_assignError:code:format:](NSError, "hk_assignError:code:format:", a4, 201, @"Bluetooth state: %ld", [*(a1 + 16) state]);
LABEL_43:
    v36 = 0;
    goto LABEL_44;
  }

  v13 = [v7 peripheral];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    _HKInitializeLogging();
    v15 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v7 type];
      v18 = [v7 identifier];
      *buf = 138543874;
      *v81 = a1;
      *&v81[8] = 2048;
      *&v81[10] = v17;
      v82 = 2114;
      v83 = v18;
      sub_24B2C(&dword_0, v16, v19, "%{public}@: No peripheral was found on service of type %ld. retrievePeripheralsWithIdentifier: %{public}@", buf);
    }

    v20 = *(a1 + 16);
    v21 = [v7 identifier];
    v86 = v21;
    v22 = [NSArray arrayWithObjects:&v86 count:1];
    v23 = [v20 retrievePeripheralsWithIdentifiers:v22];

    if ([v23 count] >= 2)
    {
      _HKInitializeLogging();
      v24 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        v62 = v24;
        v63 = [v7 identifier];
        sub_24BD4();
        *&v81[10] = v23;
        _os_log_error_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "*** connectHealthService, multiple peripherals for identifier %@, %@", buf, 0x16u);
      }
    }

    v14 = [v23 firstObject];

    if (!v14)
    {
      _HKInitializeLogging();
      v46 = HKLogServices;
      if (sub_24B98())
      {
        v64 = v46;
        v65 = [v7 name];
        *buf = 138412290;
        *v81 = v65;
        sub_24A88();
        _os_log_error_impl(v66, v67, v68, v69, v70, 0xCu);
      }

      v14 = [v7 name];
      [NSError hk_assignError:a4 code:313 format:@"The health device %@ was not found for the requested health type.", v14];
      goto LABEL_39;
    }
  }

  _HKInitializeLogging();
  v25 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    sub_24A98();
    *&v81[10] = v14;
    v82 = v26;
    v83 = v7;
    sub_24B2C(&dword_0, v25, v27, "%{public}@: Attempt connection to peripheral (%{public}@) if service (%{public}@) enabled", buf);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v29 = [WeakRetained database];

  v30 = [v7 identifier];
  v78 = v29;
  v79 = 0;
  LOBYTE(v29) = [HDServiceEntity healthUpdatesEnabledForDevice:v30 inDatabase:v29 error:&v79];
  v31 = v79;
  v32 = v31;
  if (v29)
  {

LABEL_24:
    if ((v8[7] & 4) != 0)
    {
      v34 = [HDServiceEntity insertOrUpdateService:v7 healthDatabase:v78 error:0];
    }

    v35 = sub_1EC50(a1, v14, v7, v8);
    if (v35)
    {
      v36 = v35;
      v37 = [v7 name];
      v38 = [NSString stringWithFormat:@"Connected to peripheral %@", v37];
      HDSetHealthInUseDefaultWithReason();

      _HKInitializeLogging();
      v39 = HKLogServices;
      if (sub_24B80())
      {
        v40 = v39;
        v41 = NSStringFromSelector("_connectHealthService:connectionInfo:error:");
        sub_24A98();
        sub_24B68();
        v84 = 2048;
        v85 = v36;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: hkService: %{public}@, connectionInfo: %{public}@ -> sessionIdentifier: %lu", buf, 0x34u);
      }

      goto LABEL_40;
    }

    _HKInitializeLogging();
    v42 = HKLogServices;
    if (sub_24B98())
    {
      v47 = v42;
      v48 = [v7 type];
      v49 = [v7 name];
      *buf = 67109378;
      *v81 = v48;
      *&v81[4] = 2112;
      *&v81[6] = v49;
      sub_24A88();
      _os_log_error_impl(v50, v51, v52, v53, v54, 0x12u);
    }

    v43 = [v7 name];
    [NSError hk_assignError:a4 code:305 format:@"The health device %@ was not found for the requested health type.", v43];
    goto LABEL_35;
  }

  v33 = [v31 hk_isServiceDeviceNotFoundError];

  if (v33)
  {
    goto LABEL_24;
  }

  _HKInitializeLogging();
  v44 = HKLogServices;
  if (sub_24B98())
  {
    v55 = v44;
    v56 = [v7 name];
    sub_24BD4();
    *&v81[10] = v32;
    sub_24A88();
    _os_log_error_impl(v57, v58, v59, v60, v61, 0x16u);
  }

  v43 = [v7 name];
  v45 = [NSString stringWithFormat:@"Health updates from the health device %@ have been disabled.", v43];
  [NSError hk_assignError:a4 code:312 description:v45 underlyingError:v32];

LABEL_35:
LABEL_39:
  v36 = 0;
LABEL_40:

LABEL_44:
  return v36;
}

void sub_368D8(uint64_t a1)
{
  if (a1)
  {
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (sub_7CEC())
    {
      v3 = v2;
      v4 = NSStringFromSelector("_retrieveAndRemoveDisconnectedPeripherals");
      *buf = 138543618;
      v33 = a1;
      v34 = 2114;
      v35 = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    +[NSMutableArray array];
    objc_claimAutoreleasedReturnValue();
    v5 = *(a1 + 88);
    sub_24A58();
    v27 = 3221225472;
    v28 = sub_202D8;
    v29 = &unk_5C8C8;
    v30 = a1;
    v7 = v6;
    v31 = v7;
    [v5 hk_withLock:v26];
    if ([v7 count])
    {
      v8 = [NSError hk_error:300 description:@"Device no longer connected"];
      sub_24B0C();
      v9 = v7;
      sub_24BBC();
      v11 = [v10 countByEnumeratingWithState:? objects:? count:?];
      if (v11)
      {
        v19 = v11;
        v20 = *v25;
        do
        {
          v21 = 0;
          do
          {
            sub_24B5C(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24, v25);
            if (v22 != v20)
            {
              objc_enumerationMutation(v9);
            }

            sub_1F550(a1, [*(v24 + 8 * v21) unsignedIntegerValue], v8);
            v21 = v21 + 1;
          }

          while (v19 != v21);
          sub_24BBC();
          v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
          v19 = v11;
        }

        while (v11);
      }
    }
  }
}

void sub_36AE8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    _HKInitializeLogging();
    v4 = HKLogServices;
    if (sub_24B80())
    {
      v5 = v4;
      v6 = NSStringFromSelector("_removeConnectingPeripheralsWithError:");
      v35 = 138543874;
      v36 = a1;
      v37 = 2114;
      v38 = v6;
      v39 = 2114;
      v40 = v3;
      sub_24B2C(&dword_0, v5, v7, "%{public}@: %{public}@: error %{public}@", &v35);
    }

    v8 = objc_alloc_init(NSMutableArray);
    v9 = *(a1 + 88);
    sub_24A58();
    v30 = 3221225472;
    v31 = sub_205FC;
    v32 = &unk_5C8C8;
    v33 = a1;
    v11 = v10;
    v34 = v11;
    [v9 hk_withLock:v29];
    v27 = 0u;
    v28 = 0;
    v12 = v11;
    sub_24BBC();
    v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
    if (v14)
    {
      v22 = v14;
      do
      {
        v23 = 0;
        do
        {
          sub_24B5C(v14, v15, v16, v17, v18, v19, v20, v21, v27, *(&v27 + 1), v28);
          if (v24 != 0x100000CFEEDFACFLL)
          {
            objc_enumerationMutation(v12);
          }

          v25 = *(*(&v27 + 1) + 8 * v23);
          if (v25)
          {
            v26 = *(v25 + 16);
          }

          else
          {
            v26 = 0;
          }

          sub_1F550(a1, v26, v3);
          v23 = v23 + 1;
        }

        while (v22 != v23);
        sub_24BBC();
        v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
        v22 = v14;
      }

      while (v14);
    }
  }
}

void sub_36E70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v4 = HKLogServices;
    if (sub_24B80())
    {
      v5 = v4;
      NSStringFromSelector("_queue_extendPrivateModeLeaseForSessionWithIdentifier:");
      *v11 = 138544130;
      *&v11[4] = a1;
      *&v11[14] = *&v11[12] = 2114;
      *&v11[22] = 2114;
      v12 = v3;
      LOWORD(v13) = 1024;
      *(&v13 + 2) = 3600;
      sub_180C4();
      _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
    }

    [*(a1 + 16) enablePrivateModeForSessionWithIdentifier:v3 forDuration:{3600, *v11, *&v11[16], v12, v13}];
  }
}

void sub_36F84(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (!*(v4 + 96))
  {
    v5 = objc_alloc_init(HDIdentifierTable);
    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = v5;

    v4 = *(a1 + 32);
  }

  if (!*(v4 + 104))
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = *(a1 + 32);
    v10 = *(v9 + 104);
    *(v9 + 104) = v8;

    v4 = *(a1 + 32);
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(v4 + 96) addObject:*(a1 + 40)];
  v11 = *(a1 + 40);
  if (v11)
  {
    *(v11 + 16) = *(*(*(a1 + 64) + 8) + 24);
  }

  v12 = *(*(a1 + 32) + 104);
  [*(a1 + 48) identifier];
  objc_claimAutoreleasedReturnValue();
  v13 = [sub_180B8() objectForKeyedSubscript:v1];

  if (v13)
  {
    [v13 addObject:*(a1 + 40)];
  }

  else
  {
    v13 = [NSMutableArray arrayWithObject:*(a1 + 40)];
    v14 = *(*(a1 + 32) + 104);
    v15 = [*(a1 + 48) identifier];
    [v14 setObject:v13 forKeyedSubscript:v15];

    v16 = *(*(a1 + 32) + 112);
    [*(a1 + 48) identifier];
    objc_claimAutoreleasedReturnValue();
    [sub_C244() objectForKeyedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    sub_24AE4();
    v18 = *(v17 + 40);
    *(v17 + 40) = v19;

    sub_24AE4();
    if (!*(v20 + 40))
    {
      v21 = [HDHealthPeripheral alloc];
      v22 = *(a1 + 48);
      v23 = [*(a1 + 56) name];
      objc_loadWeakRetained((*(a1 + 32) + 40));
      [sub_24AF0() initWithCBPeripheral:? name:? serviceManager:? profile:?];
      sub_24AE4();
      v25 = *(v24 + 40);
      *(v24 + 40) = v26;

      _HKInitializeLogging();
      if (sub_24B80())
      {
        v27 = *(a1 + 32);
        v28 = *(a1 + 48);
        v29 = *(*(*(a1 + 72) + 8) + 40);
        v51 = 138543874;
        v52 = v27;
        v53 = 2114;
        v54 = v28;
        v55 = 2114;
        v56 = v29;
        sub_180C4();
        _os_log_impl(v30, v31, v32, v33, v34, 0x20u);
      }

      sub_24AE4();
      v36 = *(v35 + 40);
      v37 = *(*(a1 + 32) + 112);
      v38 = [*(a1 + 48) identifier];
      [v37 setObject:v36 forKeyedSubscript:v38];
    }

    v39 = objc_alloc(*(a1 + 80));
    v40 = *(a1 + 32);
    sub_24AE4();
    v42 = *(v41 + 40);
    v43 = [*(a1 + 56) advertisementData];
    objc_loadWeakRetained((*(a1 + 32) + 40));
    v44 = [sub_24AF0() initWithServiceManager:? peripheral:? advertisementData:? profile:?];

    if (v44)
    {
      [*(a1 + 56) serviceId];
      objc_claimAutoreleasedReturnValue();
      [sub_C244() setServiceId:?];

      [sub_24AAC(*(a1 + 72)) addHealthService:v44];
    }

    else
    {
      _HKInitializeLogging();
      v45 = HKLogServices;
      if (sub_24B98())
      {
        sub_24AE4();
        v47 = *(v46 + 40);
        v48 = *(a1 + 56);
        v49 = v45;
        v50 = [v48 advertisementData];
        v51 = 138478083;
        v52 = v47;
        v53 = 2113;
        v54 = v50;
        _os_log_error_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "Service could not be created from peripheral %{private}@ with advertisement data %{private}@", &v51, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }
}

void sub_37330(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3 && v3[13] > 0.0)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);

    v7 = dispatch_time(0, (v4[13] * 1000000000.0));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
    sub_7C60();
    v9[1] = 3221225472;
    v9[2] = sub_37450;
    v9[3] = &unk_5C8C8;
    v8 = v4;
    v10 = v8;
    v11 = a1;
    dispatch_source_set_event_handler(v6, v9);
    dispatch_resume(v6);
    sub_374F8(v8, v6);
  }
}

void sub_37450(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 80);
  }

  v4 = [NSError hk_error:103 format:@"(#w0) Timeout attempting to connect peripheral %@", v3];
  sub_374F8(*(a1 + 32), 0);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  sub_1F550(*(a1 + 40), v6, v4);

  objc_autoreleasePoolPop(v2);
}

void sub_374F8(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_24AD4(a1, a2);
  }
}

void sub_37504(id a1, _HDHealthServiceConnectionInfo *a2)
{
  if (a2)
  {
    a2->_pairingState = 4;
  }
}

void sub_37514(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 88);
    sub_4FB4();
    v9 = 3221225472;
    v10 = sub_21AC8;
    v11 = &unk_5D740;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    [v7 hk_withLock:v8];
  }
}

void sub_375C4(id a1, _HDHealthServiceConnectionInfo *a2)
{
  if (a2)
  {
    a2->_pairingState = 2;
  }
}

id sub_375D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      v9 = &__NSDictionary0__struct;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          sub_24B0C();
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v14)
          {
            v22 = v14;
            v23 = *v30;
            while (2)
            {
              v24 = 0;
              do
              {
                sub_24B5C(v14, v15, v16, v17, v18, v19, v20, v21, v28, v29, v30);
                if (v25 != v23)
                {
                  objc_enumerationMutation(v13);
                }

                v26 = *(v29 + 8 * v24);
                if (v26 && (*(v26 + 17) & 1) != 0)
                {
                  v35[0] = CBCentralManagerScanOptionRequiresActive;
                  v35[1] = CBCentralManagerScanOptionAllowDuplicatesKey;
                  v36[0] = &__kCFBooleanTrue;
                  v36[1] = &__kCFBooleanFalse;
                  v9 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];

                  goto LABEL_21;
                }

                v24 = v24 + 1;
              }

              while (v22 != v24);
              v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
              v22 = v14;
              if (v14)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = &__NSDictionary0__struct;
    }

LABEL_21:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_377E8(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSMutableArray array];
    v3 = 6144;
    v4 = 256;
    do
    {
      [NSString stringWithFormat:@"%X", v3];
      objc_claimAutoreleasedReturnValue();
      v5 = [sub_C244() UUIDWithString:?];
      [v2 addObject:v5];

      v3 = (v3 + 1);
      --v4;
    }

    while (v4);
    v6 = [v2 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_378C8(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_opt_class();
    v3 = NSStringFromClass(v2);
    v1 = [NSString stringWithFormat:@"<%@:%p>", v3, v1];
  }

  return v1;
}

void sub_3794C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (sub_7CEC())
    {
      v3 = v2;
      NSStringFromSelector("_queue_stopScan");
      *v18 = 138543618;
      *&v18[4] = a1;
      *&v18[14] = *&v18[12] = 2114;
      sub_7C80();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }

    if ([*(a1 + 72) count])
    {
      _HKInitializeLogging();
      v9 = HKLogServices;
      if (sub_7CEC())
      {
        v11 = v9;
        v12 = sub_378C8(a1);
        sub_3B54();
        sub_7C80();
        _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      }

      [*(a1 + 16) stopScan];
      v10 = *(a1 + 72);
      *(a1 + 72) = 0;
    }
  }
}

void sub_37AA8(uint64_t a1)
{
  sub_35898(*(a1 + 32), *(a1 + 48), *(a1 + 40));
  v2 = *(a1 + 32);

  sub_1D6B4(v2);
}

id sub_37AEC(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    v11 = a5;
    v12 = a4;
    _HKInitializeLogging();
    v13 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = NSStringFromSelector("_reportPeripheral:serviceUUID:serviceAdvertisementData:peripheralAdvertisementData:");
      sub_24A3C();
      v32 = v9;
      v33 = v16;
      v34 = v10;
      sub_24C28(&dword_0, v14, v17, "%{public}@: %{public}@: peripheral: %{public}@, serviceUUID: %{public}@", v28);
    }

    v18 = sub_35D98(a1, v10, v9, v12, v11);

    if ([v18 type] == -1 || objc_msgSend(v18, "type") == -3)
    {
      _HKInitializeLogging();
      v19 = HKLogServices;
      if (sub_24B80())
      {
        v20 = v19;
        [v18 type];
        sub_3B54();
        v29 = 2112;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        sub_180C4();
        _os_log_impl(v21, v22, v23, v24, v25, 0x20u);
      }
    }

    else
    {
      v26 = sub_1E58C(a1, v10);
      sub_235D4(a1, v26, v9, v18, 0);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t sub_37D00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if ([*(a1 + 8) containsObject:v3])
    {
      a1 = 0;
    }

    else
    {
      _HKInitializeLogging();
      if (sub_24B80())
      {
        *v10 = 138412546;
        *&v10[4] = a1;
        *&v10[12] = 2112;
        *&v10[14] = v3;
        sub_180C4();
        _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
      }

      [*(a1 + 8) addObject:{v3, *v10, *&v10[16]}];
      a1 = 1;
    }
  }

  return a1;
}

uint64_t sub_38120(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  if (a2)
  {
    *(a2 + 96) = 3;
  }

  return result;
}

uint64_t sub_38140(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  if (a2)
  {
    *(a2 + 96) = 0;
  }

  return result;
}

uint64_t sub_3815C(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  if (a2)
  {
    *(a2 + 96) = 0;
  }

  return result;
}

void sub_381EC()
{
  sub_3B54();
  sub_24BC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_3829C()
{
  sub_24B50();
  sub_24B44(v1, v2, 5.7779e-34);
  sub_24AB8(&dword_0, v3, v4, "Begin connect to %@", v5);
}

void sub_382E0()
{
  sub_24B50();
  sub_24B44(v1, v2, 5.7779e-34);
  sub_24AB8(&dword_0, v3, v4, "Connecting to %@", v5);
}

void sub_38324()
{
  sub_24B50();
  sub_24B44(v1, v2, 5.7779e-34);
  sub_24AB8(&dword_0, v3, v4, "Discover peripheral services for %@", v5);
}

void sub_38368(void *a1, void *a2)
{
  v3 = a1;
  [a2 type];
  v4 = [sub_180B8() name];
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2112;
  v7 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "*** Unsupported service type (%d) for peripheral %@.", v5, 0x12u);
}

uint64_t sub_38434(char a1)
{
  if (sub_7CEC())
  {
    sub_7C80();
    _os_log_impl(v2, v3, v4, v5, v6, 0x18u);
  }

  return a1 & 1;
}

void sub_384F8(uint64_t *a1)
{
  v2 = *(*(*a1 + 8) + 40);
  if (v2)
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v3 = 0;
  }

  dispatch_source_cancel(v3);
  v4 = sub_24AAC(*a1);
  sub_374F8(v4, 0);
}

void sub_38548(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  v6 = a2;
  v7 = sub_180B8();
  v8 = NSStringFromSelector(v7);
  v9 = *a3;
  sub_3B54();
  sub_24BE8(&dword_0, v10, v11, "*** %@, Connection info not found for %d", v12, v13, v14, v15, v16);
}

void sub_385F4(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  v4 = [sub_24AAC(*a2) stateDescription];
  sub_24A78();
  if (v5)
  {
    v6 = *(v5 + 88) - 1;
    if (v6 <= 3)
    {
      v7 = off_5D860[v6];
    }
  }

  sub_24B1C();
  _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
}

void sub_386F8(void **a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v5 sharedPairingAgent];
  v7 = [sub_24AAC(*a2) cbPeripheral];

  LODWORD(v5) = [v6 isPeerPaired:v7];
  if (v5)
  {
    _HKInitializeLogging();
    if (sub_24B80())
    {
      sub_180C4();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
    }

    v13 = *a1;
    if (*a1)
    {
      v13 = v13[2];
    }

    v14 = v13;
    v15 = [v14 sharedPairingAgent];
    v16 = [sub_24AAC(*a2) cbPeripheral];

    [v15 unpairPeer:v16];
  }
}

void sub_3880C(uint64_t *a1, uint64_t a2)
{
  *(*(*(a2 + 64) + 8) + 24) = [sub_24AAC(*a1) state] != &dword_0 + 3;
  *(*(*(a2 + 72) + 8) + 24) = 8;
  _HKInitializeLogging();
  v4 = HKLogServices;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_24A78();
    if (v5)
    {
      v6 = *(v5 + 96);
    }

    v7 = [sub_24AAC(*a1) stateDescription];
    sub_24A78();
    if (v8)
    {
      v9 = *(v8 + 88) - 1;
      if (v9 <= 3)
      {
        v10 = off_5D860[v9];
      }
    }

    v16 = *(*(*(a2 + 64) + 8) + 24);
    sub_24B1C();
    _os_log_impl(v11, v12, v13, v14, v15, 0x26u);
  }
}

void sub_38984(uint64_t *a1)
{
  v1 = [sub_24AAC(*a1) name];
  sub_24A78();
  if (v2)
  {
    v3 = *(v2 + 80);
  }

  sub_24B1C();
  _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_38A40(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 88);
  v6 = a2;
  v7 = sub_180B8();
  v8 = NSStringFromSelector(v7);
  v9 = *a3;
  sub_3B54();
  sub_24BE8(&dword_0, v10, v11, "*** %@, Peripheral not found for %d", v12, v13, v14, v15, v16);
}

void sub_38AEC(char a1, NSObject *a2, uint64_t a3)
{
  if (a1)
  {
    *v4 = 0;
    _os_log_impl(&dword_0, a2, OS_LOG_TYPE_DEFAULT, "BTLE became available", v4, 2u);
  }

  sub_368D8(a3);
}

void sub_38B44(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = objc_retainBlock(v7);
  if (a3)
  {
    v10 = [NSNumber numberWithUnsignedInteger:0];
    sub_24C08(v10);
  }

  else
  {
    v9 = [NSNumber numberWithUnsignedInteger:a4[2]];
    sub_24C08(v9);

    a4[11] = 3;
    if (a4[14])
    {
      if (a3)
      {
        v11 = 0;
      }

      else
      {
        v11 = a4[14];
      }

      dispatch_source_cancel(v11);
      sub_374F8(a4, 0);
    }
  }
}

void sub_38C0C()
{
  sub_24B50();
  sub_24B44(v1, v2, 5.7779e-34);
  sub_24AB8(&dword_0, v3, v4, "Successfully paired: %@", v5);
}

void sub_38C50(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "peerDidFailToCompletePairing: %@ %{public}@", buf, 0x16u);
}

void sub_38CB8()
{
  sub_24B50();
  sub_24B44(v1, v2, 5.7779e-34);
  sub_24AB8(&dword_0, v3, v4, "Peripheral did unpair: %@", v5);
}

void sub_38CFC()
{
  sub_3B54();
  sub_24BC8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_38D6C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    HKSupportedMetricsForMachineType();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    obj = v17 = 0u;
    v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v14 + 1) + 8 * i);
          v8 = +[HKObjectType objectTypeForWorkoutMetric:fitnessMachineType:](HKObjectType, "objectTypeForWorkoutMetric:fitnessMachineType:", [v7 unsignedIntegerValue], *(a1 + 8));
          if (v8)
          {
            WeakRetained = objc_loadWeakRetained((a1 + 128));
            v10 = [WeakRetained dataCollectionManager];
            v11 = [v10 aggregatorForType:v8];

            [*(a1 + 16) setObject:v11 forKey:v7];
            v12 = objc_alloc_init(HKDataCollectorState);
            [v11 registerDataCollector:a1 state:v12];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }
  }
}

id *sub_38F0C(id *result)
{
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = result[9];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          sub_39078(v1, *(*(&v7 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return [*(v1 + 72) removeAllObjects];
  }

  return result;
}

uint64_t sub_3900C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v6 = v3;
    if (*(a1 + 56))
    {
      sub_39078(a1, v3);
    }

    else
    {
      v3 = [*(a1 + 72) addObject:v3];
    }

    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_39078(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      v4 = *(a1 + 56);
    }

    v14 = v4;
    v5 = a2;
    v6 = [v5 updateTime];
    v7 = [v14 laterDate:v6];

    v8 = [[NSDateInterval alloc] initWithStartDate:v14 endDate:v7];
    v9 = *(a1 + 64);
    *(a1 + 64) = v7;

    [v5 generateDatums:v8];
    objc_claimAutoreleasedReturnValue();
    v10 = [sub_181D8() updateTime];

    v11 = sub_26210();
    sub_39170(v11, v12, v13);
  }
}

void sub_39170(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v33 = v6;
    dispatch_assert_queue_V2(*(a1 + 24));
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        v12 = 0;
        v35 = v10;
        do
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v43 + 1) + 8 * v12);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = [*(a1 + 16) objectForKey:v13];
          if (sub_25228(a1, v14, v15))
          {
            v16 = v8;
            v17 = [v15 objectType];
            v18 = [*(a1 + 40) objectForKeyedSubscript:v13];
            v19 = sub_252F8(a1, v17, v14, v18);

            if (v19)
            {
              v48 = v19;
              v20 = [NSArray arrayWithObjects:&v48 count:1];
              [v15 dataCollector:a1 didCollectSensorData:v20 device:*(a1 + 104) options:0];
            }

            v8 = v16;
            v10 = v35;
          }

          [*(a1 + 40) setObject:v14 forKeyedSubscript:v13];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v10);
    }

    v21 = sub_39554(a1, v8);
    if ([*(a1 + 136) count])
    {
      v22 = *(a1 + 136);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_256C0;
      v41[3] = &unk_5D888;
      v41[4] = a1;
      v42 = v21;
      [v22 notifyObservers:v41];
      v23 = *(a1 + 88);
      *(a1 + 88) = 0;
    }

    else
    {
      _HKInitializeLogging();
      v24 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Buffering metrics as a GymKit metrics observer is not yet ready", buf, 2u);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = v21;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            v31 = [v25 objectForKeyedSubscript:v30];
            [*(a1 + 88) setObject:v31 forKeyedSubscript:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v47 count:16];
        }

        while (v27);
      }
    }

    v7 = v33;
    v5 = v34;
    if (*(a1 + 120))
    {
      v32 = sub_396BC(a1, v8, v33);
      if (v32)
      {
        [*(a1 + 120) feedFitnessMachineData:v32];
      }
    }
  }
}

id sub_39554(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    for (i = 0; i != 13; ++i)
    {
      v6 = qword_44888[i];
      v7 = [NSNumber numberWithUnsignedInteger:v6];
      if (i == 6)
      {
        v8 = &off_5FB20;
      }

      else if (i == 7)
      {
        v8 = &off_5FB38;
      }

      else
      {
        v8 = [NSNumber numberWithUnsignedInteger:v6];
      }

      v9 = [v3 objectForKeyedSubscript:v8];
      v10 = [v9 quantity];

      v11 = [*(a1 + 48) objectForKeyedSubscript:v7];
      if (v10 && ([v10 isEqual:v11] & 1) == 0)
      {
        [v4 setObject:v10 forKeyedSubscript:v7];
        [*(a1 + 48) setObject:v10 forKeyedSubscript:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_396BC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[CMFitnessMachineData alloc] initWithTimestamp:v5];

    [v6 objectForKeyedSubscript:&off_5FB50];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() elapsedTime];
    [v7 setElapsedTime:{sub_39CE0(a1, CMFitnessMachineData, @"s", v8)}];

    [v6 objectForKeyedSubscript:&off_5FB68];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() totalEnergy];
    [v7 setTotalEnergy:{sub_39CE0(a1, CMFitnessMachineData, @"kcal", v9)}];

    [v6 objectForKeyedSubscript:&off_5FB80];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() totalDistance];
    v10 = sub_26210();
    [v7 setTotalDistance:{sub_39CE0(v10, v11, v12, v13)}];

    [v6 objectForKeyedSubscript:&off_5FB98];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() totalDistance];
    v14 = sub_26210();
    [v7 setTotalDistance:{sub_39CE0(v14, v15, v16, v17)}];

    [v6 objectForKeyedSubscript:&off_5FBB0];
    objc_claimAutoreleasedReturnValue();
    [sub_181D8() totalDistance];
    v18 = sub_26210();
    [v7 setTotalDistance:{sub_39CE0(v18, v19, v20, v21)}];

    v22 = [v6 objectForKeyedSubscript:&off_5FBC8];
    [v7 setTotalStrideCount:{sub_39D84(a1, v22, @"count", objc_msgSend(v7, "totalStrideCount"))}];

    v23 = [v6 objectForKeyedSubscript:&off_5FBE0];
    [v7 setTotalStrideCount:{sub_39D84(a1, v23, @"count", objc_msgSend(v7, "totalStrideCount"))}];

    v24 = [v6 objectForKeyedSubscript:&off_5FBF8];
    [v7 totalElevationAscended];
    [v7 setTotalElevationAscended:{sub_39CE0(a1, v24, @"m", v25)}];

    [v6 objectForKeyedSubscript:&off_5FC10];
    objc_claimAutoreleasedReturnValue();
    [sub_2622C() totalFloorsClimbed];
    v26 = sub_26220();
    [v7 setTotalFloorsClimbed:{sub_39D84(v26, v27, @"count", v28)}];

    [v6 objectForKeyedSubscript:&off_5FB20];
    objc_claimAutoreleasedReturnValue();
    [sub_2622C() instantaneousSpeed];
    v29 = sub_26220();
    [v7 setInstantaneousSpeed:{sub_39CE0(v29, v30, v31, v32)}];

    [v6 objectForKeyedSubscript:&off_5FC28];
    objc_claimAutoreleasedReturnValue();
    [sub_2622C() instantaneousCadence];
    v33 = sub_26220();
    [v7 setInstantaneousCadence:{sub_39CE0(v33, v34, v35, v36)}];

    [v6 objectForKeyedSubscript:&off_5FC40];
    objc_claimAutoreleasedReturnValue();
    [sub_2622C() instantaneousPower];
    v37 = sub_26220();
    [v7 setInstantaneousPower:{sub_39CE0(v37, v38, v39, v40)}];

    [v6 objectForKeyedSubscript:&off_5FC58];
    objc_claimAutoreleasedReturnValue();
    [sub_2622C() inclination];
    v41 = sub_26220();
    [v7 setInclination:{sub_39CE0(v41, v42, v43, v44)}];

    v45 = [v6 objectForKeyedSubscript:&off_5FC70];

    [v7 resistanceLevel];
    v46 = sub_26220();
    [v7 setResistanceLevel:{sub_39CE0(v46, v47, @"count", v48)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_39A74(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a3;
    v7 = a2;
    v8 = [NSSet setWithObject:a4];
    v9 = [_HKSampleComparisonFilter startDateFilterWithOperatorType:3 date:v7 dataTypes:v8];

    v10 = [_HKSampleComparisonFilter endDateFilterWithOperatorType:1 date:v6 dataTypes:v8];

    v11 = +[HKSource _connectedGymSource];
    v12 = [_HKObjectComparisonFilter filterForKeyPath:HKPredicateKeyPathSource operatorType:4 value:v11 dataTypes:v8];

    v16[0] = v9;
    v16[1] = v10;
    v16[2] = v12;
    v13 = [NSArray arrayWithObjects:v16 count:3];
    v14 = [_HKCompoundFilter andFilterWithSubfilters:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void sub_39C0C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_39C64(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_25F34;
    block[3] = &unk_5C800;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

double sub_39CE0(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      v9 = [v7 quantity];
      v10 = [HKUnit unitFromString:v8];
      [v9 doubleValueForUnit:v10];
      a4 = v11;
    }
  }

  else
  {
    a4 = 0.0;
  }

  return a4;
}

uint64_t sub_39D84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      v9 = [v7 quantity];
      v10 = [HKUnit unitFromString:v8];
      [v9 doubleValueForUnit:v10];
      a4 = (v11 + 0.00000011920929);
    }
  }

  else
  {
    a4 = 0;
  }

  return a4;
}

uint64_t sub_39E34(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  +[NSDate date];
  objc_claimAutoreleasedReturnValue();
  v5 = sub_181D8();
  sub_39170(v5, v4, v1);

  result = a1[6];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_39EB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Error calculating fitness machine sum for type %@", &v2, 0xCu);
}

id sub_39F70(id a1, double a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = [a1 factor];
    v5 = [v2 fieldLength];
    v6 = v5;
    v7 = v5;
    v8 = malloc_type_malloc(v5, 0x4BDBE2D3uLL);
    v9 = v8;
    if (v6 >= 1)
    {
      v10 = 0;
      v11 = (v4 * a2);
      v12 = vdupq_n_s64(v7 - 1);
      v13 = xmmword_448F0;
      v14 = xmmword_44900;
      v15 = xmmword_44910;
      v16 = xmmword_44920;
      v17 = xmmword_44930;
      v18 = xmmword_44940;
      v19 = xmmword_44950;
      v20 = xmmword_44960;
      v21 = vdupq_n_s64(0x10uLL);
      v22 = v8 + 3;
      do
      {
        v23 = vmovn_s64(vcgeq_u64(v12, v20));
        if (vuzp1_s8(vuzp1_s16(v23, *v12.i8), *v12.i8).u8[0])
        {
          *(v22 - 3) = v11;
        }

        if (vuzp1_s8(vuzp1_s16(v23, *&v12), *&v12).i8[1])
        {
          *(v22 - 2) = v11 >> (v10 + 8);
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v19))), *&v12).i8[2])
        {
          *(v22 - 1) = v11 >> (v10 + 16);
          *v22 = v11 >> (v10 + 24);
        }

        v24 = vmovn_s64(vcgeq_u64(v12, v18));
        if (vuzp1_s8(*&v12, vuzp1_s16(v24, *&v12)).i32[1])
        {
          v22[1] = v11 >> (v10 + 32);
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v24, *&v12)).i8[5])
        {
          v22[2] = v11 >> (v10 + 40);
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v17)))).i8[6])
        {
          v22[3] = v11 >> (v10 + 48);
          v22[4] = v11 >> (v10 + 56);
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 = vaddq_s64(v20, v21);
        v17 = vaddq_s64(v17, v21);
        v16 = vaddq_s64(v16, v21);
        v15 = vaddq_s64(v15, v21);
        v10 += 128;
        v14 = vaddq_s64(v14, v21);
        v22 += 16;
        v13 = vaddq_s64(v13, v21);
      }

      while (((v7 + 15) >> 4) << 7 != v10);
    }

    v2 = [NSData dataWithBytes:v8 length:v7];
    free(v9);
  }

  return v2;
}

void sub_3A328(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Characteristic does not support write-without-response for the Eurotas service. Eurotas data will not be written to this characteristic: %@", &v2, 0xCu);
}

void sub_3A3A0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "No characteristic class found for characteristic UUID: %{public}@", &v5, 0xCu);
}

id *sub_3A448(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = HDFitnessMachineSession;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      a1[4] = 0;
      a1[6] = 0;
      *(a1 + 6) = xmmword_44970;
      *(a1 + 4) = 257;
      *(a1 + 11) = 257;
      *(a1 + 13) = 1;
    }
  }

  return a1;
}

id sub_3A654(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = [[NSMutableArray alloc] initWithCapacity:4];
    v35 = 1;
    v34 = 7170;
    v13 = [NSData dataWithBytes:&v34 length:3];
    [v12 addObject:v13];
    v33 = 35;
    v32 = [v11 length] + 1;
    v14 = objc_alloc_init(NSMutableData);
    [v14 appendBytes:&v32 length:1];
    [v14 appendBytes:&v33 length:1];
    v15 = [v11 bytes];
    v16 = [v11 length];

    [v14 appendBytes:v15 length:v16];
    [v12 addObject:v14];
    v31 = 34;
    v30 = [v10 length] + 1;
    v17 = objc_alloc_init(NSMutableData);
    [v17 appendBytes:&v30 length:1];
    [v17 appendBytes:&v31 length:1];
    v18 = [v10 bytes];
    v19 = [v10 length];

    [v17 appendBytes:v18 length:v19];
    [v12 addObject:v17];
    v29 = 9;
    v28 = [v9 length] + 1;
    v20 = objc_alloc_init(NSMutableData);
    [v20 appendBytes:&v28 length:1];
    [v20 appendBytes:&v29 length:1];
    v21 = [v9 bytes];
    v22 = [v9 length];

    [v20 appendBytes:v21 length:v22];
    [v12 addObject:v20];
    v27 = 6920;
    v23 = [NSData dataWithBytes:&v27 length:2];
    v24 = [v23 mutableCopy];

    [v24 appendData:v8];
    v26 = 1;
    [v24 appendBytes:&v26 length:1];
    [v12 addObject:v24];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id *sub_3A928(id *a1, void *a2, id **a3)
{
  v6 = +[NSUUID UUID];
  v9 = sub_3A448(a1, v6);
  *a3 = v9;

  v7 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, a2);
    v7 = v9;
  }

  return v7;
}
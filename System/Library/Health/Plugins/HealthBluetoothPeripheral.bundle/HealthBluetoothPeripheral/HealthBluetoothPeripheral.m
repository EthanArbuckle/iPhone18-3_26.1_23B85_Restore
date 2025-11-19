void sub_F64(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 25) == 1)
  {
    v3 = *(v1 + 16);
    v17 = 0;
    v4 = [v3 reviewSavedHealthServiceSessionsWithError:&v17];
    v5 = v17;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 32) objectForKey:{v11, v13}];
          if (v12)
          {
            sub_33240(*(a1 + 32), v11);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void sub_1728(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = v2 != 0;
}

uint64_t sub_1870(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1888(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        if ([objc_opt_class() serviceType] == *(a1 + 48))
        {
          v8 = *(*(a1 + 40) + 8);
          v9 = *(v8 + 40);
          *(v8 + 40) = v7;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1A38(uint64_t a1)
{
  v2 = [NSError hk_error:300 description:@"Device connection dropped"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(*(a1 + 32) + 80);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        sub_271B0(*(a1 + 32), 0, *(*(&v18 + 1) + 8 * v7), v2);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(*(a1 + 32) + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

        v13 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v12), v14}];
        [v13 deviceDisconnecting];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 40) removeAllObjects];
  *(*(a1 + 32) + 9) = 0;
}

void sub_1D1C(void *a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1[4] + 40) objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
        if ([v7 supportsOperation:a1[5]])
        {
          [v7 performOperation:a1[5] onPeripheral:*(a1[4] + 16) withParameters:a1[6] completion:a1[7]];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = a1[5];
  v2 = [NSError hk_error:304 format:@"Cannot find service to perform operation %@ on device %@", v8, *(a1[4] + 16), v10];
  v9 = a1[5];
  (*(a1[7] + 16))();
LABEL_11:
}

void sub_1F6C(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 40);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v4)
  {

LABEL_13:
    _HKInitializeLogging();
    v10 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_27880(a1, v2, v10);
    }

    v11 = *(a1 + 40);
    v12 = [NSError hk_error:304 format:@"Cannot find service to write characteristic %@ on device %@", v11, *(*(a1 + 32) + 16), v13];
    (*(*(a1 + 48) + 16))();

    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v14;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
      if ([v9 supportsWritingCharacteristic:*(a1 + 40)])
      {
        [v9 writeCharacteristic:*(a1 + 40) expectResponse:*(a1 + 56) completion:*(a1 + 48)];
        v6 = 1;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  }

  while (v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_13;
  }
}

void sub_227C(uint64_t a1)
{
  v2 = HDHealthPeripheralAllPropertyNames();
  v3 = [v2 containsObject:*(a1 + 32)];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 48);
    v5 = @"Unknown property";
    v6 = 310;
    goto LABEL_5;
  }

  if ([*(*(a1 + 40) + 16) state] != &dword_0 + 2)
  {
    v4 = *(a1 + 48);
    v5 = @"Device not connected";
    v6 = 300;
LABEL_5:
    v9 = [NSError hk_error:v6 description:v5];
    (*(v4 + 16))(v4, 0, v9);

    return;
  }

  if (sub_27304(*(a1 + 40), *(a1 + 48), *(a1 + 32)))
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);

    sub_273FC(v7, v8);
  }
}

void sub_2758(uint64_t a1)
{
  v2 = [*(a1 + 32) services];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) services];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [*(a1 + 32) services];
      v7 = NSStringFromSelector("UUID");
      v55 = [v6 valueForKey:v7];

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = [*(a1 + 32) services];
      v8 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
      if (v8)
      {
        v9 = v8;
        v54 = 0;
        v57 = *v78;
        v53 = v71;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v78 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v77 + 1) + 8 * i);
            v12 = [v11 UUID];
            v13 = HDHealthServiceClassForCBUUID(v12);
            if (v13)
            {
              v14 = v13;
              v15 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v12];
              if (!v15)
              {
                v16 = [v14 alloc];
                WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
                v18 = *(a1 + 40);
                v19 = objc_loadWeakRetained((v18 + 56));
                v15 = [v16 initWithServiceManager:WeakRetained peripheral:v18 advertisementData:0 profile:v19];

                [*(*(a1 + 40) + 40) setObject:v15 forKeyedSubscript:v12];
              }

              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v20 = [objc_opt_class() implementedProperties];
              v21 = [v20 countByEnumeratingWithState:&v73 objects:v84 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v74;
                do
                {
                  for (j = 0; j != v22; j = j + 1)
                  {
                    if (*v74 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    [*(*(a1 + 40) + 72) setObject:v15 forKeyedSubscript:*(*(&v73 + 1) + 8 * j)];
                  }

                  v22 = [v20 countByEnumeratingWithState:&v73 objects:v84 count:16];
                }

                while (v22);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v15;
                v70[0] = _NSConcreteStackBlock;
                v70[1] = 3221225472;
                v71[0] = sub_2DE0;
                v71[1] = &unk_5C8C8;
                v71[2] = *(a1 + 40);
                v15 = v25;
                v72 = v15;
                [v15 performWhenDeviceInformationHasBeenLoaded:v70];
                v26 = +[HDFitnessMachineService serviceUUID];
                v27 = [v55 containsObject:v26];

                if (v27)
                {
                  [v15 setFetchLimitedCharacteristics:1];
                }

                v54 = 1;
              }
            }

            else
            {
              v15 = 0;
            }

            [*(a1 + 32) discoverCharacteristics:0 forService:v11];
          }

          v9 = [obj countByEnumeratingWithState:&v77 objects:v85 count:16];
        }

        while (v9);

        if (v54)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      sub_274F8(*(a1 + 40), 0);
LABEL_26:
    }
  }

  *(*(a1 + 40) + 9) = 1;
  v28 = objc_loadWeakRetained((*(a1 + 40) + 48));
  v29 = [*(a1 + 32) services];
  [v28 discoveredServices:v29 forPeripheral:*(a1 + 32)];

  if ([*(*(a1 + 40) + 80) count])
  {
    v30 = [*(*(a1 + 40) + 80) allKeys];
    v31 = [NSMutableSet setWithArray:v30];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v32 = *(*(a1 + 40) + 40);
    v33 = [v32 countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v67;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v67 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v66 + 1) + 8 * k);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v38 = [objc_opt_class() implementedProperties];
          v39 = [v38 countByEnumeratingWithState:&v62 objects:v82 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = *v63;
            do
            {
              for (m = 0; m != v40; m = m + 1)
              {
                if (*v63 != v41)
                {
                  objc_enumerationMutation(v38);
                }

                [v31 removeObject:*(*(&v62 + 1) + 8 * m)];
              }

              v40 = [v38 countByEnumeratingWithState:&v62 objects:v82 count:16];
            }

            while (v40);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v66 objects:v83 count:16];
      }

      while (v34);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v43 = v31;
    v44 = [v43 countByEnumeratingWithState:&v58 objects:v81 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v59;
      do
      {
        for (n = 0; n != v45; n = n + 1)
        {
          if (*v59 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v58 + 1) + 8 * n);
          v49 = *(a1 + 40);
          v50 = [NSError hk_error:310 format:@"Property %@ not supported", v48, v53];
          sub_271B0(v49, 0, v48, v50);
        }

        v45 = [v43 countByEnumeratingWithState:&v58 objects:v81 count:16];
      }

      while (v45);
    }

    v51 = *(*(a1 + 40) + 80);
    v52 = [v43 allObjects];
    [v51 removeObjectsForKeys:v52];
  }
}

void sub_2DE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_27700;
  v4[3] = &unk_5C8C8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_2FEC(uint64_t a1)
{
  v2 = [*(a1 + 32) UUID];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 40) objectForKeyedSubscript:v2];
    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) characteristics];
      [v3 peripheral:v4 didDiscoverCharacteristics:v5];
    }

    else
    {
      v6 = [CBUUID UUIDWithString:@"1800"];
      v7 = [v2 isEqual:v6];

      if (v7)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = [*(a1 + 32) characteristics];
        v8 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v48;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v48 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v47 + 1) + 8 * i);
              v13 = [v12 UUID];
              v14 = [CBUUID UUIDWithString:@"2A00"];
              v15 = [v13 isEqual:v14];

              if (v15)
              {
                [*(a1 + 48) readValueForCharacteristic:v12];
                _HKInitializeLogging();
                v16 = HKLogServices;
                if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v54 = v12;
                  _os_log_debug_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "|>- Device Name Characteristic: %@", buf, 0xCu);
                }
              }
            }

            v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v9);
        }

        v3 = 0;
      }
    }

    v17 = +[NSMutableArray array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = [*(a1 + 32) characteristics];
    v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v44;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v43 + 1) + 8 * j) UUID];
          v24 = [v23 UUIDString];
          [v17 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v20);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    v26 = [*(a1 + 48) identifier];
    v27 = [*(a1 + 32) UUID];
    v28 = [v27 UUIDString];
    [WeakRetained discoveredCharacteristics:v17 forDevice:v26 service:v28];
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v29 = *(*(a1 + 40) + 80);
  v30 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v40;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v39 + 1) + 8 * k);
        v35 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:v34];
        v36 = [objc_opt_class() serviceUUID];
        v37 = [v36 isEqual:v2];

        if (v37)
        {
          [v35 readProperty:v34];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v31);
  }
}

void sub_36DC(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v2;
    [v2 peripheral:a1[6] didUpdateValueForCharacteristic:a1[7] updateTime:a1[8] error:a1[9]];
    v2 = v3;
  }
}

void sub_38FC(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  v4 = v3;
  if (v3)
  {
    [v3 peripheral:a1[6] didWriteValueForCharacteristic:a1[7] error:a1[8]];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_27B2C(v2, v5);
    }
  }
}

void sub_3B34(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_4734(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_47A8;
  block[3] = &unk_5C800;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_4AD0(uint64_t a1)
{
  sub_28318(*(a1 + 32), *(a1 + 40), 1);
  v2 = *(a1 + 32);

  sub_2842C(v2);
}

void sub_4EA8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_28A44(v5, v6);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void sub_62B0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting pairing manager", &v8, 0xCu);
  }

  sub_291D0(*(a1 + 32));
  *(*(a1 + 32) + 32) = 0;
  [*(*(a1 + 32) + 40) cancelAllTimers];
  [*(*(a1 + 32) + 8) endNdefTagSession];
  sub_29310(*(a1 + 32));
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = 0;

  sub_293C4(*(a1 + 32));
}

void sub_6438(uint64_t a1)
{
  [*(*(a1 + 32) + 8) endNdefTagSession];
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *(v2 + 32) = 2;
  }

  else
  {

    sub_293C4(v2);
  }
}

void sub_650C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setFieldDetectEnabled:*(a1 + 40) == 2];
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    sub_293C4(v2);
    v4 = *(a1 + 32);

    sub_29730(v4);
  }

  else
  {
    sub_29524(v2);
    v3 = *(a1 + 32);

    sub_29618(v3);
  }
}

void sub_6584(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2B03C(a1);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_29B40;
    block[3] = &unk_5C800;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

void sub_6654(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogWorkouts;
  if (a2)
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 56);
      v9 = v6;
      v10 = [v8 nfcSessionID];
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "(#w0) %{public}@: NFC Session ID: %{public}@", &v19, 0x16u);
    }

    _HKInitializeLogging();
    v11 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: NFC Tag Emulation is GO", &v19, 0xCu);
    }

    _HKInitializeLogging();
    v13 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 56);
      v16 = v13;
      v17 = [v15 oobInfo];
      v18 = [*(*(a1 + 32) + 56) nfcSessionIDData];
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: OOB Data: %@, encodedSessionIDData=%{public}@", &v19, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2B0BC(a1);
    }

    sub_29BD0(*(a1 + 32), v5);
  }
}

void sub_6AF0(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 32) == 1)
  {
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *v1;
      v4 = *(*v1 + 32);
      if (v4 > 2)
      {
        v5 = 0;
      }

      else
      {
        v5 = off_5CBF0[v4];
      }

      v7 = 138543618;
      v8 = v3;
      v9 = 2114;
      v10 = v5;
      v6 = v2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring tag read change: bluetooth state: %{public}@", &v7, 0x16u);
    }
  }

  else
  {
    sub_2B13C((a1 + 32));
  }
}

void sub_6EEC(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6FC8;
  block[3] = &unk_5CAA0;
  block[4] = v11;
  v16 = v9;
  v19 = a4;
  v17 = v10;
  v18 = a2;
  v13 = v10;
  v14 = v9;
  dispatch_async(v12, block);
}

void sub_6FDC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  v6 = [v3 fitnessMachine];
  v5 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];
  [v4 clientRemote_updatedFitnessMachine:v6 fitnessMachineSessionUUID:v5];
}

void sub_7134(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v5 = [NSError hk_error:108 description:@"Connection intiator already registered"];
    [*(a1 + 48) clientRemote_encounteredError:v5];
  }

  else
  {
    [*(*(a1 + 32) + 80) setObject:*(a1 + 48) forKeyedSubscript:*(a1 + 40)];
    v4 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];

    if (v4)
    {
      sub_2B270(v2, &v6);
    }
  }
}

void sub_7214(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(*(a1 + 32) + 56) connectionState];
  v4 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];
  [v8 clientRemote_updatedConnectionState:v3 fitnessMachineSessionUUID:v4];

  v5 = [*(*(a1 + 32) + 56) fitnessMachine];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 56) fitnessMachine];
    v7 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];
    [v8 clientRemote_updatedFitnessMachine:v6 fitnessMachineSessionUUID:v7];
  }
}

void sub_73BC(uint64_t a1)
{
  if (sub_2A990(*(a1 + 32), *(a1 + 40), *(a1 + 48)))
  {
    _HKInitializeLogging();
    v2 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 56);
      v5 = v2;
      v6 = _HKWorkoutActivityNameForActivityType();
      v10 = 138543618;
      v11 = v3;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Permitting connection to fitness machine for activity type: %@", &v10, 0x16u);
    }

    v7 = [*(*(a1 + 32) + 56) fitnessMachine];
    [v7 _setActivityType:*(a1 + 56)];

    v8 = [*(a1 + 32) delegate];
    [v8 pairingManagerUpdatedMachineInformation:*(a1 + 32)];

    v9 = [*(a1 + 32) delegate];
    [v9 pairingManagerReceivedActivityTypeAndPermission:*(a1 + 32)];
  }
}

void sub_76BC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 56);
  v4 = a2;
  v6 = [v3 fitnessMachine];
  v5 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];
  [v4 clientRemote_updatedFitnessMachine:v6 fitnessMachineSessionUUID:v5];
}

void sub_78A4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 56) connectionState];
  v4 = [*(*(a1 + 32) + 56) fitnessMachineSessionUUID];
  [v5 clientRemote_updatedConnectionState:v3 fitnessMachineSessionUUID:v4];

  if (*(a1 + 40))
  {
    [v5 clientRemote_encounteredError:?];
  }
}

void sub_7A5C(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 104) fitnessTrackingEnabled])
  {
    if (*(*v2 + 88))
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_2B348(v2);
      }
    }

    else
    {
      sub_2B3C0(*v2, a1, v2);
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_2B2D0(v2);
    }
  }
}

void sub_7CBC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void sub_7CD4(uint64_t a1)
{
  v2 = *(a1 + 16);

  dispatch_assert_queue_V2(v2);
}

BOOL sub_7CEC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void sub_7D2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

void sub_7D5C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_8600(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:a1 selector:"_setNFCAlwaysOnPreferenceIfNecessary" name:@"HDConnectedGymPreferencesChanged" object:0];

    *(a1 + 28) = -1;
    v3 = [kHKNanoLifestylePrivacyPreferencesChangedNotification UTF8String];
    objc_initWeak(&location, a1);
    v4 = &_dispatch_main_q;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_923C;
    v19 = &unk_5CC70;
    objc_copyWeak(&v20, &location);
    v5 = notify_register_dispatch(v3, (a1 + 28), &_dispatch_main_q, &v16);

    if (v5)
    {
      _HKInitializeLogging();
      v6 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_2BC14(v3, v5, v6);
      }
    }

    v7 = [NSNotificationCenter defaultCenter:v16];
    [v7 addObserver:a1 selector:"_setNFCAlwaysOnPreferenceIfNecessary" name:HDUserCharacteristicsDidChangeNotification object:0];

    v8 = +[NRPairedDeviceRegistry sharedInstance];
    v9 = +[NRPairedDeviceRegistry activeDeviceSelectorBlock];
    v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];
    v11 = [v10 firstObject];
    v12 = *(a1 + 32);
    *(a1 + 32) = v11;

    v13 = *(a1 + 32);
    v22 = NRDevicePropertyIsAltAccount;
    v14 = [NSArray arrayWithObjects:&v22 count:1];
    [v13 addPropertyObserver:a1 forPropertyChanges:v14];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:a1 selector:"_setNFCAlwaysOnPreferenceIfNecessary" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void sub_88A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8ABC(uint64_t a1)
{
  [*(a1 + 32) _setNFCAlwaysOnPreferenceIfNecessary];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  *(*(a1 + 32) + 56) = 1;
  v2 = objc_retainBlock(*(*(a1 + 32) + 48));
  if (v2)
  {
    v2[2]();
  }

  os_unfair_lock_unlock((*(a1 + 32) + 24));
}

void sub_8E80(uint64_t a1, char a2)
{
  if (a1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    if ([a1 fitnessTrackingEnabled])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_958C;
      v13[3] = &unk_5CCC0;
      v13[4] = &v15;
      v14 = a2;
      sub_2B860(a1, v13);
    }

    else
    {
      _HKInitializeLogging();
      v4 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Fitness Tracking Disabled", buf, 2u);
      }
    }

    os_unfair_lock_lock((a1 + 24));
    if (v16[3] == *(a1 + 16))
    {
      os_unfair_lock_unlock((a1 + 24));
    }

    else
    {
      _HKInitializeLogging();
      v5 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 16);
        if (v6 > 2)
        {
          v7 = 0;
        }

        else
        {
          v7 = off_5CCE0[v6];
        }

        v8 = v16[3];
        if (v8 > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = off_5CCE0[v8];
        }

        *buf = 138543618;
        v20 = v7;
        v21 = 2114;
        v22 = v9;
        v10 = v5;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "NFC permission: before='%{public}@' current='%{public}@'", buf, 0x16u);
      }

      v11 = *(a1 + 16);
      *(a1 + 16) = v16[3];
      os_unfair_lock_unlock((a1 + 24));
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      [WeakRetained gymKitSettings:a1 didChangeFromNFCPermission:v11 toNFCPermission:v16[3]];
    }

    _Block_object_dispose(&v15, 8);
  }
}

void sub_90D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_923C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setNFCAlwaysOnPreferenceIfNecessary];
}

void sub_9518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9544(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 == 2 || (a2 & 1) == 0)
  {
    sub_8E80(*(a1 + 32), 0);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_958C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Activity mode unknown. Defaulting to NFC on with workouts", buf, 2u);
    }

    v6 = *(*(a1 + 32) + 8);
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(a1 + 40) == 1)
    {
      v7 = 2;
      goto LABEL_9;
    }

LABEL_8:
    v7 = 1;
LABEL_9:
    *(v6 + 24) = v7;
    return;
  }

  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "NFC disabled because activity mode is Fitness Jr", v8, 2u);
  }
}

__CFString *_HDStringForNearFieldManagerNFCPermission(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_5CCE0[a1];
  }
}

id sub_9A04()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9D00;
  block[3] = &unk_5CCF8;
  block[4] = objc_opt_self();
  if (qword_6BB00 != -1)
  {
    dispatch_once(&qword_6BB00, block);
  }

  v0 = qword_6BAF8;

  return v0;
}

void sub_9D00(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = sub_9E3C();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 uuid];
        [v2 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = qword_6BAF8;
  qword_6BAF8 = v2;
}

id sub_9E3C()
{
  objc_opt_self();
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v0 = [NSArray arrayWithObjects:v2 count:6];

  return v0;
}

void sub_A884(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = [v4 client];
  v6 = [v8 connection];
  v7 = [v6 remoteObjectProxy];
  [v7 clientRemote_deliverBluetoothStatus:a2 withError:v5];
}

uint64_t sub_A914(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_A9F8(uint64_t a1)
{
  v2 = sub_2C5B4(*(a1 + 32), *(a1 + 64));
  v3 = [*(a1 + 32) client];
  v10[0] = @"serviceType";
  v4 = [NSNumber numberWithInteger:*(a1 + 72)];
  v11[0] = v4;
  v11[1] = @"assignedId";
  v10[1] = @"action";
  v10[2] = @"clientId";
  v5 = [NSNumber numberWithUnsignedInteger:v2];
  v11[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  HDPowerLogForClient();

  v7 = [*(a1 + 32) client];
  v8 = [v7 connection];
  v9 = [v8 remoteObjectProxy];
  [v9 clientRemote_deliverDiscoveryHealthService:*(a1 + 40) toClient:v2 finished:*(a1 + 80) withError:*(a1 + 48)];

  if (*(a1 + 80) == 1)
  {
    sub_2C6FC(*(a1 + 32), *(a1 + 64), v2);
    [*(a1 + 56) invalidate];
  }
}

id sub_AB98(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) client];
  v17[0] = @"clientId";
  v4 = [NSNumber numberWithUnsignedInteger:v2[2]];
  v17[1] = @"action";
  v18[0] = v4;
  v18[1] = @"end";
  v5 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  HDPowerLogForClient();

  v6 = sub_2C834(*v2, v2[2]);
  if (v6 == HKHealthServiceDiscoveryIdentifierInvalid)
  {
    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 56);
      v9 = v7;
      v10 = NSStringFromSelector(v8);
      v11 = *(a1 + 48);
      v13 = 138543618;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@, Client discovery ID #%d not valid.", &v13, 0x12u);
    }
  }

  else
  {
    sub_2D6D4(v2, v6);
  }

  return [*(a1 + 40) invalidate];
}

void sub_AE70(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 UUIDString];

  v4 = [*(a1 + 40) client];
  v28[0] = v3;
  v27[0] = @"peripheralId";
  v27[1] = @"serviceType";
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) type]);
  v27[2] = @"action";
  v28[1] = v5;
  v28[2] = @"start";
  v6 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
  HDPowerLogForClient();

  if (!*(a1 + 56))
  {
    _HKInitializeLogging();
    v15 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_2D7AC(a1, v15);
    }

    goto LABEL_13;
  }

  v7 = [*(a1 + 32) identifier];

  if (!v7)
  {
    _HKInitializeLogging();
    v16 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_2D70C(a1, v16);
    }

    v17 = *(a1 + 56);
    v18 = HKHealthServiceSessionIdentifierInvalid;
    v19 = *(a1 + 40);
    v20 = [NSError hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:@"Missing a valid health device."];
    (*(v17 + 16))(v17, v18, v20);

LABEL_13:
    [*(a1 + 48) invalidate];
    goto LABEL_14;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_2C8A0;
  v23[3] = &unk_5CE38;
  v23[4] = *(a1 + 40);
  v24 = v3;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v8 = objc_retainBlock(v23);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2CBFC;
  v22[3] = &unk_5CEC8;
  v22[4] = *(a1 + 40);
  v9 = objc_retainBlock(v22);
  v10 = *(a1 + 40);
  if (v10)
  {
    v10 = v10[1];
  }

  v11 = *(a1 + 32);
  v21 = 0;
  v12 = v10;
  v13 = [v12 connectHealthService:v11 sessionHandler:v8 dataHandler:&stru_5CE78 characteristicsHandler:v9 error:&v21];
  v14 = v21;

  if (v13)
  {
    sub_2C998(*(a1 + 40), v13);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) invalidate];
  }

LABEL_14:
}

void sub_B248(uint64_t a1)
{
  v2 = sub_B4AC(*(a1 + 32), *(a1 + 72));
  v3 = *(a1 + 32);
  if (v2)
  {
    v8 = sub_2C998(v3, *(a1 + 72));
    v9 = [*(a1 + 32) client];
    v10 = *(a1 + 48);
    v18[0] = *(a1 + 40);
    v17[0] = @"peripheralId";
    v17[1] = @"serviceType";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 type]);
    v18[1] = v11;
    v18[2] = @"assignedId";
    v17[2] = @"action";
    v17[3] = @"clientId";
    v12 = [NSNumber numberWithUnsignedInteger:v8];
    v18[3] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
    HDPowerLogForClient();

    v14 = [*(a1 + 32) client];
    v15 = [v14 connection];
    v16 = [v15 remoteObjectProxy];
    [v16 clientRemote_deliverSessionHealthServiceStatus:*(a1 + 80) toClient:v8 finished:*(a1 + 88) withError:*(a1 + 56)];

    if (*(a1 + 88) == 1)
    {
      sub_2CAB0(*(a1 + 32), *(a1 + 72), v8);
      [*(a1 + 64) invalidate];
    }
  }

  else
  {
    v4 = [v3 client];
    v5 = [v4 connection];
    v6 = [v5 remoteObjectProxy];
    [v6 clientRemote_deliverSessionHealthServiceStatus:*(a1 + 80) toClient:HKHealthServiceSessionIdentifierInvalid finished:1 withError:*(a1 + 56)];

    v7 = *(a1 + 64);

    [v7 invalidate];
  }
}

uint64_t sub_B4AC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 56);
    v4 = [NSNumber numberWithUnsignedInteger:a2];
    v2 = [v3 containsObject:v4] ^ 1;
  }

  return v2;
}

void sub_B524(void *a1)
{
  v2 = a1 + 4;
  if (sub_B4AC(a1[4], a1[8]))
  {
    sub_2D84C(v2, v2 + 4, a1);
  }
}

id sub_B578(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) client];
  v7[0] = @"clientId";
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 48)];
  v7[1] = @"action";
  v8[0] = v4;
  v8[1] = @"end";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  HDPowerLogForClient();

  if (sub_2CDA0(*v2, *(a1 + 48)))
  {
    sub_2D8E4(v2, (a1 + 48));
  }

  return [*(a1 + 40) invalidate];
}

void sub_B79C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = [v3 database];
  v9 = 0;
  v5 = [HDServiceEntity insertOrUpdateService:v2 healthDatabase:v4 error:&v9];
  v6 = v9;

  (*(*(a1 + 56) + 16))(*(a1 + 56), v5 != 0, v6);
  if (v5)
  {
    v7 = [*(a1 + 40) profile];
    v8 = [v7 serviceConnectionManager];
    [v8 connectToService:*(a1 + 32)];
  }

  [*(a1 + 48) invalidate];
}

void sub_B8F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) profile];
  v4 = [v3 database];
  v8 = 0;
  [HDServiceEntity deleteService:v2 healthDatabase:v4 error:&v8];
  v5 = v8;

  (*(*(a1 + 56) + 16))();
  v6 = [*(a1 + 40) profile];
  v7 = [v6 serviceConnectionManager];
  [v7 disconnectFromService:*(a1 + 32)];

  [*(a1 + 48) invalidate];
}

void sub_BAE8(uint64_t a1)
{
  v2 = HDHealthPeripheralProfiles();
  v7 = [NSSet setWithArray:v2];

  v3 = [NSMutableSet setWithArray:*(a1 + 32)];
  [v3 intersectSet:v7];
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = [NSError hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:@"No supported health services."];
  (*(v4 + 16))(v4, 0, v6);

  [*(a1 + 48) invalidate];
}

void sub_BC44(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
LABEL_2:
  v13 = v3;
  do
  {
    v5 = v2;
    v6 = [[HKHealthService alloc] initWithType:v4 identifier:*(a1 + 32) name:&stru_5E418];
    v7 = [*(a1 + 40) profile];
    v8 = [v7 database];
    v14 = v2;
    v9 = [HDServiceEntity deleteService:v6 healthDatabase:v8 error:&v14];
    v2 = v14;

    if (v9)
    {
      v10 = [*(a1 + 40) profile];
      v11 = [v10 serviceConnectionManager];
      [v11 disconnectFromService:v6];

      v3 = 1;
      if (v4++ != 3)
      {
        goto LABEL_2;
      }

      goto LABEL_10;
    }

    ++v4;
  }

  while (v4 != 4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_10:

  v2 = 0;
LABEL_11:
  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) invalidate];
}

void sub_C268()
{

  dispatch_async(v1, v0);
}

void sub_C2C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

id sub_C2E8(uint64_t a1)
{

  return [v1 setObject:v2 forKey:a1];
}

uint64_t sub_DAF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_DB08(void *a1)
{
  v2 = [*(a1[4] + 120) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_DC00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 105) == 1)
  {
    v3 = *(a1 + 40);

    HKDispatchAsyncOnGlobalConcurrentQueue();
  }

  else
  {
    v4 = *(v2 + 144);
    v5 = objc_retainBlock(*(a1 + 40));
    [v4 addObject:v5];
  }
}

id _PropertyNamesToCharacteristicIdentifiers()
{
  if (qword_6BB10 != -1)
  {
    sub_2E8C0();
  }

  v1 = qword_6BB08;

  return v1;
}

void sub_DDBC(uint64_t a1)
{
  sub_2E390(*(a1 + 32), *(a1 + 40));
  if ([*(a1 + 32) characteristicsDiscovered])
  {
    v5 = [*(a1 + 32) healthPeripheral];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = [NSError hk_error:310 format:@"Property %@ not supported on this device", v2];
    [v5 service:v3 didReadProperty:v2 value:0 error:v4];
  }
}

id _CharacteristicIdentifiersToPropertyNames()
{
  if (qword_6BB20 != -1)
  {
    sub_2E8D4();
  }

  v1 = qword_6BB18;

  return v1;
}

void sub_E220(id a1)
{
  v3[0] = @"manufacturerName";
  v3[1] = @"modelNumber";
  v4[0] = @"2A29";
  v4[1] = @"2A24";
  v3[2] = @"serialNumber";
  v3[3] = @"hardwareRevision";
  v4[2] = @"2A25";
  v4[3] = @"2A27";
  v3[4] = @"firmwareRevision";
  v3[5] = @"softwareRevision";
  v4[4] = @"2A26";
  v4[5] = @"2A28";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_6BB08;
  qword_6BB08 = v1;
}

void sub_E324(id a1)
{
  v3[0] = @"2A29";
  v3[1] = @"2A24";
  v4[0] = @"manufacturerName";
  v4[1] = @"modelNumber";
  v3[2] = @"2A25";
  v3[3] = @"2A27";
  v4[2] = @"serialNumber";
  v4[3] = @"hardwareRevision";
  v3[4] = @"2A26";
  v3[5] = @"2A28";
  v4[4] = @"firmwareRevision";
  v4[5] = @"softwareRevision";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
  v2 = qword_6BB18;
  qword_6BB18 = v1;
}

uint64_t sub_E7C4()
{

  return NSRequestConcreteImplementation();
}

uint64_t sub_E7E0()
{

  return objc_opt_class();
}

id sub_EA0C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableData);
  v4 = [v2 length] - 1;
  if (v4 >= 0)
  {
    do
    {
      [v3 appendBytes:&(v4--)[objc_msgSend(v2 length:{"bytes")], 1}];
    }

    while (v4 != -1);
  }

  return v3;
}

id HDHealthPeripheralAllPropertyNames()
{
  v0 = objc_alloc_init(NSMutableArray);
  v1 = +[HDHealthPeripheral implementedProperties];
  [v0 addObjectsFromArray:v1];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = sub_F218();
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * i) implementedProperties];
        [v0 addObjectsFromArray:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v0;
}

id sub_F218()
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v0 = [NSArray arrayWithObjects:&v4 count:3];
  v1 = sub_F674();
  v2 = [v0 arrayByAddingObjectsFromArray:{v1, v4, v5}];

  return v2;
}

id HDHealthServiceClassForCBUUID(void *a1)
{
  v1 = qword_6BB30;
  v2 = a1;
  if (v1 != -1)
  {
    sub_2EA44();
  }

  v3 = [qword_6BB28 objectForKeyedSubscript:v2];

  return v3;
}

void sub_F364(id a1)
{
  v5 = sub_F218();
  v1 = NSStringFromSelector("serviceUUID");
  v2 = [v5 valueForKey:v1];

  v3 = [[NSDictionary alloc] initWithObjects:v5 forKeys:v2];
  v4 = qword_6BB28;
  qword_6BB28 = v3;
}

id HDHealthPeripheralProfiles()
{
  v2 = @"0x1826";
  v0 = [NSArray arrayWithObjects:&v2 count:1];

  return v0;
}

id HDServiceClassForProfile(uint64_t a1)
{
  if (qword_6BB40 != -1)
  {
    sub_2EA58();
  }

  v2 = qword_6BB38;
  v3 = [NSNumber numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void sub_F504(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_6BB38;
  qword_6BB38 = v1;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = sub_F674();
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = qword_6BB38;
        v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 serviceType]);
        [v9 setObject:v8 forKeyedSubscript:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [qword_6BB38 setObject:objc_opt_class() forKeyedSubscript:&off_5F9B8];
}

id sub_F674()
{
  v2 = objc_opt_class();
  v0 = [NSArray arrayWithObjects:&v2 count:1];

  return v0;
}

uint64_t sub_FC88(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hdw_sample];
  v4 = sub_2EC84(v2, v3);

  return v4;
}

void sub_121B8(void *a1)
{
  v2 = a1[5];
  if ((v2 - 6) >= 5)
  {
    if (v2 != 16)
    {
      if (v2 != 17)
      {
        return;
      }

      v7 = a1[6];
      v4 = v7 > 0x10;
      v8 = (1 << v7) & 0x1D000;
      if (!v4 && v8 != 0)
      {
        WeakRetained = objc_loadWeakRetained((a1[4] + 8));
        v11 = [WeakRetained fitnessMachineManager];
        [v11 endFitnessMachineSessionWithUUID:*(a1[4] + 40)];
      }
    }

    v12 = a1[4];

    sub_2F294(v12);
  }

  else
  {
    v3 = a1[6];
    v4 = v3 > 5;
    v5 = (1 << v3) & 0x32;
    if (!v4 && v5 != 0)
    {
      v13 = a1[4];

      sub_2F12C(v13);
    }
  }
}

void sub_123F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = *(a1 + 40);

  if (WeakRetained != v3)
  {
    v4 = *(*(a1 + 32) + 48);
    _HKInitializeLogging();
    v5 = HKLogWorkouts;
    if (v4 == 1)
    {
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v20 = 138543362;
        v21 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}@: Accumulator changed; considering attaching.", &v20, 0xCu);
      }

      v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v8 = [v7 fitnessMachineManager];
      v9 = [v8 fitnessMachineDataProducer];

      if (v9)
      {
        v10 = objc_loadWeakRetained((*(a1 + 32) + 56));

        if (v10)
        {
          v11 = objc_loadWeakRetained((*(a1 + 32) + 56));
          [v11 removeDataAccumulationObserver:v9];

          _HKInitializeLogging();
          v12 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            v13 = *(a1 + 32);
            v14 = v12;
            v15 = objc_loadWeakRetained((v13 + 56));
            v20 = 138543618;
            v21 = v13;
            v22 = 2114;
            v23 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Stopped observing old accumulator %{public}@", &v20, 0x16u);
          }
        }

        objc_storeWeak((*(a1 + 32) + 56), *(a1 + 40));
        _HKInitializeLogging();
        v16 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = *(a1 + 40);
          v20 = 138543874;
          v21 = v17;
          v22 = 2114;
          v23 = v9;
          v24 = 2114;
          v25 = v18;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: After accumulator change, adding %{public}@ as workout data accumulation observer at %{public}@", &v20, 0x20u);
        }

        [*(a1 + 40) addDataAccumulationObserver:v9];
      }
    }

    else if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = 138543362;
      v21 = v19;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Accumulator changed but we do not need to accept new accumulators.", &v20, 0xCu);
    }
  }
}

void sub_1279C(uint64_t a1)
{
  v2 = *(a1 + 32);
  _HKInitializeLogging();
  v3 = HKLogWorkouts;
  v4 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v12 = *(a1 + 40);
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: Recovering state", &v13, 0xCu);
    }

    sub_2F34C(*(a1 + 40), *(a1 + 32));
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: Saving recovering state", &v13, 0xCu);
    }

    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    WeakRetained = objc_loadWeakRetained((v7 + 8));
    v9 = [WeakRetained fitnessMachineManager];
    v10 = [v9 currentSessionRecoveryConfiguration];

    if (v10)
    {
      sub_2F488(*v6, v10);
    }

    else
    {
      _HKInitializeLogging();
      v11 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_2F69C(v6, v11);
      }
    }
  }
}

void sub_129E8(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:*(*(a1 + 40) + 40)])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 48);

    sub_2F488(v2, v3);
  }
}

void sub_13244(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

uint64_t sub_15638(uint64_t a1, _DWORD *a2, unsigned __int8 **a3, uint64_t a4, unint64_t a5)
{
  objc_opt_self();
  objc_opt_self();
  result = 0;
  if (a3)
  {
    if (a5)
    {
      v10 = *a3;
      if (*a3)
      {
        v11 = &v10[a4];
        if (&v10[a4] <= a5)
        {
          if (a4)
          {
            v12 = 0;
            v13 = 0;
            do
            {
              v14 = *v10++;
              v13 |= v14 << v12;
              v12 += 8;
              --a4;
            }

            while (a4);
          }

          else
          {
            v13 = 0;
          }

          *a3 = v11;
          if (a2)
          {
            *a2 = v13;
          }

          return 1;
        }

        else
        {
          result = 0;
          *a3 = 0;
        }
      }
    }
  }

  return result;
}

void sub_16064(uint64_t a1)
{
  if (sub_2F7A8(*(a1 + 32), *(a1 + 40)))
  {
    v2 = *(*(a1 + 32) + 40);

    [v2 workoutAppIsReady];
  }

  else
  {
    v3 = [NSError hk_error:801 format:@"Unknown connection UUID"];
    sub_2F80C(*(a1 + 32), v3, *(a1 + 40));
  }
}

void sub_16470(void *a1)
{
  v2 = a1[4];
  v3 = [*(a1[5] + 48) fitnessMachineSessionUUID];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [*(a1[5] + 48) fitnessMachine];
    *(*(a1[6] + 8) + 24) = [v4 type];
  }
}

void sub_1665C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 48) fitnessMachine];
  v4 = [v3 identifier];

  v5 = [*(v2 + 8) machineUUID];
  if ([v4 isEqual:v5])
  {
    v6 = [*(*(a1 + 32) + 48) fitnessMachineSessionUUID];
    v7 = [*(a1 + 40) sessionUUID];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = v9;
        v12 = [v10 machineUUID];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Not unpairing machine %@ because another workout is active with the same machine", &v14, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v13 = [HDFitnessMachineSession serviceFromRecoveryConfiguration:*(a1 + 40)];
  if (v13)
  {
    sub_32BB4(v2, v13);
  }

LABEL_9:
}

void sub_16950(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_16A04;
  v12[3] = &unk_5D210;
  v13 = v8;
  v14 = a3;
  v15 = a4;
  v12[4] = v9;
  v11 = v8;
  dispatch_async(v10, v12);
}

void sub_16A18(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16B10;
  block[3] = &unk_5CEA0;
  block[4] = v12;
  v18 = v9;
  v20 = v11;
  v21 = a2;
  v19 = v10;
  v14 = v11;
  v15 = v10;
  v16 = v9;
  dispatch_async(v13, block);
}

void sub_16B24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16B98;
  block[3] = &unk_5C800;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_16F08(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  v6 = [v3 fitnessMachineSessionUUID];
  v5 = [*(*(a1 + 32) + 48) recoveryConfiguration];
  [v4 fitnessMachineSessionUUID:v6 updatedRecoveryConfiguration:v5];
}

void sub_16F98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1703C;
  block[3] = &unk_5CBA8;
  v10 = v5;
  v11 = a2;
  block[4] = v6;
  v8 = v5;
  dispatch_async(v7, block);
}

void sub_1704C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_31D78;
  block[3] = &unk_5C800;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_170C0(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  v6 = [v3 fitnessMachineSessionUUID];
  v5 = [*(*(a1 + 32) + 48) recoveryConfiguration];
  [v4 fitnessMachineSessionUUID:v6 updatedRecoveryConfiguration:v5];
}

void sub_17150(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 48);
  v4 = a2;
  v6 = [v3 fitnessMachineSessionUUID];
  v5 = [*(*(a1 + 32) + 48) recoveryConfiguration];
  [v4 fitnessMachineSessionUUID:v6 updatedRecoveryConfiguration:v5];
}

void sub_171E0(uint64_t a1, void *a2)
{
  v3 = [a2 client];
  [v3 clientRemote_deliverDetectedNFC:*(a1 + 32)];
}

void sub_17234(uint64_t a1, void *a2)
{
  v4 = [a2 client];
  v3 = [*(*(a1 + 32) + 48) fitnessMachine];
  [v4 clientRemote_deliverMachineInformationUpdated:v3];
}

void sub_172A4(void *a1, void *a2)
{
  v6 = [a2 client];
  v3 = [*(a1[4] + 48) machineState];
  v4 = a1[6];
  v5 = [*(a1[4] + 48) fitnessMachineSessionUUID];
  [v6 clientRemote_deliverMachineChangedToState:v3 fromState:v4 fitnessMachineSessionUUID:v5 date:a1[5]];
}

void sub_1733C(void *a1, void *a2)
{
  v6 = [a2 client];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [*(a1[4] + 48) fitnessMachineSessionUUID];
  [v6 clientRemote_deliverConnectionChangedToState:v3 fromState:v4 fitnessMachineSessionUUID:v5 error:a1[5]];
}

void sub_173C4(uint64_t a1, void *a2)
{
  v7 = a2;
  if (!*(a1 + 32) || ([v7 uuid], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqual:", *(a1 + 32)), v3, v5 = v7, v4))
  {
    v6 = [v7 client];
    [v6 clientRemote_deliverFailedWithError:*(a1 + 40)];

    v5 = v7;
  }
}

id sub_1745C(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id sub_174A0(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_178C8(uint64_t a1)
{
  v2 = [HDFitnessMachineDataCollector alloc];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [(HDFitnessMachineDataCollector *)v2 initWithFitnessMachineType:v3 profile:WeakRetained];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:*(a1 + 32)];
}

void sub_17B78(uint64_t a1)
{
  v2 = [HDFitnessMachineDataCollector alloc];
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [(HDFitnessMachineDataCollector *)v2 initWithFitnessMachineType:v3 profile:WeakRetained];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:@"HDFitnessMachineMetricsCollectorDidChangeNotification" object:*(a1 + 32)];
}

uint64_t sub_17DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_17E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v1[6] fitnessMachine];
  v3 = [v4 device];
  [v1 _queue_handleReceivedCharacteristic:v2 device:v3 error:0];
}

void sub_17F5C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) healthServiceSessionIdentifier];
  v3 = *(a1 + 32);
  if (v2)
  {
    sub_31874(v3);
    v5 = *(a1 + 32);

    sub_30CE8(v5);
  }

  else
  {
    v4 = *(v3 + 96);

    [v4 cancelAllTimers];
  }
}

void sub_18108(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

BOOL sub_1817C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_18194()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_187D0(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    sub_330A8(a1, v3, v4);
  }
}

void sub_18B48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v1 == 2;
  v4 = *(v2 + 25);
  *(v2 + 25) = v3;
  if (v4 != v3)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 24) == 1)
    {
      if (v1 == 2)
      {
        [HDServiceConnectionManager reconnectToServices]_0(v5);
      }

      else
      {
        sub_33134(v5);
      }
    }
  }
}

void sub_18B8C(id val)
{
  if (val)
  {
    objc_initWeak(&location, val);
    v2 = *(val + 2);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_3337C;
    v5[3] = &unk_5D460;
    objc_copyWeak(&v6, &location);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_333CC;
    v3[3] = &unk_5D460;
    objc_copyWeak(&v4, &location);
    [v2 sendBluetoothStatusUpdatesForServer:@"_Connection_Manager" updateHandler:v5 completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_18C98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_18CBC(id *a1)
{
  v2 = [*(a1[4] + 4) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = a1[6];

    [v3 invalidate];
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_18F60;
    v15[3] = &unk_5D4B0;
    v16 = a1[6];
    objc_copyWeak(&v18, &location);
    v17 = a1[5];
    v4 = objc_retainBlock(v15);
    v5 = *(a1[4] + 2);
    v6 = a1[5];
    v14 = 0;
    v7 = [v5 connectHealthService:v6 sessionHandler:v4 dataHandler:&stru_5D4D0 error:&v14];
    v8 = v14;
    _HKInitializeLogging();
    v9 = HKLogServices;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [a1[5] identifier];
      v11 = [v10 UUIDString];
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Connecting service: %{public}@", buf, 0xCu);
    }

    if (v7)
    {
      v12 = *(a1[4] + 4);
      v13 = [NSNumber numberWithUnsignedInteger:v7];
      [v12 setObject:v13 forKey:a1[5]];
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void sub_18F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18F60(id *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v7 = a5;
  if (a4)
  {
    [a1[4] invalidate];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_19034;
    block[3] = &unk_5D488;
    v14 = a4;
    v12 = a1[5];
    v13 = v9;
    dispatch_async(v10, block);
  }
}

void sub_19034(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v5 = [v3 identifier];
      v6 = [v5 UUIDString];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Disconnecting service: %{public}@", &v8, 0xCu);
    }

    [*(*(a1 + 40) + 32) removeObjectForKey:*(a1 + 32)];
    v7 = *(a1 + 40);
    if (*(v7 + 24) == 1 && *(v7 + 25) == 1)
    {
      [HDServiceConnectionManager reconnectToServices]_0(v7);
    }
  }
}

void sub_19158(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
  }

  v2 = [*(*(a1 + 32) + 32) allValues];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
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

        [*(*(a1 + 32) + 16) disconnectHealthService:{objc_msgSend(*(*(&v7 + 1) + 8 * v6), "unsignedIntegerValue")}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_19274(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = [v2 unsignedIntegerValue];

  if (v3)
  {
    v4 = *(*(a1 + 32) + 16);

    [v4 disconnectHealthService:v3];
  }
}

id sub_19D70(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7 && *(v7 + 24))
        {
          sub_33FA4(v7 == 0, v7, v1);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v8 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = v8;
    }

    while (v8);
  }

  [*(*v1 + 96) removeAllObjects];
  result = [*(*v1 + 80) removeAllObjects];
  *(*v1 + 34) = 0;
  return result;
}

void sub_1A26C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) properties] & 0xC) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 80);
    v6 = [v3 UUID];
    [v4 setObject:v3 forKeyedSubscript:v6];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_340D8(v2, v5);
    }
  }
}

void sub_1A454(uint64_t a1)
{
  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v4 = [WeakRetained state];

  if (v4 == &dword_0 + 2)
  {
    sub_34154(a1, v2, &v11);
    v9 = v11;
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v10 = objc_loadWeakRetained((v6 + 48));
    v7 = [(_HDHealthServiceWriteOperation *)v10 stateDescription];
    v8 = [NSError hk_error:300 format:@"Device not connected: %@", v7];
    (*(v5 + 16))(v5, v6, 0, v8);

    v9 = v10;
  }
}

void sub_1A6C4(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(*(a1 + 32) + 96) count])
  {
    sub_342DC(v2, a1);
  }

  else
  {
    _HKInitializeLogging();
    v3 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEBUG))
    {
      sub_34028(v3);
    }
  }
}

void sub_1A8C8(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 32));
  if (v1)
  {
    sub_33664(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  }
}

NSObject *sub_1AA9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7);

  v9 = dispatch_time(0, 1000000000 * a2);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_source_set_event_handler(v8, v6);

  dispatch_resume(v8);

  return v8;
}

void sub_1AB5C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    _HKInitializeLogging();
    v3 = HKLogWorkouts;
    v4 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      sub_353A8(v4, a1, v3);
    }

    else
    {
      if (v4)
      {
        v5 = *(a1 + 8);
        v6 = *(a1 + 16);
        *buf = 138412546;
        v15 = v5;
        v16 = 2048;
        v17 = v6;
        v7 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "HDFitnessMachineStateTimer: Starting %@ timer with %llu seconds", buf, 0x16u);
      }

      objc_initWeak(buf, a1);
      v8 = *(a1 + 16);
      v9 = *(a1 + 40);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1AD1C;
      v12[3] = &unk_5D520;
      objc_copyWeak(&v13, buf);
      v10 = sub_1AA9C(HDFitnessMachineStateTimer, v8, v9, v12);
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }
}

void sub_1ACF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (!os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
  {
    if (WeakRetained)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_5;
  }

  sub_35434(WeakRetained, v2);
  if (!WeakRetained)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = WeakRetained[4];
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }

LABEL_5:
  v5 = WeakRetained[3];
  WeakRetained[3] = 0;
}

void sub_1AF58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersFieldDetectTimeout:v3];
  }
}

void sub_1AFE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersTagReadTimeout:v3];
  }
}

void sub_1B078(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersMachineIdentityVerificationTimeout:v3];
  }
}

void sub_1B108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersUserAcceptanceTimeout:v3];
  }
}

void sub_1B198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersWaitForMachineStartTimeout:v3];
  }
}

void sub_1B228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersPauseTimeout:v3];
  }
}

void sub_1B2B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersDisconnectTimeout:v3];
  }
}

void sub_1B348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersRetryConnectionTimeout:v3];
  }
}

void sub_1B3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v4 stateTimersMfaTimeout:v3];
  }
}

void sub_1B5A4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

id sub_1B5C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{

  return objc_initWeak(&location, v14);
}

void sub_1B5DC()
{

  objc_destroyWeak((v0 + 32));
}

void sub_1B5F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id from)
{

  objc_copyWeak((v14 + 32), &from);
}

void sub_1BB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BBB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_355B4(WeakRetained);
}

void sub_1BDF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1BE14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BE2C(void *a1)
{
  v1 = a1;
  v2 = &NSAllMapTableValues_ptr;
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v4 = *(v1[5] + 8);
  obj = *(v4 + 40);
  v5 = [HDServiceEntity allServicesWithProfile:WeakRetained error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (v5)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = objc_loadWeakRetained((v1[4] + 40));
    v9 = [v8 database];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      v14 = &HKLogServices;
      do
      {
        v15 = 0;
        v39 = v12;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v40 + 1) + 8 * v15);
          [v16 lastConnection];
          if (v17 + 7776000.0 >= v7)
          {
            [*(*(v1[6] + 8) + 40) addObject:v16];
          }

          else
          {
            _HKInitializeLogging();
            v18 = *v14;
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v18;
              [v16 identifier];
              v20 = v13;
              v21 = v10;
              v22 = v9;
              v23 = v14;
              v24 = v1;
              v26 = v25 = v2;
              *buf = 138412290;
              v47 = v26;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Removing inactive saved health service session %@", buf, 0xCu);

              v2 = v25;
              v1 = v24;
              v14 = v23;
              v9 = v22;
              v10 = v21;
              v13 = v20;
              v12 = v39;
            }

            [v2[162] deleteService:v16 healthDatabase:v9 error:0];
          }

          v15 = v15 + 1;
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v12);
    }

    v27 = v1[4];
    if (v27)
    {
      v28 = objc_loadWeakRetained((v27 + 40));
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 daemon];
    v30 = [v29 analyticsSubmissionCoordinator];
    v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(*(v1[6] + 8) + 40) count]);
    v32 = v1[4];
    if (v32)
    {
      v33 = objc_loadWeakRetained((v32 + 40));
    }

    else
    {
      v33 = 0;
    }

    v5 = v38;
    [v30 healthService_reportCountForAllServices:v31 profileType:{objc_msgSend(v33, "profileType")}];
  }

  else
  {
    v34 = *(v1[6] + 8);
    v35 = *(v34 + 40);
    *(v34 + 40) = 0;

    if (([*(*(v1[5] + 8) + 40) hk_isDatabaseAccessibilityError] & 1) == 0)
    {
      _HKInitializeLogging();
      v36 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(*(v1[5] + 8) + 40);
        *buf = 138543362;
        v47 = v37;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Error retrieving previous service sessions, %{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_1C4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C524(void *a1)
{
  v2 = a1[4];
  WeakRetained = objc_loadWeakRetained((a1[5] + 40));
  v4 = [WeakRetained database];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [HDServiceEntity healthUpdatesEnabledForDevice:v2 inDatabase:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[6] + 8) + 24) = v6;

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v7 = *(*(a1[7] + 8) + 40);
    if (v7)
    {
      if (([v7 hk_isDatabaseAccessibilityError] & 1) == 0 && (objc_msgSend(*(*(a1[7] + 8) + 40), "hk_isServiceDeviceNotFoundError") & 1) == 0)
      {
        _HKInitializeLogging();
        v8 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
        {
          v9 = a1[4];
          v10 = *(*(a1[7] + 8) + 40);
          *buf = 138412546;
          v13 = v9;
          v14 = 2114;
          v15 = v10;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Error retrieving update enabled status for device %@, %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_1C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1CA0C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v5 = [WeakRetained database];
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [HDServiceEntity setHealthUpdatesEnabled:v2 forDevice:v3 inDatabase:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v7;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    if (v8)
    {
      if (([v8 hk_isDatabaseAccessibilityError] & 1) == 0)
      {
        _HKInitializeLogging();
        v9 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 138412546;
          v14 = v10;
          v15 = 2114;
          v16 = v11;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Error setting update enabled status for device %@, %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

void sub_1CD8C(void *a1)
{
  v2 = a1[6];
  if (v2 && (*(a1[4] + 120) || (+[NSMutableDictionary dictionary], v3 = objc_claimAutoreleasedReturnValue(), v4 = a1[4], v5 = *(v4 + 120), *(v4 + 120) = v3, v5, (v2 = a1[6]) != 0)))
  {
    v6 = *(a1[4] + 120);
    v7 = objc_retainBlock(v2);
    [v6 setObject:v7 forKey:a1[5]];

    if (a1[7])
    {
      v8 = *(a1[4] + 16);
      v12 = 0;
      sub_1CE98(HDHealthServiceManager, v8, &v12);
      v9 = v12;
      (*(a1[7] + 16))();
    }
  }

  else
  {
    v10 = a1[5];
    v11 = *(a1[4] + 120);

    [v11 removeObjectForKey:v10];
  }
}

uint64_t sub_1CE98(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 state];

  if (v5 > 3)
  {
    if (v5 == (&dword_4 + 1))
    {
      return 2;
    }

    if (v5 != &dword_4)
    {
      goto LABEL_8;
    }

    v7 = @"Bluetooth is currently powered off.";
    v6 = 1;
LABEL_10:
    v8 = 201;
    goto LABEL_11;
  }

  if (v5 == (&dword_0 + 1))
  {
    v7 = [NSString stringWithFormat:@"CBCentralManagerState is %ld", 1];
    v6 = 3;
    goto LABEL_10;
  }

  if (v5 != (&dword_0 + 2))
  {
LABEL_8:
    v7 = [NSString stringWithFormat:@"CBCentralManagerState is %ld", v5];
    v6 = 0;
    v8 = 202;
    goto LABEL_11;
  }

  v6 = 0;
  v7 = @"This device does not support Bluetooth Low Energy.";
  v8 = 200;
LABEL_11:
  [NSError hk_assignError:a3 code:v8 description:v7];

  return v6;
}

void sub_1D3BC(uint64_t a1)
{
  sub_1D3FC(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  sub_1D6B4(v2);
}

void sub_1D3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v4 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = NSStringFromSelector("_queue_reportExistingDiscoveriesForService:");
      *buf = 138543874;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v22 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: serviceUUID: %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v22 = sub_1BE14;
    v23 = sub_1BE24;
    v24 = 0;
    v7 = *(a1 + 88);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_23AA8;
    v19[3] = &unk_5CA00;
    v19[4] = a1;
    v19[5] = buf;
    [v7 hk_withLock:v19];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *(*&buf[8] + 40);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 hasServiceWithUUID:{v3, v15}])
          {
            v13 = [v12 cbPeripheral];
            v14 = sub_37AEC(a1, v13, v3, 0, 0);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_1D6B4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 24));
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v4 = NSStringFromSelector("_queue_updateScan");
      *buf = 138543618;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v5 = *(a1 + 16);
    v36 = 0;
    v6 = sub_1CE98(HDHealthServiceManager, v5, &v36);
    v7 = v36;
    if (v6 == 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = sub_1BE14;
      v46 = sub_1BE24;
      v47 = 0;
      v8 = *(a1 + 48);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_21394;
      v35[3] = &unk_5CA00;
      v35[4] = a1;
      v35[5] = buf;
      [v8 hk_withLock:v35];
      v9 = [*(*&buf[8] + 40) allKeys];
      v10 = [NSSet setWithArray:v9];
      v11 = [v10 containsObject:*(a1 + 80)];
      if (v11)
      {
        v12 = [NSSet setWithObject:*(a1 + 80)];

        v10 = v12;
      }

      v13 = *(a1 + 72);
      if (v10 != v13 && (!v13 || ([v10 isEqualToSet:?] & 1) == 0))
      {
        if ([v9 count])
        {
          HKSessionTrackerAriadneTrigger();
          v14 = [*(*&buf[8] + 40) allValues];
          v29 = sub_375D4(a1, v14);

          if (v11)
          {
            v15 = sub_377E8(a1);
          }

          else
          {
            v15 = v9;
          }

          v25 = v15;
          _HKInitializeLogging();
          v26 = HKLogServices;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = sub_378C8(a1);
            v28 = [v25 componentsJoinedByString:{@", "}];
            *v38 = 138543874;
            v39 = v27;
            v40 = 2114;
            v41 = v28;
            v42 = 2112;
            v43 = v29;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ scanning for peripherals with services: %{public}@ options: %@", v38, 0x20u);
          }

          [*(a1 + 16) scanForPeripheralsWithServices:v25 options:v29];
          objc_storeStrong((a1 + 72), v10);
        }

        else
        {
          sub_3794C(a1);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v45 = sub_1BE14;
      v46 = sub_1BE24;
      v47 = 0;
      v16 = *(a1 + 48);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_213F0;
      v34[3] = &unk_5CA00;
      v34[4] = a1;
      v34[5] = buf;
      [v16 hk_withLock:v34];
      sub_3794C(a1);
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = *(*&buf[8] + 40);
      v18 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v18)
      {
        v19 = *v31;
        do
        {
          v20 = 0;
          do
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v30 + 1) + 8 * v20);
            if (v21)
            {
              v22 = *(v21 + 32);
              v23 = *(v21 + 24);
            }

            else
            {
              v22 = 0;
              v23 = 0;
            }

            v22[2](v22, v23, 0, 1, v7);

            v20 = v20 + 1;
          }

          while (v18 != v20);
          v24 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
          v18 = v24;
        }

        while (v24);
      }

      _Block_object_dispose(buf, 8);
    }
  }
}

id sub_1DEDC(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1DF10(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[7];
    v15 = 134217984;
    v16 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Stopping discovery %lu", &v15, 0xCu);
  }

  v4 = [*(a1[4] + 56) objectWithIdentifier:a1[7]];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), *(v4 + 32));
    dispatch_source_cancel(*(v5 + 48));
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    _HKInitializeLogging();
    v7 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
    {
      v8 = a1[7];
      v9 = v7;
      v10 = [NSNumber numberWithUnsignedInteger:v8];
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Removing object with identifier: %@", &v15, 0xCu);
    }

    [*(a1[4] + 56) removeObjectWithIdentifier:a1[7]];
    v11 = *(v5 + 40);
    v12 = [*(a1[4] + 64) objectForKeyedSubscript:v11];
    if (v12)
    {
      _HKInitializeLogging();
      v13 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v11;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Removing info for service uuid: %@", &v15, 0xCu);
      }

      [v12 removeObject:v5];
      if (![v12 count])
      {
        [*(a1[4] + 64) removeObjectForKey:v11];
        *(*(a1[6] + 8) + 24) = 1;
      }
    }
  }

  else
  {
    v14 = *(a1[5] + 8);
    v11 = *(v14 + 40);
    *(v14 + 40) = 0;
  }
}

void sub_1E170(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  _HKInitializeLogging();
  v3 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = v3;
    v7 = NSStringFromSelector(v4);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = 138544130;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: timeout: %lu, identifier: %lu", &v10, 0x2Au);
  }

  [*(a1 + 32) stopDiscoveryWithIdentifier:*(a1 + 56)];
  objc_autoreleasePoolPop(v2);
}

void *sub_1E58C(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1BE14;
    v14 = sub_1BE24;
    v15 = 0;
    v5 = a1[6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_20CEC;
    v7[3] = &unk_5C7B0;
    v9 = &v10;
    v7[4] = a1;
    v8 = v3;
    [v5 hk_withLock:v7];
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_1E69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E950(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        if (v7)
        {
          v8 = *(v7 + 40);
          if (v8)
          {
            v9 = v8;
            v10 = objc_retainBlock(v8);
            v11 = a1[6];
            v12 = [NSNumber numberWithUnsignedInteger:*(v7 + 16)];
            [v11 setObject:v10 forKeyedSubscript:v12];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t sub_1EC50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    _HKInitializeLogging();
    v10 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = NSStringFromSelector("_addConnectedPeripheral:service:connectionInfo:");
      *buf = 138544386;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      *&buf[22] = 2114;
      v69 = v7;
      *v70 = 2114;
      *&v70[2] = v8;
      *&v70[10] = 2114;
      *&v70[12] = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: peripheral: %{public}@, hkService: %{public}@, connectionInfo: %{public}@", buf, 0x34u);
    }

    v13 = HDServiceClassForProfile([v8 type]);
    if (v13)
    {
      v14 = [v8 serviceId];
      v15 = v14 == 0;

      if (v15)
      {
        v16 = [v13 serviceUUID];
        v17 = [v16 UUIDString];
        [v8 setServiceId:v17];
      }

      v58 = 0;
      v59 = &v58;
      v60 = 0x2020000000;
      v61 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v69 = sub_1BE14;
      *v70 = sub_1BE24;
      *&v70[8] = 0;
      v18 = *(a1 + 88);
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_36F84;
      v51[3] = &unk_5D690;
      v51[4] = a1;
      v55 = &v58;
      v19 = v9;
      v52 = v19;
      v20 = v7;
      v53 = v20;
      v56 = buf;
      v54 = v8;
      v57 = v13;
      [v18 hk_withLock:v51];
      if (!v59[3])
      {
        v25 = 0;
LABEL_41:

        _Block_object_dispose(buf, 8);
        _Block_object_dispose(&v58, 8);
        goto LABEL_42;
      }

      v21 = [v20 state];
      if (v21 > 1)
      {
        if (v21 == &dword_0 + 2)
        {
          _HKInitializeLogging();
          v32 = HKLogServices;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            [v20 name];
            objc_claimAutoreleasedReturnValue();
            sub_38324();
          }

          v23 = 0;
          v29 = 7;
          if (v19)
          {
            v30 = 3;
            goto LABEL_34;
          }

LABEL_54:
          v33 = 0;
LABEL_35:
          v34 = v33;
          (*(v34 + 2))(v34, v59[3], v29, 0, 0);

          if (v23)
          {
            if (v19 && (*(v19 + 56) & 2) != 0)
            {
              _HKInitializeLogging();
              v42 = HKLogServices;
              if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
              {
                *v62 = 138412290;
                v63 = v20;
                _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "(#w0) Tagging peripheral for mfa: %@", v62, 0xCu);
              }

              [v20 tag:@"needsMFiAuthenticationCertClass2.0c"];
            }

            sub_37330(a1, v19);
            HKSessionTrackerAriadneTrigger();
            _HKInitializeLogging();
            v43 = HKLogServices;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [*(*&buf[8] + 40) cbPeripheral];
              *v62 = 138543874;
              v63 = a1;
              v64 = 2114;
              v65 = v20;
              v66 = 2114;
              *v67 = v44;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: connectPeripheral: %{public}@ (hdPeripheral.cbPeripheral: %{public}@)", v62, 0x20u);
            }

            [*(a1 + 16) connectPeripheral:v20 options:0];
          }

LABEL_36:
          _HKInitializeLogging();
          v35 = HKLogServices;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = NSStringFromSelector(aSelector);
            v37 = [v20 name];
            v38 = v37;
            v39 = v59[3];
            if (v19)
            {
              v40 = *(v19 + 10);
            }

            else
            {
              v40 = 0;
            }

            *v62 = 138413058;
            v63 = v36;
            v64 = 2112;
            v65 = v37;
            v66 = 1024;
            *v67 = v39;
            *&v67[4] = 2112;
            *&v67[6] = v40;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%@: %@ (%d) %@", v62, 0x26u);
          }

          v25 = v59[3];
          goto LABEL_41;
        }

        if (v21 != &dword_0 + 3)
        {
          goto LABEL_28;
        }

        _HKInitializeLogging();
        v26 = HKLogServices;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [v20 name];
          *v62 = 138412290;
          v63 = v27;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Disconnecting from %@", v62, 0xCu);
        }
      }

      else if (v21)
      {
        if (v21 == &dword_0 + 1)
        {
          _HKInitializeLogging();
          v22 = HKLogServices;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            [v20 name];
            objc_claimAutoreleasedReturnValue();
            sub_382E0();
          }

          v23 = 0;
          goto LABEL_26;
        }

LABEL_28:
        _HKInitializeLogging();
        v31 = HKLogServices;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v45 = NSStringFromSelector(aSelector);
          v46 = _HKStringForHealthServiceStatus();
          if (v19)
          {
            v47 = *(v19 + 10);
          }

          else
          {
            v47 = 0;
          }

          v48 = v47;
          v49 = [v20 state];
          *v62 = 138413058;
          v63 = v45;
          v64 = 2114;
          v65 = v46;
          v66 = 2114;
          *v67 = v48;
          *&v67[8] = 1024;
          *&v67[10] = v49;
          _os_log_error_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "*** %@, unknown state %{public}@ for %{public}@ state %d", v62, 0x26u);
        }

        goto LABEL_36;
      }

      _HKInitializeLogging();
      v28 = HKLogServices;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        [v20 name];
        objc_claimAutoreleasedReturnValue();
        sub_3829C();
      }

      v23 = 1;
LABEL_26:
      v29 = 6;
      if (v19)
      {
        v30 = 2;
LABEL_34:
        *(v19 + 11) = v30;
        v33 = *(v19 + 3);
        goto LABEL_35;
      }

      goto LABEL_54;
    }

    _HKInitializeLogging();
    v24 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
    {
      sub_38368(v24, v8);
    }
  }

  v25 = 0;
LABEL_42:

  return v25;
}

void sub_1F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1F550(uint64_t a1, uint64_t (*a2)(uint64_t result, uint64_t a2), void *a3)
{
  v47 = a3;
  if (a1)
  {
    _HKInitializeLogging();
    v5 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = NSStringFromSelector("_removeConnectedPeripheral:withError:");
      *buf = 138544130;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2048;
      v88 = a2;
      LOWORD(v89) = 2114;
      *(&v89 + 2) = v47;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: (#w0) %{public}@: sessionIdentifier: %lu, error: %{public}@", buf, 0x2Au);
    }

    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v88 = sub_1BE14;
    *&v89 = sub_1BE24;
    *(&v89 + 1) = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x3032000000;
    v65 = sub_1BE14;
    v66 = sub_1BE24;
    v67 = 0;
    v8 = *(a1 + 88);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_20DBC;
    v52[3] = &unk_5D6B8;
    v60 = "_removeConnectedPeripheral:withError:";
    v61 = a2;
    v53 = v47;
    v54 = a1;
    v46 = a1;
    v55 = buf;
    v56 = &v62;
    v57 = &v68;
    v58 = &v76;
    v59 = &v72;
    [v8 hk_withLock:v52];
    if (v77[3])
    {
      v9 = *(*&buf[8] + 40);
      if (v9)
      {
        v9 = v9[3];
      }

      v10 = v9;
      (v10[2].isa)(v10, a2, v77[3], *(v73 + 24), 0);
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogServices;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v39 = NSStringFromSelector("_removeConnectedPeripheral:withError:");
        v40 = v77[3];
        v41 = _HKStringForHealthServiceStatus();
        v42 = *(*&buf[8] + 40);
        if (v42)
        {
          v42 = v42[10];
        }

        v43 = v42;
        v44 = [v63[5] state];
        *v81 = 138413058;
        v82 = v39;
        v83 = 2114;
        *v84 = v41;
        *&v84[8] = 2114;
        *&v84[10] = v43;
        v85 = 1024;
        v86 = v44;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "*** %@, unknown state %{public}@ for %{public}@ state %d", v81, 0x26u);
      }
    }

    if (*(v69 + 24) == 1)
    {
      v11 = [v63[5] cbPeripheral];
      v12 = v11;
      v13 = *(*&buf[8] + 40);
      if (v13 && (*(v13 + 56) & 1) != 0)
      {
        v17 = [v11 identifier];
        v18 = sub_201B0(a1, v17);

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v48 objects:v80 count:16];
        if (v20)
        {
          v45 = v12;
          v21 = *v49;
LABEL_15:
          v22 = 0;
          while (1)
          {
            if (*v49 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v48 + 1) + 8 * v22);
            _HKInitializeLogging();
            v24 = HKLogServices;
            if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
            {
              if (v23)
              {
                v25 = v23[12];
              }

              else
              {
                v25 = 0;
              }

              *v81 = 138412546;
              v82 = v23;
              v83 = 2048;
              *v84 = v25;
              _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Checking pairing state %@ %ld", v81, 0x16u);
            }

            if (v23 && v23[12] == 3)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v26 = [v19 countByEnumeratingWithState:&v48 objects:v80 count:16];
              v20 = v26;
              if (!v26)
              {
                v16 = 0;
                goto LABEL_30;
              }

              goto LABEL_15;
            }
          }

          v16 = 1;
LABEL_30:
          a1 = v46;
        }

        else
        {
          v16 = 0;
        }

        v14 = 1;
        v15 = 1;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
      }

      _HKInitializeLogging();
      if (sub_38434(v16))
      {
        _HKInitializeLogging();
        v27 = HKLogServices;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v63[5] cbPeripheral];
          *v81 = 138412290;
          v82 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Unpairing peripheral %@", v81, 0xCu);
        }

        v29 = [v12 identifier];
        sub_37514(a1, v29, &stru_5D6F8);

        v30 = *(a1 + 16);
        v31 = [v30 sharedPairingAgent];
        [v31 setDelegate:a1];

        v32 = *(a1 + 16);
        v33 = [v32 sharedPairingAgent];
        [v33 unpairPeer:v12];
      }

      else
      {
        _HKInitializeLogging();
        v34 = HKLogServices;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v63[5] cbPeripheral];
          *v81 = 138543874;
          v82 = a1;
          v83 = 1024;
          *v84 = v15;
          *&v84[4] = 2112;
          *&v84[6] = v35;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling peripheral connection (forcing=%{BOOL}d for peripheral %@)", v81, 0x1Cu);
        }

        if (v14)
        {
          v36 = *(a1 + 16);
          v37 = [v36 sharedPairingAgent];
          [v37 setDelegate:0];

          v38 = [v12 identifier];
          sub_37514(a1, v38, &stru_5D718);
        }

        [*(a1 + 16) cancelPeripheralConnection:v12 force:{v14, v45}];
      }
    }

    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v76, 8);
  }
}

void sub_1FCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v51 - 160), 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void *sub_201B0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1BE14;
    v14 = sub_1BE24;
    v15 = 0;
    v5 = a1[11];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_20D54;
    v7[3] = &unk_5C7B0;
    v9 = &v10;
    v7[4] = a1;
    v8 = v3;
    [v5 hk_withLock:v7];
    a1 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  return a1;
}

void sub_202C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_202D8(uint64_t a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(*(a1 + 32) + 112);
  v2 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v37;
    v5 = &NSAllMapTableValues_ptr;
    v27 = *v37;
    do
    {
      v6 = 0;
      v28 = v3;
      do
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:v7];
        v9 = *(*(a1 + 32) + 16);
        v45 = v7;
        v10 = [v5[224] arrayWithObjects:&v45 count:1];
        v11 = [v9 retrievePeripheralsWithIdentifiers:v10];

        if ([v11 count])
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          [v8 updateCBPeripheral:v12];
        }

        if (![v8 state])
        {
          v30 = v11;
          v31 = v6;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:v7];
          v14 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v33;
            do
            {
              v17 = 0;
              do
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v32 + 1) + 8 * v17);
                _HKInitializeLogging();
                v19 = HKLogServices;
                if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
                {
                  if (v18)
                  {
                    v20 = *(v18 + 16);
                  }

                  else
                  {
                    v20 = 0;
                  }

                  v21 = v19;
                  v22 = [v8 cbPeripheral];
                  *buf = 134218242;
                  v41 = v20;
                  v42 = 2112;
                  v43 = v22;
                  _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Peripheral was unexpectedly disconnected. sessionIdentifier =  %lu, peripheral = %@", buf, 0x16u);
                }

                v23 = *(a1 + 40);
                if (v18)
                {
                  v24 = *(v18 + 16);
                }

                else
                {
                  v24 = 0;
                }

                v25 = [NSNumber numberWithUnsignedInteger:v24];
                [v23 addObject:v25];

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v26 = [v13 countByEnumeratingWithState:&v32 objects:v44 count:16];
              v15 = v26;
            }

            while (v26);
          }

          v4 = v27;
          v3 = v28;
          v5 = &NSAllMapTableValues_ptr;
          v11 = v30;
          v6 = v31;
        }

        v6 = v6 + 1;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v3);
  }
}

void sub_205FC(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(*(a1 + 32) + 104);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 104) objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v6)];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v13 + 1) + 8 * v11);
              if (v12 && *(v12 + 88) == 2)
              {
                [*(a1 + 40) addObject:?];
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_20810(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) allObjects];
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        if (v9 && *(v9 + 64) == 1)
        {
          v10 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:{*(v9 + 80), v13}];
          if (v10)
          {
            [v3 addObject:v10];
          }

          v11 = *(v9 + 48);
          v12 = v11;
          if (v11)
          {
            (*(v11 + 2))(v11, *(v9 + 16), 0);
          }

          if (*(v9 + 64) == 1)
          {
            *(v9 + 64) = 2;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void sub_20A48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v2 = *(a1 + 32);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 24));
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  *(v5 + 128) = v4;

  v7 = *(*(a1 + 32) + 128);
  v8 = dispatch_walltime(0, 3540000000000);
  dispatch_source_set_timer(v7, v8, 0x33838714800uLL, 0x3B9ACA00uLL);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 128);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_20B6C;
  v12[3] = &unk_5C8C8;
  v12[4] = v10;
  v13 = v9;
  dispatch_source_set_event_handler(v11, v12);
  dispatch_activate(*(*(a1 + 32) + 128));
  sub_36E70(*(a1 + 32), *(a1 + 40));
}

void sub_20BEC(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = NSStringFromSelector(v3);
    v10 = 138543618;
    v11 = v4;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@", &v10, 0x16u);
  }

  v7 = *(*(a1 + 32) + 128);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 128);
    *(v8 + 128) = 0;
  }
}

void sub_20CEC(void *a1)
{
  v5 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_20D54(void *a1)
{
  v5 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_20DBC(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 88);
    v4 = v2;
    v5 = NSStringFromSelector(v3);
    v6 = *(a1 + 96);
    v7 = *(a1 + 32);
    v49 = 138412802;
    v50 = v5;
    v51 = 1024;
    *v52 = v6;
    *&v52[4] = 2112;
    *&v52[6] = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@: sessionIdentifier %d, error %@", &v49, 0x1Cu);
  }

  v8 = a1 + 40;
  v9 = (a1 + 96);
  v10 = [*(*(a1 + 40) + 96) objectWithIdentifier:*(a1 + 96)];
  v11 = a1 + 48;
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v10;

  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (v14)
  {
    if (*(v14 + 112))
    {
      sub_384F8((a1 + 48));
    }

    v15 = *(*(*v11 + 8) + 40);
    if (v15)
    {
      v16 = *(v15 + 80);
    }

    else
    {
      v16 = 0;
    }

    v17 = [*(*v8 + 104) objectForKeyedSubscript:v16];
    v18 = *(*v8 + 112);
    v19 = *(*(*v11 + 8) + 40);
    if (v19)
    {
      v19 = v19[10];
    }

    v20 = v19;
    v21 = [v18 objectForKeyedSubscript:v20];
    v22 = (a1 + 56);
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v21;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      _HKInitializeLogging();
      v30 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        sub_38A40(a1, v30, (a1 + 96));
      }

      goto LABEL_48;
    }

    if ([v17 count] != &dword_0 + 1)
    {
      if (v17 && (v31 = [v17 indexOfObject:*(*(*v11 + 8) + 40)], v31 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v39 = v31;
        _HKInitializeLogging();
        v40 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v49) = 0;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Removing object from connection infos table", &v49, 2u);
        }

        *(*(*(a1 + 72) + 8) + 24) = 10;
        [*(*(a1 + 40) + 96) removeObjectWithIdentifier:*(a1 + 96)];
        [v17 removeObjectAtIndex:v39];
        *(*(*(a1 + 80) + 8) + 24) = 1;
      }

      else
      {
        _HKInitializeLogging();
        v32 = HKLogServices;
        if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
        {
          sub_38548(a1, v32, (a1 + 96));
        }
      }

      _HKInitializeLogging();
      v41 = HKLogServices;
      if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = NSStringFromSelector(*(a1 + 88));
          v44 = [v17 count];
          v45 = [*(*(*(a1 + 56) + 8) + 40) name];
          v46 = v45;
          v47 = *(a1 + 96);
          v48 = *(*(*(a1 + 48) + 8) + 40);
          if (v48)
          {
            v48 = *(v48 + 80);
          }

          v49 = 138413314;
          v50 = v43;
          v51 = 2048;
          *v52 = v44;
          *&v52[8] = 2112;
          *&v52[10] = v45;
          v53 = 1024;
          v54 = v47;
          v55 = 2112;
          v56 = v48;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_INFO, "%@, %ld sessions remain: %@ (%d) %@", &v49, 0x30u);
        }
      }

      goto LABEL_48;
    }

    _HKInitializeLogging();
    v25 = HKLogServices;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      sub_385F4(a1 + 48, (a1 + 56));
    }

    v26 = [*(*(*v22 + 8) + 40) state];
    if ((v26 - 1) >= 3)
    {
      if (!v26)
      {
        *(*(*(a1 + 72) + 8) + 24) = 9;
        [*(*(a1 + 40) + 96) removeObjectWithIdentifier:*(a1 + 96)];
        v33 = *(*(*(a1 + 48) + 8) + 40);
        if (v33)
        {
          v34 = *(v33 + 80);
        }

        else
        {
          v34 = 0;
        }

        [*(*(a1 + 40) + 112) removeObjectForKey:v34];
        v35 = *(*(*v11 + 8) + 40);
        if (v35)
        {
          v36 = *(v35 + 80);
        }

        else
        {
          v36 = 0;
        }

        [*(*v8 + 104) removeObjectForKey:v36];
        [*(*(*v22 + 8) + 40) disconnectServices];
        v37 = *(*(*v11 + 8) + 40);
        if (v37 && *(v37 + 96) == 2)
        {
          sub_386F8((a1 + 40), (a1 + 56));
        }

        *(*(*(a1 + 80) + 8) + 24) = 1;
      }

      goto LABEL_36;
    }

    v27 = *(*(*v11 + 8) + 40);
    if (v27)
    {
      if (*(v27 + 88) == 4)
      {
LABEL_36:
        _HKInitializeLogging();
        v38 = HKLogServices;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          sub_38984(v22);
        }

LABEL_48:
        return;
      }

      *(v27 + 88) = 4;
    }

    sub_3880C((a1 + 56), a1);
    goto LABEL_36;
  }

  _HKInitializeLogging();
  v28 = HKLogServices;
  if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *v9;
    v49 = 67109120;
    LODWORD(v50) = v29;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "*** Connection already closed for %d", &v49, 8u);
  }
}

const __CFString *_HKStringForHealthServiceConnectionState(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_5D860[a1 - 1];
  }
}

uint64_t sub_21394(uint64_t a1)
{
  v2 = [[NSDictionary alloc] initWithDictionary:*(*(a1 + 32) + 64) copyItems:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_213F0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(a1 + 32) + 56) removeAllObjects];
  v5 = *(*(a1 + 32) + 64);

  return [v5 removeAllObjects];
}

void sub_21580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21598(void *a1)
{
  v2 = [*(a1[4] + 112) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_217EC(uint64_t a1)
{
  v2 = [NSUUID alloc];
  v3 = [*(a1 + 32) localIdentifier];
  v4 = [v2 initWithUUIDString:v3];

  v25 = v4;
  v5 = [*(*(a1 + 40) + 104) objectForKeyedSubscript:v4];
  if (![v5 count])
  {
    _HKInitializeLogging();
    v6 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 localIdentifier];
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "No connection infos found for device uuid: %@", buf, 0xCu);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        if (v15 && (*(v15 + 88) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v16 = *(v15 + 32);
          v17 = objc_retainBlock(v16);
          v18 = *(a1 + 48);
          v19 = [NSNumber numberWithUnsignedInteger:*(v15 + 16)];
          [v18 setObject:v17 forKeyedSubscript:v19];
        }

        else
        {
          _HKInitializeLogging();
          v20 = HKLogServices;
          if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_INFO))
          {
            if (v15 && (v21 = *(v15 + 88) - 1, v21 <= 3))
            {
              v22 = off_5D860[v21];
            }

            else
            {
              v22 = @"Unknown";
            }

            v23 = *(a1 + 56);
            *buf = 138412546;
            v31 = v23;
            v32 = 2112;
            v33 = v22;
            v24 = v20;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "Ignoring received characteristic %@, state='%@'", buf, 0x16u);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v12);
  }
}

void sub_21AC8(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKeyedSubscript:a1[5]];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        (*(a1[6] + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_21D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21DA4(void *a1)
{
  v2 = [*(a1[4] + 96) objectWithIdentifier:a1[6]];
  if (v2)
  {
    v3 = *(a1[4] + 112);
    v8 = v2;
    v4 = v2[10];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = v8;
  }
}

void sub_22104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22128(void *a1)
{
  v2 = [*(a1[4] + 96) objectWithIdentifier:a1[6]];
  if (v2)
  {
    v3 = *(a1[4] + 112);
    v8 = v2;
    v4 = v2[10];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = v8;
  }
}

void sub_22484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_224A8(void *a1)
{
  v2 = [*(a1[4] + 96) objectWithIdentifier:a1[6]];
  if (v2)
  {
    v3 = *(a1[4] + 112);
    v8 = v2;
    v4 = v2[10];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = *(a1[5] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v2 = v8;
  }
}

void sub_22A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AA0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(*(a1 + 32) + 104);
  v4 = [*(a1 + 40) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v54 count:16];
  v36 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v42;
    *&v8 = 138412290;
    v35 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        if (v12)
        {
          if (*(v12 + 88) == 3)
          {
            goto LABEL_8;
          }

          v22 = *(v12 + 24);
        }

        else
        {
          v22 = 0;
        }

        sub_38B44(v2, v22, v12 == 0, *(*(&v41 + 1) + 8 * v11));
LABEL_8:
        v13 = [*(a1 + 48) sharedPairingAgent];
        v14 = [v13 isPeerPaired:*(a1 + 40)];

        if (v14)
        {
          if (v12)
          {
            *(v12 + 96) = 3;
            if ((*(v12 + 56) & 2) != 0)
            {
              *(*(*(a1 + 56) + 8) + 24) = 1;
              goto LABEL_31;
            }

LABEL_18:
            if (*(v12 + 8))
            {
              goto LABEL_24;
            }
          }
        }

        else if (v12)
        {
          if ((*(v12 + 56) & 1) != 0 && (*(v12 + 8) & 1) == 0)
          {
            _HKInitializeLogging();
            v15 = HKLogServices;
            if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 40);
              *buf = v35;
              v47 = v16;
              _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Calling pair peer on %@", buf, 0xCu);
            }

            HKSessionTrackerAriadneTrigger();
            *(v12 + 96) = 1;
            v17 = [*(a1 + 48) sharedPairingAgent];
            [v17 pairPeer:*(a1 + 40)];

            *(v12 + 8) = 1;
          }

          goto LABEL_18;
        }

        _HKInitializeLogging();
        v18 = HKLogServices;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 40);
          if (v12)
          {
            v20 = [NSNumber numberWithUnsignedInteger:*(v12 + 56)];
            v21 = *(v12 + 8);
          }

          else
          {
            v20 = [NSNumber numberWithUnsignedInteger:0];
            v21 = 0;
          }

          *buf = 138413058;
          v47 = v19;
          v48 = 2114;
          v49 = v20;
          v50 = 1024;
          v51 = v21;
          v52 = 1024;
          v53 = v14;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Not calling pair peer on %@, connectionOptions=%{public}@, pairingAttempted=%{BOOL}d, isPeripheralPaired=%{BOOL}d", buf, 0x22u);

          v6 = v36;
        }

LABEL_24:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v23 = [v6 countByEnumeratingWithState:&v41 objects:v54 count:16];
      v9 = v23;
    }

    while (v23);
  }

LABEL_31:

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [v2 allKeys];
    v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * i);
          v30 = [v2 objectForKeyedSubscript:v29];
          (v30)[2](v30, [v29 unsignedIntegerValue], 7, 0, 0);
        }

        v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v26);
    }

    v31 = *(a1 + 40);
    v32 = *(*(a1 + 32) + 112);
    v33 = [v31 identifier];
    v34 = [v32 objectForKeyedSubscript:v33];

    if (v34)
    {
      [v34 discoverServices];
    }

    v6 = v36;
  }
}

void sub_235D4(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v29 = a2;
  v8 = a3;
  v31 = a4;
  v33 = a1;
  if (a1)
  {
    _HKInitializeLogging();
    v9 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = NSStringFromSelector("_notifyDiscoveryForInfos:peripheral:healthService:alwaysNotify:");
      *buf = 138544642;
      v47 = a1;
      v48 = 2114;
      v49 = v11;
      v50 = 2114;
      *v51 = v8;
      *&v51[8] = 2114;
      v52 = v31;
      v53 = 1024;
      v54 = a5;
      v55 = 2114;
      v56 = v29;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: %{public}@: peripheral: %{public}@, healthService: %{public}@, alwaysNotify: %{BOOL}d, discoveryInfos: %{public}@", buf, 0x3Au);
    }

    v44 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    obj = v29;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v12)
    {
      v13 = *v42;
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          v37 = 0;
          v38 = &v37;
          v39 = 0x2020000000;
          v40 = 0;
          v16 = *(v33 + 48);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_23A44;
          v34[3] = &unk_5C7B0;
          v36 = &v37;
          v34[4] = v15;
          v35 = v8;
          [v16 hk_withLock:v34];
          if (a5 & 1) != 0 || (v38[3])
          {
            if (v15)
            {
LABEL_12:
              v17 = 0;
              v18 = *(v15 + 32);
            }

            else
            {
              v18 = 0;
              v17 = 1;
            }

            v19 = v18;
            _HKInitializeLogging();
            v20 = HKLogServices;
            if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
            {
              if (v17)
              {
                v21 = 0;
              }

              else
              {
                v21 = *(v15 + 24);
              }

              *buf = 134218242;
              v47 = v21;
              v48 = 2112;
              v49 = v8;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Notifying client with server ID %ld of new peripheral: %@", buf, 0x16u);
            }

            if (v17)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(v15 + 24);
            }

            (*(v19 + 2))(v19, v22, v31, 0, 0);

            goto LABEL_20;
          }

          if (v15 && (*(v15 + 16) & 1) != 0)
          {
            goto LABEL_12;
          }

          _HKInitializeLogging();
          v23 = HKLogServices;
          if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
          {
            if (v15)
            {
              v24 = *(v15 + 24);
              v25 = v38;
              v26 = *(v15 + 16);
            }

            else
            {
              v24 = 0;
              v26 = 0;
              v25 = v38;
            }

            v27 = *(v25 + 24);
            *buf = 134219010;
            v47 = v24;
            v48 = 2112;
            v49 = v8;
            v50 = 1024;
            *v51 = 0;
            *&v51[4] = 1024;
            *&v51[6] = v27;
            LOWORD(v52) = 1024;
            *(&v52 + 2) = v26;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Not notifying client with server ID %ld of new peripheral: %@ because none of these is true: alwaysNotify: %{BOOL}d, firstTime: %d discovery info always notify: %{BOOL}d", buf, 0x28u);
          }

LABEL_20:

          _Block_object_dispose(&v37, 8);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v28 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        v12 = v28;
      }

      while (v28);
    }
  }
}

void sub_23A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  *(*(*(a1 + 48) + 8) + 24) = sub_37D00(v2, v3);
}

uint64_t sub_23AA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_23D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_244C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24AB8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, log, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void sub_24B2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x20u);
}

uint64_t sub_24B44(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

BOOL sub_24B80()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_24B98()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_24BE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id sub_24C08(uint64_t a1)
{

  return [v2 setObject:v1 forKeyedSubscript:a1];
}

void sub_24C28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0x2Au);
}

void sub_24F78(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);

    sub_38F0C(v2);
  }
}

id sub_25228(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (a1 && v6)
  {
    v9 = *(a1 + 80);
    v10 = [v6 objectType];
    LODWORD(v9) = [v9 containsObject:v10];

    if (v9)
    {
      if (*(a1 + 144))
      {
        v11 = [v5 dateInterval];
        v12 = [v11 endDate];
        v8 = [v12 hk_isBeforeOrEqualToDate:*(a1 + 144)];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = &dword_0 + 1;
    }
  }

  return v8;
}

id sub_252F8(id a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_256CC;
    v32 = sub_256DC;
    v10 = v8;
    v33 = v10;
    _HKInitializeLogging();
    v11 = HKLogDataCollection;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 identifier];
      *buf = 138412802;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v35 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Calculating datum for aggregator of type %@, currentDatum %@, previousDatum %@", buf, 0x20u);
    }

    if (![v7 aggregationStyle])
    {
      if (v9)
      {
        v13 = +[NSUUID UUID];
        v14 = [v10 datumForChangeSince:v9 newIdentifier:v13 newResumeContext:0];

        if (v14)
        {
          objc_storeStrong(v29 + 5, v14);
        }
      }

      else
      {
        v15 = [v10 quantity];
        v16 = [v15 _isZero];

        if ((v16 & 1) == 0)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v35 = sub_256CC;
          v36 = sub_256DC;
          v37 = [v10 dateInterval];
          v17 = *(*&buf[8] + 40);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_256E4;
          v24[3] = &unk_5D8B0;
          v25 = v10;
          v26 = buf;
          v27 = &v28;
          sub_258F0(a1, v7, v17, v24);

          _Block_object_dispose(buf, 8);
        }
      }
    }

    v18 = [v29[5] quantity];
    v19 = [v18 _isZero];

    if (v19)
    {
      v20 = v29[5];
      v29[5] = 0;
    }

    _HKInitializeLogging();
    v21 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v29[5];
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Datum for aggregator %@", buf, 0xCu);
    }

    a1 = v29[5];
    _Block_object_dispose(&v28, 8);
  }

  return a1;
}

void sub_25680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_256CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_256E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v32 = v5;
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 quantity];
    v9 = [v8 _unit];

    v10 = [*(a1 + 32) quantity];
    [v10 doubleValueForUnit:v9];
    v12 = v11;
    [v7 doubleValueForUnit:v9];
    v14 = v13;

    v15 = v12 - v14;
    if (v15 <= 0.0)
    {
      v31 = *(*(a1 + 48) + 8);
      v23 = *(v31 + 40);
      *(v31 + 40) = 0;
    }

    else
    {
      if (v32)
      {
        v16 = [*(*(*(a1 + 40) + 8) + 40) endDate];
        v17 = [v32 compare:v16];

        if (v17 == -1)
        {
          v18 = [NSDateInterval alloc];
          v19 = [*(*(*(a1 + 40) + 8) + 40) endDate];
          v20 = [v18 initWithStartDate:v32 endDate:v19];
          v21 = *(*(a1 + 40) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;
        }
      }

      v23 = [HKQuantity quantityWithUnit:v9 doubleValue:v15];
      v24 = [HDQuantityDatum alloc];
      v25 = +[NSUUID UUID];
      v26 = *(*(*(a1 + 40) + 8) + 40);
      v27 = [*(a1 + 32) resumeContext];
      v28 = [v24 initWithIdentifier:v25 dateInterval:v26 resumeContext:v27 quantity:v23];
      v29 = *(*(a1 + 48) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    v5 = v32;
  }
}

void sub_258F0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [v7 canonicalUnit];
    v11 = [v8 startDate];
    v12 = [v8 endDate];
    v13 = sub_39A74(a1, v11, v12, v7);

    WeakRetained = objc_loadWeakRetained((a1 + 128));
    v15 = [HDSampleEntity entityEnumeratorWithType:v7 profile:WeakRetained];

    [v15 setFilter:v13];
    [v15 setImproveJoinOrderingForStartDateIndexSelection:1];
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_256CC;
    v33 = sub_256DC;
    v34 = 0;
    v28 = 0;
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_25C48;
    v24 = &unk_5D8D8;
    v26 = &v35;
    v16 = v10;
    v25 = v16;
    v27 = &v29;
    [v15 enumerateWithError:&v28 handler:&v21];
    v17 = v28;
    if (v17)
    {
      _HKInitializeLogging();
      v18 = HKLogDataCollection;
      if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_ERROR))
      {
        sub_39EB4(v7, v18);
      }
    }

    if (v36[3] <= 0.0)
    {
      v19 = 0;
    }

    else
    {
      v19 = [HKQuantity quantityWithUnit:v16 doubleValue:v21, v22, v23, v24];
    }

    _HKInitializeLogging();
    v20 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = v7;
      v41 = 2112;
      v42 = v8;
      v43 = 2112;
      v44 = v19;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Fitness machine sum for type %@ for interval %@ is %@", buf, 0x20u);
    }

    v9[2](v9, v19, v30[5]);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

void sub_25C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25C48(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quantity];
  [v4 doubleValueForUnit:a1[4]];
  *(*(a1[5] + 8) + 24) = v5 + *(*(a1[5] + 8) + 24);

  if (!*(*(a1[6] + 8) + 40) || ([v3 endDate], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compare:", *(*(a1[6] + 8) + 40)), v6, v7 == &dword_0 + 1))
  {
    v8 = [v3 endDate];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return 1;
}

void sub_25F34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  if ([v2 count])
  {
    _HKInitializeLogging();
    v3 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "A GymKit metrics observer is active. Delivering metrics.", buf, 2u);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_26044;
    v8[3] = &unk_5D888;
    v8[4] = v4;
    v9 = v2;
    [v5 notifyObservers:v8];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 88);
  *(v6 + 88) = 0;
}

void sub_271B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [*(a1 + 80) objectForKeyedSubscript:v8];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v15 + 1) + 8 * v14) + 16))();
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }

    [*(a1 + 80) removeObjectForKey:v8];
  }
}

uint64_t sub_27304(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 80);
    v7 = a3;
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = objc_retainBlock(v5);
    if (v8)
    {
      [v8 addObject:v9];
    }

    else
    {
      v10 = [NSMutableArray arrayWithObject:v9];
      [*(a1 + 80) setObject:v10 forKeyedSubscript:v7];
    }

    v11 = [*(a1 + 80) objectForKeyedSubscript:v7];

    a1 = [v11 count] == &dword_0 + 1;
  }

  return a1;
}

void sub_273FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    if ([v3 isEqualToString:@"RSSIdb"])
    {
      [*(a1 + 16) readRSSI];
    }

    else
    {
      v4 = [*(a1 + 72) objectForKeyedSubscript:v7];
      v5 = v4;
      if (v4)
      {
        [v4 readProperty:v7];
      }

      else if (*(a1 + 9) == 1)
      {
        v6 = [NSError hk_error:310 description:@"Unknown property"];
        sub_271B0(a1, 0, v7, v6);

        [*(a1 + 80) removeObjectForKey:v7];
      }
    }

    v3 = v7;
  }
}

void sub_274F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v20 = [HKDevice alloc];
    v4 = *(a1 + 24);
    v5 = [v3 manufacturerName];
    v6 = [v3 modelNumber];
    v7 = [v3 hardwareRevision];
    v8 = [v3 firmwareRevision];
    v9 = [v3 softwareRevision];
    v10 = [*(a1 + 16) identifier];
    v11 = [v10 UUIDString];
    v12 = [v20 initWithName:v4 manufacturer:v5 model:v6 hardwareVersion:v7 firmwareVersion:v8 softwareVersion:v9 localIdentifier:v11 UDIDeviceIdentifier:0];
    v13 = *(a1 + 32);
    *(a1 + 32) = v12;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(a1 + 40) objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v18)];
          [v19 deviceInformationSetOnPeripheral];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }
}

void sub_2770C(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [v6 UUIDString];
  v8 = [*a3 identifier];
  v9 = [v8 UUIDString];
  v10 = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Cannot update peripheral because identifier %@ does not match %@", &v10, 0x16u);
}

void sub_27808(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_3B54();
  sub_3B34(&dword_0, v3, v4, "Discovering services %@ on peripheral %@");
}

void sub_27880(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = *(*a2 + 16);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "No writable characteristic %@ discovered for %@", &v5, 0x16u);
}

void sub_279FC(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 services];
  sub_3B54();
  v8 = 2114;
  v9 = a3;
  _os_log_debug_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "|>- Peripheral services: %@, error: %{public}@", v7, 0x16u);
}

void sub_27B2C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[HDHealthPeripheral peripheral:didWriteValueForCharacteristic:error:]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%s: No health service found for serviceUUID: %@", &v3, 0x16u);
}

void *sub_27BBC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(HDGymKitWorkoutAnalyticEvent);
    v3 = v1[2];
    v1[2] = v2;

    v4 = [HKPersistentTimer timerWithKey:@"GymKitTimeToCompleteAuthorize"];
    v5 = v1[1];
    v1[1] = v4;

    v6 = v1[1];

    return [v6 clear];
  }

  return result;
}

char *sub_27CF4(char *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 hk_isHealthKitError])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v4 domain];
      v7 = [v6 isEqualToString:@"NFCError"];

      if (v7)
      {
        v5 = 10000;
      }

      else
      {
        v8 = [v4 domain];
        v9 = [v8 isEqualToString:@"CBErrorDomain"];

        if (v9)
        {
          v5 = 20000;
        }

        else
        {
          v10 = [v4 domain];
          v11 = [v10 isEqualToString:@"CBATTErrorDomain"];

          if (v11)
          {
            v5 = 30000;
          }

          else
          {
            v12 = [v4 domain];
            v13 = [v12 isEqualToString:@"CBInternalErrorDomain"];

            if (v13)
            {
              v5 = 40000;
            }

            else
            {
              v5 = 990000;
            }
          }
        }
      }
    }

    a1 = [v4 code] + v5;
  }

  return a1;
}

id *sub_27EC8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = _HDFTMProducerMetricTracker;
    v7 = objc_msgSendSuper2(&v11, "init");
    a1 = v7;
    if (v7)
    {
      *(v7 + 33) = 0;
      v8 = [v5 copy];
      v9 = a1[2];
      a1[2] = v8;

      objc_storeStrong(a1 + 3, a3);
    }
  }

  return a1;
}

void *sub_27F64(void *result)
{
  if (result)
  {
    *(result + 33) = 1;
    if ((result[4] & 1) == 0)
    {
      if (result[1])
      {
        return [result[1] restart];
      }

      else
      {
        return sub_27F90(result);
      }
    }
  }

  return result;
}

void *sub_27F90(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [[_HKExpiringCompletionTimer alloc] initWithCompletion:&stru_5C988];
    v3 = v1[1];
    v1[1] = v2;

    v4 = v1[1];
    sub_4FB4();
    v7 = 3221225472;
    v8 = sub_4734;
    v9 = &unk_5C800;
    v10 = v1;
    return [v5 startWithTimeoutInterval:v6 handler:30.0];
  }

  return result;
}

void sub_28024(uint64_t a1)
{
  if (a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v6 = [v2 persistentDomainForName:kHKPrivacyPreferencesDomain];

    v3 = [v6 objectForKeyedSubscript:kHKPrivacyPreferencesKeyEnableHeartRate];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLValue];
    }

    else
    {
      v5 = 1;
    }

    *(a1 + 64) = v5;
  }
}

id sub_280D0(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v2 = [WeakRetained serviceManager];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_28128(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40);
  sub_4FB4();
  v8 = 3221225472;
  v9 = sub_281C8;
  v10 = &unk_5C800;
  v11 = *(v2 + 32);
  v3 = objc_retainBlock(v7);
  v4 = sub_27EC8([_HDFTMProducerMetricTracker alloc], v3, *(*(a1 + 32) + 8));
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;
}

void sub_281C8(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    _HKInitializeLogging();
    v2 = HKLogServices;
    if (os_log_type_enabled(HKLogServices, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Eurotas timeout fired", v4, 2u);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      sub_28318(v3, 0, 0);
    }
  }
}

void sub_28268(uint64_t a1)
{
  v2 = +[HKUnit kilocalorieUnit];
  obj = [HKQuantity quantityWithUnit:v2 doubleValue:0.0];

  objc_storeStrong((*(a1 + 32) + 24), obj);
  objc_storeStrong((*(a1 + 32) + 32), obj);
  v3 = *(a1 + 32);
  if (v3)
  {
    sub_28318(v3, 0, 0);
  }
}

void sub_28318(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 16) == HKHealthServiceSessionIdentifierInvalid)
    {
      _HKInitializeLogging();
      v6 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Not updating fitness machine because data producer is disconnected", v12, 2u);
      }

      if (v5)
      {
        v7 = sub_4FD4();
        v8(v7);
      }
    }

    else
    {
      v9 = sub_28770(a1);
      if (v9 && ((a3 & 1) != 0 || ([*(a1 + 72) isEqual:v9] & 1) == 0))
      {
        sub_288F4(a1, v9, v5);
        objc_storeStrong((a1 + 72), v9);
      }

      else if (v5)
      {
        v10 = sub_4FD4();
        v11(v10);
      }
    }
  }
}

void sub_2842C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    *(a1 + 16) = 0;
    v2 = *(a1 + 56);
    if (v2)
    {
      [v2[1] invalidate];
      v2 = *(a1 + 56);
    }

    *(a1 + 56) = 0;

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;

    v4 = *(a1 + 32);
    *(a1 + 32) = 0;

    v5 = *(a1 + 40);
    *(a1 + 40) = 0;

    v6 = *(a1 + 48);
    *(a1 + 48) = 0;
  }
}

void sub_284CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  if (v1)
  {
    *(v1 + 32) = 1;
    [*(v1 + 8) invalidate];
    v2 = *(v1 + 8);
    *(v1 + 8) = 0;
  }
}

void *sub_28528(void *result)
{
  v1 = *(result[4] + 56);
  if (v1)
  {
    [*(v1 + 8) invalidate];
    result = sub_27F90(v1);
    *(v1 + 32) = 0;
  }

  return result;
}

void sub_28564(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_20;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v8)
  {

    goto LABEL_20;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v24 + 1) + 8 * i) code];
      if (v13 == &dword_8 + 1)
      {
        v20 = [sub_4FE8() objectForKeyedSubscript:?];
        v21 = [v20 sumQuantity];
        v22 = *(a1 + 32);
        *(a1 + 32) = v21;
LABEL_13:

        goto LABEL_14;
      }

      if (v13 == &dword_8 + 2)
      {
        v20 = [sub_4FE8() objectForKeyedSubscript:?];
        v23 = [v20 sumQuantity];
        v22 = *(a1 + 24);
        *(a1 + 24) = v23;
        goto LABEL_13;
      }

      if (v13 != &dword_4 + 1)
      {
        continue;
      }

      v14 = [sub_4FE8() objectForKeyedSubscript:?];
      v15 = [v14 mostRecentQuantity];
      v16 = *(a1 + 40);
      *(a1 + 40) = v15;

      v17 = [sub_4FE8() objectForKeyedSubscript:?];
      v18 = [v17 averageQuantity];
      v19 = *(a1 + 48);
      *(a1 + 48) = v18;

      sub_27F64(*(a1 + 56));
LABEL_14:
      v10 = 1;
    }

    v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v9);

  if (v10)
  {
    sub_28318(a1, 0, 0);
  }

LABEL_20:
}

id *sub_28770(dispatch_queue_t *a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[1]);
    v2 = kHDEurotasDataValueUnavailable;
    v3 = +[HKUnit kilocalorieUnit];
    v4 = kHDEurotasDataValueUnavailable;
    v5 = kHDEurotasDataValueUnavailable;
    if (v1[3])
    {
      v5 = _HKWorkoutFlooredValueForQuantity();
      v6 = [v1[3] _quantityByAddingQuantity:v1[4]];
      v4 = _HKWorkoutFlooredValueForQuantity();
    }

    v7 = [HKUnit unitFromString:@"count/min"];
    if (v1[8])
    {
      v8 = v1[7];
      v9 = kHDEurotasDataValueUnavailable;
      if (v8)
      {
        v9 = kHDEurotasDataValueUnavailable;
        if (v8[33] == 1)
        {
          v10 = v1[5];
          v9 = kHDEurotasDataValueUnavailable;
          if (v10)
          {
            [v10 doubleValueForUnit:v7];
            v9 = (v11 + 0.5);
          }
        }
      }
    }

    else
    {
      v9 = kHDEurotasDataValueDisabled;
    }

    v12 = v1[6];
    if (v12)
    {
      [v12 doubleValueForUnit:v7];
      v2 = (v13 + 0.5);
    }

    v1 = [[HDEurotasData alloc] initForWriting];
    [v1 addActiveEnergy:v5];
    [v1 addTotalEnergy:v4];
    [v1 addHeartRate:v9];
    [v1 addAverageHeartRate:v2];
  }

  return v1;
}

void sub_288F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    _HKInitializeLogging();
    v7 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v16 = a1;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%{public}@: Sending data to Fitness Machine: %@", buf, 0x16u);
    }

    v8 = sub_280D0(a1);
    v9 = *(a1 + 16);
    sub_4FB4();
    v11 = 3221225472;
    v12 = sub_4EA8;
    v13 = &unk_5CA28;
    v14 = v6;
    [v8 writeCharacteristic:v5 onSession:v9 expectResponse:0 completion:v10];
  }
}

void sub_28A44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed writing eurotas data: %@", &v2, 0xCu);
}

id sub_28C9C(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = [v2 length];
    v4 = [v2 bytes];

    v14 = v4;
    if (v4 && v3)
    {
      v5 = [HDHealthServiceCharacteristic uint8FromData:&v14 before:&v3[v4]];
      if (v14)
      {
        a1 = [NSNumber numberWithUnsignedChar:v5];
        goto LABEL_10;
      }

      _HKInitializeLogging();
      v11 = HKLogServices;
      if (!os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v7 = v11;
      v13 = objc_opt_class();
      v9 = NSStringFromClass(v13);
      sub_5FD4();
      v10 = "%{public}@ insufficient data (%lu bytes) for battery level percent.";
    }

    else
    {
      _HKInitializeLogging();
      v6 = HKLogServices;
      if (!os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        a1 = 0;
        goto LABEL_10;
      }

      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      sub_5FD4();
      v10 = "%{public}@ insufficient data (%lu bytes) for battery level.";
    }

    _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:

  return a1;
}

void sub_28E48(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    v2 = sub_28F30(v1);
    _HKInitializeLogging();
    v3 = sub_7CEC();
    if (v2)
    {
      if (v3)
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      sub_28F84(v1);
    }

    else if (v3)
    {
      sub_7C9C();
      sub_7C80();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }
}

id sub_28F30(id result)
{
  if (result)
  {
    sub_7CD4(result);
    result = sub_29990(v1);
    if (result)
    {
      if ([*(v1 + 8) isNdefTagSessionInProgress])
      {
        return 0;
      }

      else
      {
        return (*(v1 + 32) == 0);
      }
    }
  }

  return result;
}

void sub_28F84(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (([*(v1 + 8) isNdefTagSessionInProgress] & 1) != 0 || *(v1 + 32))
    {
      _HKInitializeLogging();
      v2 = HKLogWorkouts;
      if (sub_7CEC())
      {
        v3 = *(v1 + 32);
        if (v3 <= 2)
        {
          v4 = off_5CBF0[v3];
        }

        sub_7D10();
        v23 = 2114;
        v24 = v5;
        v6 = v2;
        sub_7D2C(&dword_0, v6, v7, "%{public}@: Pairing has already begun. BT State: %{public}@", v22);
      }
    }

    else
    {
      v8 = [v1 delegate];
      [v8 pairingManagerDidBeginPairing:v1];

      v9 = objc_alloc_init(HDFitnessMachineSession);
      v10 = *(v1 + 56);
      *(v1 + 56) = v9;

      sub_29B48(v1, 1);
      v11 = [v1 delegate];
      v21 = 0;
      v12 = [v11 pairingManagerRequestsOOBData:v1 error:&v21];
      v13 = v21;
      [*(v1 + 56) setOobInfo:v12];

      v14 = [*(v1 + 56) oobInfo];

      if (v14)
      {
        sub_29C5C(v1);
        _HKInitializeLogging();
        v15 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          sub_7D10();
          sub_7CBC(&dword_0, v15, v16, "%{public}@: Starting tag emulation session", v22);
        }

        v17 = [*(v1 + 56) nfcConnectionHandoverData];
        v18 = *(v1 + 8);
        sub_7C60();
        sub_7D74();
        v20[2] = sub_6654;
        v20[3] = &unk_5CA78;
        v20[4] = v1;
        [v19 startNdefTagSessionWithBluetoothLESecureOOBData:v17 completion:v20];
        [*(v1 + 40) beginTagReadTimeout];
      }

      else
      {
        sub_29BD0(v1, v13);
      }
    }
  }
}

void sub_291D0(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (*(v1 + 72))
    {
      dispatch_assert_queue_V2(*(v1 + 16));
      _HKInitializeLogging();
      if (sub_7CEC())
      {
        v7 = *(v1 + 72);
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((v1 + 64));
      v14 = [WeakRetained serviceManager];
      [v14 stopDiscoveryWithIdentifier:*(v1 + 72)];

      *(v1 + 72) = 0;
    }

    else
    {
      _HKInitializeLogging();
      if (sub_7CEC())
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
      }
    }
  }
}

void sub_29310(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (*(v1 + 24))
    {
      _HKInitializeLogging();
      if (sub_7CEC())
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
      }

      [*(v1 + 24) invalidate];
      v7 = *(v1 + 24);
      *(v1 + 24) = 0;
    }
  }
}

void sub_293C4(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (sub_29990(v1))
    {

      sub_29A00(v1);
    }

    else
    {
      _HKInitializeLogging();
      v2 = HKLogWorkouts;
      if (sub_7CEC())
      {
        v3 = *(v1 + 104);
        v4 = v2;
        v5 = _HDStringForNearFieldManagerNFCPermission([v3 nfcPermission]);
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
      }

      _HKInitializeLogging();
      if (sub_7CEC())
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      }

      [*(v1 + 8) endFieldDetectSession];
    }
  }
}

void sub_29524(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    v2 = [v1[13] nfcPermission];
    _HKInitializeLogging();
    v3 = sub_7CEC();
    if (v2 == &dword_0 + 2)
    {
      if (v3)
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
      }
    }

    else
    {
      if (v3)
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      [v1[5] cancelFieldDetectTimeout];
      [v1[1] endFieldDetectSession];
    }
  }
}

void sub_29618(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    if (*(v1 + 96) == 1)
    {
      _HKInitializeLogging();
      if (sub_7CEC())
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
      }

      v7 = [*(v1 + 8) releaseSinglePollExpressModeAssertion];
      if (v7)
      {
        _HKInitializeLogging();
        v8 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
        {
          sub_7C9C();
          v11 = 2112;
          v12 = v7;
          sub_7D5C(&dword_0, v8, v9, "%{public}@: Error releasing express mode assertion %@", v10);
        }
      }

      *(v1 + 96) = 0;
    }
  }
}

void sub_29730(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if ((*(a1 + 96) & 1) == 0)
    {
      if ([*(a1 + 104) nfcPermission])
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v3 = [WeakRetained workoutManager];
        v4 = [v3 currentWorkoutSessionServer];

        if ([v4 isActive] && objc_msgSend(v4, "isFirstParty"))
        {
          _HKInitializeLogging();
          v5 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            sub_7D44();
            v7 = "%{public}@: Express mode assertion not taken because there is an active first party workout";
LABEL_18:
            sub_7CBC(&dword_0, v5, v6, v7, v16);
          }
        }

        else
        {
          dispatch_assert_queue_V2(*(a1 + 16));
          v8 = [*(a1 + 48) appIsActive];
          _HKInitializeLogging();
          v5 = HKLogWorkouts;
          v9 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
          if (v8)
          {
            if (v9)
            {
              sub_7D44();
              sub_7CBC(&dword_0, v5, v10, "%{public}@: Taking express mode assertion", v16);
            }

            v11 = [*(a1 + 8) startSinglePollExpressModeAssertion:120.0];
            if (v11)
            {
              _HKInitializeLogging();
              v12 = HKLogWorkouts;
              if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
              {
                sub_7D44();
                v17 = 2112;
                v18 = v11;
                sub_7D5C(&dword_0, v12, v13, "%{public}@: Error taking express mode assertion %@", v16);
              }
            }

            else
            {
              *(a1 + 96) = 1;
            }

            goto LABEL_21;
          }

          if (v9)
          {
            sub_7D44();
            v7 = "%{public}@: Express mode assertion is taken only when the Workout app is frontmost";
            goto LABEL_18;
          }
        }

LABEL_21:

        return;
      }

      _HKInitializeLogging();
      v14 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        sub_7D44();
        sub_7CBC(&dword_0, v14, v15, "%{public}@: Express mode assertion not taken because GymKit is disabled", v16);
      }
    }
  }
}

id sub_29990(id result)
{
  if (result)
  {
    sub_7CD4(result);
    v2 = [*(v1 + 104) nfcPermission];
    if (v2 == &dword_0 + 2)
    {
      return &dword_0 + 1;
    }

    else if (v2 == &dword_0 + 1)
    {
      dispatch_assert_queue_V2(*(v1 + 16));
      v3 = *(v1 + 48);

      return [v3 appIsActive];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_29A00(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    [v1[5] cancelFieldDetectTimeout];
    if ([v1[13] nfcPermission] == &dword_0 + 1)
    {
      [v1[5] beginFieldDetectTimeout];
    }

    v2 = [v1[1] isFieldDetectSessionInProgress];
    _HKInitializeLogging();
    v3 = sub_7CEC();
    if (v2)
    {
      if (v3)
      {
        sub_7D10();
        sub_7C90();
        _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
      }
    }

    else
    {
      if (v3)
      {
        sub_7D10();
        sub_7C90();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      v14 = v1[1];
      sub_4FB4();
      sub_7D04();
      v17 = sub_6584;
      v18 = &unk_5CA78;
      v19 = v1;
      [v15 startFieldDetectSessionWithCompletion:v16];
    }
  }
}

void sub_29B48(id *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1[7] connectionState];
    [a1[7] setConnectionState:a2];
    v5 = [a1 delegate];
    [v5 pairingManager:a1 updatedConnectionStateFromState:v4 toState:a2];

    sub_2ADF4(a1, 0);
  }
}

void sub_29BD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    sub_7C60();
    sub_7D74();
    v5[2] = sub_2AFC8;
    v5[3] = &unk_5C8C8;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_29C5C(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    [*(v1 + 24) invalidate];
    _HKInitializeLogging();
    if (sub_7CEC())
    {
      sub_7C9C();
      sub_7C80();
      _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
    }

    v7 = [HDPowerAssertion powerAssertionWithIdentifier:@"Tag read assertion" timeout:0 timeoutHandler:30.0];
    v8 = *(v1 + 24);
    *(v1 + 24) = v7;

    if (!*(v1 + 24))
    {
      _HKInitializeLogging();
      v9 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_7C9C();
        _os_log_error_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%{public}@: Unable to take tag read assertion", v10, 0xCu);
      }
    }
  }
}

void sub_29D80(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    v2 = [*(v1 + 8) isNdefTagSessionInProgress];
    _HKInitializeLogging();
    v3 = sub_7CEC();
    if (v2)
    {
      if (v3)
      {
        sub_7C9C();
        sub_7C80();
        _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      [*(v1 + 8) endNdefTagSession];
      sub_29310(v1);
      [*(v1 + 40) cancelTagReadTimeout];
      if (!*(v1 + 32))
      {
        sub_293C4(v1);
      }
    }

    else if (v3)
    {
      sub_7C9C();
      sub_7C80();
      _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    }
  }
}

void sub_29E98(uint64_t a1)
{
  if (a1)
  {
    sub_7CD4(a1);
    _HKInitializeLogging();
    v3 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEBUG))
    {
      sub_7D10();
      _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%{public}@: Beginning scanning due to NFC event", buf, 0xCu);
    }

    sub_29B48(v1, 2);
    v4 = [v1 delegate];
    [v4 pairingManagerWillBeginPairing:v1 fitnessMachineToken:*(v1 + 56)];

    [*(v1 + 56) fitnessMachineSessionUUID];
    objc_claimAutoreleasedReturnValue();
    [sub_7D1C() launchWorkoutAppIfNeededWithFitnessMachineSessionUUID:?];

    sub_4FB4();
    sub_7D04();
    v16 = sub_6EEC;
    v17 = &unk_5CAC8;
    v18 = v1;
    v5 = objc_retainBlock(v15);
    sub_291D0(v1);
    [*(v1 + 56) setHealthService:0];
    dispatch_assert_queue_V2(*(v1 + 16));
    WeakRetained = objc_loadWeakRetained((v1 + 64));
    v7 = [WeakRetained serviceManager];
    v14 = 0;
    v8 = [v7 discoverHealthServicesWithType:1 timeout:30 alwaysNotify:1 handler:v5 error:&v14];
    v9 = v14;
    *(v1 + 72) = v8;

    _HKInitializeLogging();
    v10 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v1 + 72);
      sub_7D10();
      v20 = 2050;
      v21 = v12;
      sub_7D2C(&dword_0, v10, v13, "%{public}@: Started discovery with identifier %{public}tu", buf);
    }

    if (!*(v1 + 72))
    {
      dispatch_assert_queue_V2(*(v1 + 16));
      sub_2A684(v1, v9);
    }
  }
}

void sub_2A0D0(uint64_t a1)
{
  sub_29730(*(a1 + 32));
  v2 = *(a1 + 32);

  sub_293C4(v2);
}

void sub_2A10C(uint64_t a1)
{
  sub_29524(*(a1 + 32));
  v2 = *(a1 + 32);

  sub_29618(v2);
}

void sub_2A148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    dispatch_assert_queue_V2(*(a1 + 16));
    if ([v4 isActive] && objc_msgSend(v4, "isFirstParty"))
    {
      sub_29618(a1);
    }

    else
    {
      sub_29730(a1);
    }

    v3 = v4;
  }
}

void sub_2A240(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v10 = [*(a1 + 56) healthService];

    if (!v10)
    {
      if (!v9)
      {
        if (!v8 || a4)
        {
          dispatch_assert_queue_V2(*(a1 + 16));
          v16 = [NSError hk_error:802 format:@"No fitness machine has been found"];
          sub_2A684(a1, v16);
          [a1 reset];
          goto LABEL_17;
        }

        _HKInitializeLogging();
        v11 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
          v13 = [v8 name];
          sub_7CA8();
          v42 = v14;
          sub_7D2C(&dword_0, v12, v15, "(#w0) %{public}@: Discovered device with name: %{public}@", &v40);
        }

        v16 = [*(a1 + 56) nfcSessionID];
        if (!v16)
        {
          _HKInitializeLogging();
          v21 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            v40 = 138543362;
            v41 = a1;
            sub_7CBC(&dword_0, v21, v22, "%{public}@: Ignoring device because session has been reset", &v40);
          }

          goto LABEL_17;
        }

        v17 = [@"-" stringByAppendingString:v16];
        v18 = [v8 name];
        if (([v18 hasSuffix:v17] & 1) == 0)
        {
          _HKInitializeLogging();
          v19 = HKLogWorkouts;
          if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
          {
            sub_7CA8();
            v42 = v18;
            sub_7D2C(&dword_0, v19, v20, "%{public}@: Ignoring device with name: %{public}@", &v40);
          }

          goto LABEL_12;
        }

        if (+[_HKBehavior isAppleInternalInstall])
        {
          if (!*(a1 + 88))
          {
            v23 = [v8 advertisementData];
            v24 = [v23 length];

            if (!v24)
            {
              v25 = +[NSUserDefaults standardUserDefaults];
              v26 = [v25 objectForKey:@"HDFitnessMachineTypeOverride"];

              v27 = [v26 integerValue];
              if (v27)
              {
                v28 = v27;
                _HKInitializeLogging();
                v29 = HKLogWorkouts;
                if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = v29;
                  v30 = _HKStringForFitnessMachineType();
                  sub_7CA8();
                  v42 = v31;
                  sub_7D2C(&dword_0, v39, v32, "%{public}@: Overriding machine type from defaults (%{public}@)", &v40);
                }

                v33 = [[HDFitnessMachineSimulatorSupport alloc] initWithFitnessMachineType:v28];
                v34 = *(a1 + 88);
                *(a1 + 88) = v33;
              }
            }
          }
        }

        [*(a1 + 88) updateAdvertisementDataForSimulation:v8];
        v35 = [v8 advertisementData];
        v36 = [HDFitnessMachineService typeFromAdvertisementData:v35];

        if (v36 == 5)
        {
          v37 = [NSError hk_error:305 description:@"Rower fitness machine not supported"];
        }

        else
        {
          if (v36)
          {
            HKSessionTrackerAriadneTrigger();
            sub_291D0(a1);
            [*(a1 + 56) setHealthService:v8];
            sub_2A710(a1, v8, v36);
            sub_2A820(a1);
            v38 = [a1 delegate];
            [v38 pairingManagerReadyToConnect:a1];
            goto LABEL_33;
          }

          v37 = [NSError hk_error:305 format:@"Fitness machine type could not be discerned: %lu", 0];
        }

        v38 = v37;
        sub_2A684(a1, v37);
LABEL_33:

LABEL_12:
LABEL_17:

        goto LABEL_18;
      }

      sub_2A684(a1, v9);
    }
  }

LABEL_18:
}

void sub_2A684(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1[2];
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    sub_2AF38(a1, v4);
    v5 = [a1 delegate];
    [v5 pairingManager:a1 failedPairingWithError:v4];
  }
}

void sub_2A710(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = a2;
    dispatch_assert_queue_V2(v5);
    v7 = [v6 name];
    v8 = [v6 identifier];
    [*(a1 + 56) setFitnessMachineName:v7 type:a3 identifier:v8];
    sub_4FB4();
    sub_7D04();
    v12 = sub_6FDC;
    v13 = &unk_5CAF0;
    v14 = a1;
    sub_2A870(a1, v11);
    v9 = [a1 delegate];
    [v9 pairingManager:a1 discoveredHealthService:v6 machineType:a3];

    v10 = [a1 delegate];
    [v10 pairingManagerUpdatedMachineInformation:a1];
  }
}

id sub_2A820(id result)
{
  if (result)
  {
    sub_7CD4(result);
    HKSessionTrackerAriadneTrigger();
    sub_29B48(v1, 3);
    v2 = *(v1 + 40);

    return [v2 beginUserAcceptanceTimeout];
  }

  return result;
}

void sub_2A870(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(a1 + 80) allValues];
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

uint64_t sub_2A990(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (sub_2AAA8(a1, v6, v5))
    {
      HKSessionTrackerAriadneTrigger();
      [*(a1 + 40) cancelUserAcceptanceTimeout];
      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_2AA0C(uint64_t a1)
{
  if (sub_2A990(*(a1 + 32), *(a1 + 40), *(a1 + 48)))
  {
    v3 = [NSError hk_error:800 description:@"User canceled connection"];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    [WeakRetained pairingManager:*(a1 + 32) failedPairingWithError:v3];
  }
}

uint64_t sub_2AAA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    v7 = [*(a1 + 80) objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        v9 = [v8 fitnessMachineSessionUUID];
        v10 = [v9 isEqual:v6];

        if (v10)
        {
          a1 = 1;
          goto LABEL_6;
        }

        v12 = @"Incorrect session UUID";
      }

      else
      {
        v12 = @"No session exists";
      }
    }

    else
    {
      v12 = @"Unknown connection UUID";
    }

    v13 = [NSError hk_error:100 format:v12];
    sub_2AE74(a1, v13, v5);

    a1 = 0;
  }

LABEL_6:

  return a1;
}

void sub_2ABB0(uint64_t a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (sub_7CEC())
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    v5 = v2;
    [v4 fitnessMachine];
    v17 = 138543618;
    v18 = v3;
    v20 = v19 = 2114;
    sub_7C90();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  v11 = *(a1 + 32);
  sub_4FB4();
  sub_7D04();
  v14 = sub_76BC;
  v15 = &unk_5CAF0;
  v16 = v12;
  sub_2A870(v12, v13);
}

void sub_2ACC0(void *a1)
{
  _HKInitializeLogging();
  v2 = HKLogWorkouts;
  if (sub_7CEC())
  {
    v3 = a1[4];
    v4 = a1[6];
    v5 = v2;
    v6 = _HKStringForFitnessMachineState();
    v7 = a1[5];
    v18 = 138543874;
    v19 = v3;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    sub_7C90();
    _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
  }

  sub_7C60();
  sub_7D74();
  v15[2] = sub_77F4;
  v15[3] = &unk_5CB80;
  v14 = a1[4];
  v13 = a1[5];
  v17 = a1[6];
  v16 = v13;
  sub_2A870(v14, v15);
}

void sub_2ADF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_7C60();
    sub_7D74();
    v4[2] = sub_78A4;
    v4[3] = &unk_5CBD0;
    v4[4] = a1;
    v5 = v3;
    sub_2A870(a1, v4);
  }
}

void sub_2AE74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    if (v6)
    {
      v7 = [*(a1 + 80) objectForKeyedSubscript:v6];
      [v7 clientRemote_encounteredError:v5];
    }

    else
    {
      sub_4FB4();
      sub_7D04();
      v9 = sub_7938;
      v10 = &unk_5CAF0;
      v11 = v5;
      sub_2A870(a1, v8);
    }
  }
}

void sub_2AF38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 16));
    sub_4FB4();
    sub_7D04();
    v5 = sub_7944;
    v6 = &unk_5CAF0;
    v7 = v3;
    sub_2A870(a1, v4);
  }
}

void sub_2AFD4(uint64_t a1)
{
  v2 = [NSError hk_error:100 format:@"Simulating acceptance is no longer supported"];
  sub_2AF38(*(a1 + 32), v2);
}

void sub_2B03C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_7D50();
  v5 = 2114;
  v6 = v2;
  sub_7D5C(&dword_0, v3, v3, "%{public}@: startFieldDetectSession error: %{public}@", v4);
}

void sub_2B0BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_7D50();
  v5 = 2114;
  v6 = v2;
  sub_7D5C(&dword_0, v3, v3, "%{public}@: Error encountered when starting NdefTagSession. Error: %{public}@", v4);
}

void sub_2B13C(uint64_t *a1)
{
  HKSessionTrackerAriadneTrigger();
  _HKInitializeLogging();
  if (sub_7CEC())
  {
    v2 = *a1;
    sub_7D50();
    sub_7C80();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *(*a1 + 32) = 1;
  sub_29E98(*a1);
  sub_29D80(*a1);
}

void sub_2B1F8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%{public}@: NDefTagSession ended unexpectedly", &v2, 0xCu);
}

void sub_2B270(uint64_t *a1, void ***a2)
{
  v2 = *a1;
  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_7214;
  a2[3] = &unk_5CAF0;
  a2[4] = v2;
  sub_2A870(v2, a2);
}

void sub_2B2D0(uint64_t *a1)
{
  v1 = *a1;
  sub_7D50();
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}@: Simulating tap isn't permitted because fitness tracking is disabled", v3, 0xCu);
}

void sub_2B348(uint64_t *a1)
{
  v1 = *a1;
  sub_7D50();
  _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%{public}@: Simulator already configured. Send the disconnect command to reset", v3, 0xCu);
}

void sub_2B3C0(void *a1, uint64_t a2, id **a3)
{
  if (sub_28F30(a1))
  {
    v6 = [[HDFitnessMachineSimulatorSupport alloc] initWithFitnessMachineType:*(a2 + 40)];
    v7 = (*a3)[11];
    (*a3)[11] = v6;

    v8 = [HDFitnessMachineSession alloc];
    [(*a3)[11] btIdentifierData];
    objc_claimAutoreleasedReturnValue();
    v9 = [sub_7D1C() initWithNFCSessionIDData:?];
    v10 = (*a3)[7];
    (*a3)[7] = v9;

    sub_29B48(*a3, 2);
    v11 = [*a3 delegate];
    [v11 pairingManagerWillBeginPairing:*a3 fitnessMachineToken:(*a3)[7]];

    [(*a3)[7] fitnessMachineSessionUUID];
    objc_claimAutoreleasedReturnValue();
    [sub_7D1C() launchWorkoutAppIfNeededWithFitnessMachineSessionUUID:?];

    v12 = *a3;
    v13 = (*a3)[1];

    [v12 nearFieldInterfaceDidReadTag:v13];
  }

  else
  {
    v14 = _HDStringForNearFieldManagerNFCPermission([(*a3)[13] nfcPermission]);
    v15 = v14;
    v16 = (*a3)[4];
    if (v16 > 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = off_5CBF0[v16];
    }

    v18 = [NSError hk_error:100 format:@"Ignoring tap because field detect events are not currently permitted. Check your settings and try again. _gymKitSettings.nfcPermission = %@ _bluetoothState = %@", v14, v17];

    _HKInitializeLogging();
    v19 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      v21 = *a3;
      v22 = 138543618;
      v23 = v21;
      v24 = 2114;
      v25 = v18;
      sub_7D5C(&dword_0, v19, v20, "%{public}@: Ignoring tap simulation with error: %{public}@", &v22);
    }

    sub_2AF38(*a3, v18);
  }
}

void sub_2B630(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained database];
    [v3 addProtectedDataObserver:a1];

    v5 = objc_loadWeakRetained((a1 + 8));
    v4 = [v5 dataManager];
    +[HKObjectType workoutType];
    objc_claimAutoreleasedReturnValue();
    [sub_972C() addObserver:? forDataType:?];
  }
}

void sub_2B6DC(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v3 = [WeakRetained database];
    [v3 removeProtectedDataObserver:a1];

    v5 = objc_loadWeakRetained((a1 + 8));
    v4 = [v5 dataManager];
    +[HKObjectType workoutType];
    objc_claimAutoreleasedReturnValue();
    [sub_972C() removeObserver:? forDataType:?];
  }
}

id *sub_2B788(id *result)
{
  if (result)
  {
    WeakRetained = objc_loadWeakRetained(result + 1);
    v2 = [WeakRetained daemon];
    v3 = [v2 behavior];
    v4 = [v3 tinkerModeEnabled];

    return v4;
  }

  return result;
}

uint64_t sub_2B7F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = kHKConnectedGymPreferencesDefaultNFCAlwaysOn;
    v3 = [NSNumber numberWithBool:a2];
    v4 = kHKConnectedGymPreferencesDomain;
    CFPreferencesSetAppValue(v2, v3, kHKConnectedGymPreferencesDomain);

    return CFPreferencesAppSynchronize(v4);
  }

  return result;
}

void sub_2B860(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [HKObjectType characteristicTypeForIdentifier:HKCharacteristicTypeIdentifierActivityMoveMode];
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v6 = [WeakRetained userCharacteristicsManager];
    v17 = 0;
    v7 = [v6 userCharacteristicForType:v4 error:&v17];
    v8 = v17;

    if (v8)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v8;
        sub_9720();
        _os_log_error_impl(v13, v14, OS_LOG_TYPE_ERROR, v15, v16, 0xCu);
      }

      v9 = &dword_0 + 1;
    }

    else
    {
      v9 = [v7 integerValue];
      _HKInitializeLogging();
      v10 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = HKActivityMoveModeToString();
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Current activity move mode is %{public}@", buf, 0xCu);
      }
    }

    v3[2](v3, v8 == 0, v9);
  }
}

void sub_2BA50(uint64_t a1)
{
  if (a1)
  {
    v2 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v4 = [WeakRetained database];
    v20 = 0;
    v5 = [HDWorkoutEntity anyWithPredicate:v2 healthDatabase:v4 error:&v20];
    v6 = v20;

    if (!v5)
    {
      if (v6)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
        {
          v21 = 138543362;
          v22 = v6;
          sub_9720();
          _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, 0xCu);
        }
      }
    }

    sub_2B7F0(a1, v5 != 0);
    sub_8E80(a1, v5 != 0);
    _HKInitializeLogging();
    v11 = os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v11)
      {
        LOWORD(v21) = 0;
        sub_9720();
        _os_log_impl(v16, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
      }

      sub_2B6DC(a1);
    }

    else if (v11)
    {
      LOWORD(v21) = 0;
      sub_9720();
      _os_log_impl(v12, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
    }
  }
}

void sub_2BC14(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Notification registration for '%s' failed with status %d", &v3, 0x12u);
}

void sub_2BC9C(void *a1, uint64_t a2)
{
  sub_2B7F0(a2, 1);
  sub_8E80(a2, 1);
  sub_2B6DC(a2);
}

void sub_2BCE0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 UUID];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "No characteristic class found for characteristic UUID: %@", &v5, 0xCu);
}

void sub_2BD88(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Incorrect advertisement data for Fitness Machine Service %@", &v2, 0xCu);
}

void sub_2C080(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = *(v1 + 32);
  v4 = v2;
  v5 = [v3 taskUUID];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_A884;
  v8[3] = &unk_5CD20;
  v8[4] = *(v1 + 32);
  sub_7C60();
  sub_7D74();
  v6[2] = sub_A914;
  v6[3] = &unk_5CD48;
  v7 = *(v1 + 48);
  [v4 sendBluetoothStatusUpdatesForServer:v5 updateHandler:v8 completion:v6];

  [*(v1 + 40) invalidate];
}

id sub_2C224(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = *(v1 + 32);
  v4 = v2;
  v5 = [v3 taskUUID];
  [v4 sendBluetoothStatusUpdatesForServer:v5 updateHandler:0 completion:0];

  v6 = *(v1 + 40);

  return [v6 invalidate];
}

void sub_2C2A8(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v21[0] = @"serviceType";
  v3 = [NSNumber numberWithInteger:*(a1 + 56)];
  v21[1] = @"action";
  v22[0] = v3;
  v22[1] = @"start";
  v4 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  HDPowerLogForClient();

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_2C4C4;
  v18[3] = &unk_5CD98;
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v20 = v5;
  v19 = v6;
  v7 = objc_retainBlock(v18);
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v9 = *(a1 + 56);
  v17 = 0;
  v10 = v8;
  v11 = [v10 discoverHealthServicesWithType:v9 timeout:30 alwaysNotify:1 handler:v7 error:&v17];
  v12 = v17;

  if (v11)
  {
    sub_2C5B4(*(a1 + 32), v11);
    v15 = sub_C2B8(*(a1 + 48));
    v16(v15);
  }

  else
  {
    v13 = sub_C2B8(*(a1 + 48));
    v14(v13);
    [*(a1 + 40) invalidate];
  }
}

void sub_2C4C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 16);
  }

  else
  {
    v10 = 0;
  }

  sub_4FB4();
  sub_7D04();
  v16 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  sub_C2AC();
  dispatch_async(v10, v13);
}

id sub_2C5B4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    sub_C2C4(objc_alloc_init(HDIdentifierTable), 24);
  }

  if (!*(a1 + 32))
  {
    v5 = +[NSMutableDictionary dictionary];
    sub_C2C4(v5, 32);
    v6 = *(a1 + 32);
  }

  [NSNumber numberWithUnsignedInteger:a2];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_C244() objectForKey:?];
  v8 = [v7 integerValue];

  if (v8 == HKHealthServiceDiscoveryIdentifierInvalid)
  {
    v9 = *(a1 + 24);
    [NSNumber numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_C244() addObject:?];

    v10 = *(a1 + 32);
    v11 = [NSNumber numberWithUnsignedInteger:v8];
    v12 = [NSNumber numberWithUnsignedInteger:a2];
    sub_C2E8(v12);
  }

  return v8;
}

void *sub_2C6FC(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = result[4];
    [NSNumber numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    [sub_C244() removeObjectForKey:?];

    v7 = v5[3];

    return [v7 removeObjectWithIdentifier:a3];
  }

  return result;
}

id sub_2C834(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 24) objectWithIdentifier:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  sub_7C60();
  sub_7D74();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v9 = v6;
  sub_C2DC();
  dispatch_async(v8, v10);
}

id sub_2C998(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    sub_C2C4(objc_alloc_init(HDIdentifierTable), 40);
  }

  if (!*(a1 + 48))
  {
    v4 = +[NSMutableDictionary dictionary];
    sub_C2C4(v4, 48);
  }

  v5 = sub_2D57C(a1, a2);
  if (v5 == HKHealthServiceSessionIdentifierInvalid)
  {
    v6 = *(a1 + 40);
    [NSNumber numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v5 = [sub_C244() addObject:?];

    v7 = *(a1 + 48);
    v8 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = [NSNumber numberWithUnsignedInteger:a2];
    sub_C2E8(v9);
  }

  return v5;
}

void sub_2CAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 48);
    v7 = [NSNumber numberWithUnsignedInteger:a2];
    [v6 removeObjectForKey:v7];

    [*(a1 + 40) removeObjectWithIdentifier:a3];
    v8 = *(a1 + 64);
    if (!v8)
    {
      v9 = +[NSMutableSet set];
      sub_C2C4(v9, 64);
      v8 = *(a1 + 64);
    }

    v10 = [NSNumber numberWithUnsignedInteger:a3];
    [v8 addObject:v10];

    v11 = *(a1 + 56);
    if (!v11)
    {
      v12 = +[NSMutableSet set];
      sub_C2C4(v12, 56);
      v11 = *(a1 + 56);
    }

    v13 = [NSNumber numberWithUnsignedInteger:a2];
    [v11 addObject:v13];
  }
}

void sub_2CBFC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  sub_4FB4();
  sub_7D04();
  v20 = v13;
  v18 = *(a1 + 32);
  v19 = v9;
  v14 = v13;
  v15 = v9;
  v16 = v8;
  sub_C2AC();
  dispatch_async(v12, v17);
}

uint64_t sub_2CDA0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (HKHealthServiceSessionIdentifierInvalid == a2)
    {
      return 0;
    }

    v4 = result;
    v5 = *(result + 64);
    [NSNumber numberWithUnsignedInteger:a2];
    objc_claimAutoreleasedReturnValue();
    LOBYTE(v5) = [sub_C244() containsObject:?];

    if (v5)
    {
      return 0;
    }

    if (sub_2CEFC(v4, a2))
    {
      return 1;
    }

    _HKInitializeLogging();
    v6 = HKLogServices;
    result = os_log_type_enabled(HKLogServices, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v7 = v6;
      v13 = NSStringFromSelector("_isClientSessionValid:");
      sub_C29C();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);

      return 0;
    }
  }

  return result;
}

id sub_2CEFC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 40) objectWithIdentifier:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_2CF68(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v2 = v2[1];
  }

  v9 = 0;
  v3 = v2;
  v4 = [v3 reviewSavedHealthServiceSessionsWithError:&v9];
  v5 = v9;

  if (*(v1 + 56) == 1)
  {
    v8 = sub_2D024(*(v1 + 32), v4);

    v4 = v8;
  }

  v6 = sub_C2B8(*(v1 + 48));
  v7(v6, v4, v5);
  [*(v1 + 40) invalidate];
}

id sub_2D024(void *a1, void *a2)
{
  if (a1)
  {
    a1 = [a2 hk_filter:&stru_5CF58];
    v2 = vars8;
  }

  return a1;
}

void sub_2D060(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = *(v1 + 40);
  v9 = 0;
  v4 = v2;
  v5 = [v4 healthUpdatesEnabledFromDevice:v3 error:&v9];
  v6 = v9;

  v7 = sub_C2B8(*(v1 + 56));
  v8(v7, v5, v6);
  [*(v1 + 48) invalidate];
}

void sub_2D0F0(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v2 = v2[1];
  }

  v3 = *(v1 + 64);
  v4 = *(v1 + 40);
  v10 = 0;
  v5 = v2;
  v6 = [v5 setHealthUpdatesEnabled:v3 fromDevice:v4 error:&v10];
  v7 = v10;

  v8 = sub_C2B8(*(v1 + 56));
  v9(v8, v6, v7);
  [*(v1 + 48) invalidate];
}

void sub_2D188(uint64_t a1)
{
  sub_C290(a1);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  sub_4FB4();
  sub_7D04();
  v5 = sub_BF90;
  v6 = &unk_5CFD0;
  v7 = *(v1 + 48);
  [v3 getSupportedPropertyNamesWithHandler:v4];
  [*(v1 + 40) invalidate];
}

id sub_2D314(uint64_t a1)
{
  if (sub_2CDA0(*(a1 + 32), *(a1 + 64)))
  {
    v3 = sub_2CEFC(*(a1 + 32), *(a1 + 64));
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 40);
    sub_4FB4();
    sub_7D04();
    v8 = sub_BFA0;
    v9 = &unk_5CFF8;
    v10 = *(a1 + 56);
    [v5 getProperty:v6 forSession:v3 withHandler:v7];
  }

  return [*(a1 + 48) invalidate];
}

id sub_2D4FC(uint64_t *a1)
{
  if (sub_2CDA0(a1[4], a1[9]))
  {
    v4 = sub_2CEFC(a1[4], a1[9]);
    v5 = a1[4];
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }

    [v6 performOperation:a1[5] onSession:v4 withParameters:a1[6] completion:a1[8]];
  }

  v2 = a1[7];

  return [v2 invalidate];
}

id sub_2D57C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = [NSNumber numberWithUnsignedInteger:a2];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2D60C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [HDDaemonTransaction transactionWithOwner:a1 activityName:@"StartDiscovery"];
  if (a1)
  {
    v9 = *(a1 + 16);
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(a2 + 16) = sub_2C2A8;
  *(a2 + 24) = &unk_5CDC0;
  *(a2 + 56) = a3;
  *(a2 + 32) = a1;
  *(a2 + 40) = v8;
  *(a2 + 48) = a4;
  v10 = v8;
  sub_C268();
}

id sub_2D6D4(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 8);
  }

  else
  {
    v2 = 0;
  }

  return [v2 stopDiscoveryWithIdentifier:a2];
}

void sub_2D70C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  v9 = NSStringFromSelector(v2);
  sub_C29C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_2D7AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = a2;
  v9 = NSStringFromSelector(v2);
  sub_C29C();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_2D84C(uint64_t *a1, void **a2, void *a3)
{
  v5 = sub_2C998(*a1, *a2);
  v8 = [*a1 client];
  v6 = [v8 connection];
  v7 = [v6 remoteObjectProxy];
  [v7 clientRemote_deliverSessionCharacteristics:a3[5] forService:a3[6] toClient:v5 withError:a3[7]];
}

void sub_2D8E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = v2[1];
  }

  v3 = *a1;
  v4 = *a2;
  v5 = v2;
  [v5 disconnectHealthService:{sub_2CEFC(v3, v4)}];
}

void sub_2D948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [HDDaemonTransaction transactionWithOwner:a1 activityName:@"GetPairings"];
  if (a1)
  {
    v9 = *(a1 + 16);
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(a2 + 16) = sub_2CF68;
  *(a2 + 24) = &unk_5CF18;
  *(a2 + 32) = a1;
  *(a2 + 56) = a3;
  v10 = a4;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  v11 = v8;
  sub_C268();
}

void sub_2DA10()
{
  sub_C254();
  v4 = [HDDaemonTransaction transactionWithOwner:v2 activityName:@"AddPairing"];
  if (v2)
  {
    v5 = *(v2 + 16);
  }

  sub_C228();
  sub_C284(COERCE_DOUBLE(3221225472));
  *(v0 + 16) = sub_B79C;
  *(v0 + 24) = &unk_5CF80;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  v6 = v1;
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  v7 = v4;
  sub_C268();
}
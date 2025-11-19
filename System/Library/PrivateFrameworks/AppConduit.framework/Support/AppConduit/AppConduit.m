void sub_1000018FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000191C(uint64_t a1)
{
  v5 = [*(a1 + 32) appList];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

__CFString *sub_100001A28()
{
  v0 = __chkstk_darwin();
  v1 = proc_pidpath(v0, buffer, 0x1000u);
  if (v1 < 1)
  {
    v3 = @"Unknown Process Name";
  }

  else
  {
    v2 = [[NSString alloc] initWithBytes:buffer length:v1 encoding:4];
    v3 = [v2 lastPathComponent];
  }

  return v3;
}

id sub_100001B04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  v14 = a3;
  if (v13)
  {
    v15 = [[NSString alloc] initWithFormat:v13 arguments:&a9];
  }

  else
  {
    v15 = [NSString stringWithUTF8String:strerror(a4)];
  }

  v16 = v15;
  v17 = [NSString stringWithUTF8String:a1, &a9];
  v22[0] = NSLocalizedDescriptionKey;
  v22[1] = @"FunctionName";
  v23[0] = v16;
  v23[1] = v17;
  v22[2] = @"SourceFileLine";
  v18 = [NSNumber numberWithInt:a2];
  v23[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  v20 = [NSError errorWithDomain:a3 code:a4 userInfo:v19];

  return v20;
}

void sub_1000024D8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppConduit.ACXRemoteSystemAppList", v3);
  v2 = qword_1000A4738;
  qword_1000A4738 = v1;
}

void sub_100002894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000028AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000028C4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100002B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002B50(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
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
          if ([*(a1 + 32) _onQueue_appIsInstallable:v8 givenLocallyAvailableApps:{*(a1 + 40), v11}])
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }
}

void sub_100002F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100002F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(a1 + 32) + 8);
  if (v9)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 bundleIdentifier];
          v17 = [v16 isEqualToString:*(a1 + 40)];

          if (v17)
          {
            if ([*(a1 + 32) _onQueue_appIsInstallable:v15 givenLocallyAvailableApps:*(a1 + 48)])
            {
              v19 = [v15 copy];
              v20 = 64;
            }

            else
            {
              v19 = sub_1000061DC("[ACXRemoteSystemAppList installableSystemAppWithBundleID:error:]_block_invoke", 227, @"ACXErrorDomain", 13, 0, 0, @"Found available deletable system app %@ but it's not installable on this device.", v18, *(a1 + 40));
              v20 = 56;
            }

            v26 = *(*(a1 + v20) + 8);
            v27 = *(v26 + 40);
            *(v26 + 40) = v19;

            goto LABEL_18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    if (!*(*(*(a1 + 64) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40))
    {
      v29 = sub_1000061DC("[ACXRemoteSystemAppList installableSystemAppWithBundleID:error:]_block_invoke", 234, @"ACXErrorDomain", 19, 0, 0, @"No available system app found with bundle ID %@ for this device.", v28, *(a1 + 40));
      v30 = *(*(a1 + 56) + 8);
      v31 = *(v30 + 40);
      *(v30 + 40) = v29;
    }
  }

  else
  {
    v21 = sub_1000061DC("[ACXRemoteSystemAppList installableSystemAppWithBundleID:error:]_block_invoke", 219, @"ACXErrorDomain", 43, 0, 0, @"No installable system apps are available for this device", a8, v32);
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;
  }
}

void sub_1000033C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000033F0(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability];

  if (v2)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = *(*(a1 + 32) + 8);
    v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [v9 bundleIdentifier];
          v11 = [v10 isEqualToString:*(a1 + 40)];

          if (v11)
          {
            if ([*(a1 + 32) _onQueue_appIsInstallable:v9 givenLocallyAvailableApps:*(a1 + 48)])
            {
              *(*(*(a1 + 64) + 8) + 24) = 1;
            }

            else
            {
              v16 = sub_1000061DC("[ACXRemoteSystemAppList systemAppIsInstallableWithBundleID:error:]_block_invoke", 267, @"ACXErrorDomain", 13, 0, 0, @"Found available deletable system app %@ but it's not installable on this device.", v12, *(a1 + 40));
              v17 = *(*(a1 + 56) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = v16;
            }

            goto LABEL_15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0 && !*(*(*(a1 + 56) + 8) + 40))
    {
      v20 = sub_1000061DC("[ACXRemoteSystemAppList systemAppIsInstallableWithBundleID:error:]_block_invoke", 274, @"ACXErrorDomain", 19, 0, 0, @"No available system app found with bundle ID %@ for this device.", v19, *(a1 + 40));
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  else
  {
    v13 = sub_1000061DC("[ACXRemoteSystemAppList systemAppIsInstallableWithBundleID:error:]_block_invoke", 259, @"ACXErrorDomain", 43, 0, 0, @"No installable system apps are available for this device", v3, v23);
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

void sub_100003910(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [NSSet setWithArray:*(a1 + 48)];
  [*(a1 + 32) setBundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:v5];
  v6 = [*(a1 + 56) copy];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) bundleIdentifier];
        [v9 addObject:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = qword_1000A4878;
  if ((!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5) && (v17 = *(a1 + 56), v18 = v9, MOLogWrite(), (v16 = qword_1000A4878) == 0) || *(v16 + 44) >= 5)
  {
    v17 = v5;
    MOLogWrite();
  }

  [*(a1 + 32) _onQueue_callWaitersForInstallableSystemAppsWithLocallyAvailableApps:{*(a1 + 64), v17, v18, v19}];
  [*(a1 + 32) _onQueue_saveData];
}

void sub_100003C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003D74(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(*(a1 + 40) + 8) + 40);
          v9 = [*(*(&v12 + 1) + 8 * v7) bundleIdentifier];
          [v8 addObject:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

void sub_100004034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000404C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_bundleIDsOfInstallableSystemAppsForLocallyAvailableApps:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100004340(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) count])
  {
    v3 = [NSSet setWithArray:*(a1 + 40)];
    v2 = [*(a1 + 32) bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability];
    if (!v2 || ([v3 isEqualToSet:v2] & 1) == 0)
    {
      [*(a1 + 32) setBundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability:v3];
      [*(a1 + 32) _onQueue_saveData];
      [*(a1 + 32) _onQueue_callWaitersForInstallableSystemAppsWithLocallyAvailableApps:*(a1 + 48)];
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {

    MOLogWrite();
  }
}

void sub_1000045A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000045C0(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability];

  if (v2)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = *(*(a1 + 32) + 8);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          v9 = [v8 bundleIdentifier];
          if ([*(a1 + 32) _onQueue_appIsInstallable:v8 givenLocallyAvailableApps:*(a1 + 40)] && objc_msgSend(v8, "applicationMode") != 3)
          {
            v10 = [v8 counterpartIdentifiers];
            v11 = v10;
            if (v10)
            {
              v20 = 0u;
              v21 = 0u;
              v18 = 0u;
              v19 = 0u;
              v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v19;
                do
                {
                  for (j = 0; j != v13; j = j + 1)
                  {
                    if (*v19 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    [*(*(*(a1 + 48) + 8) + 40) setObject:*(*(&v18 + 1) + 8 * j) forKeyedSubscript:v9];
                  }

                  v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
                }

                while (v13);
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

void sub_100004928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004940(void *a1)
{
  v2 = *(a1[4] + 16);
  if (!v2 || ([v2 isEqualToString:a1[5]] & 1) == 0)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_11;
    }

    v4 = a1[5];
    goto LABEL_10;
  }

  if ([*(a1[4] + 8) count])
  {
    goto LABEL_12;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
LABEL_10:
    MOLogWrite();
  }

LABEL_11:
  *(*(a1[6] + 8) + 24) = 1;
LABEL_12:

  return _objc_release_x1();
}

void sub_100004B28(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIDsOfInstallableSystemAppsIgnoringCounterpartAvailability];

  v3 = *(a1 + 32);
  if (v2)
  {
    v5 = [v3 _onQueue_bundleIDsOfInstallableSystemAppsForLocallyAvailableApps:*(a1 + 40)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [v3 waitersForInstallableList];
    v4 = objc_retainBlock(*(a1 + 48));
    [v5 addObject:v4];
  }
}

uint64_t sub_100004DEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A4740 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000050F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005114(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v5 = [*(a1 + 32) UUIDString];
      MOLogWrite();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2 ^ 1;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000052B8(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v2 = *(a1 + 32);
    [*(a1 + 40) UUIDString];
    v9 = v8 = v2;
    MOLogWrite();
  }

  v3 = [ACXDeviceManager sharedManager:v8];
  v11 = [v3 deviceForPairingID:*(a1 + 40)];

  v4 = v11;
  if (v11)
  {
    [v11 setSyncingIsRestricted:0];
    v5 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
    v6 = [v5 connectionForDevice:v11];

    v7 = [NSString stringWithFormat:@"syncDidComplete for %@ was called", *(a1 + 32)];
    [v6 processPendingStateWithReason:v7];

LABEL_9:
    v4 = v11;
    goto LABEL_10;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v6 = [*(a1 + 40) UUIDString];
    v10 = *(a1 + 32);
    MOLogWrite();
    goto LABEL_9;
  }

LABEL_10:
}

void sub_100005728(void *a1, void *a2, void *a3, void *a4)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000058F4;
  v11[3] = &unk_10008CC88;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v7 = v15;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  sub_100005828(&_dispatch_main_q, v11);
}

void sub_100005828(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006DBC;
  v7[3] = &unk_10008CCD8;
  v8 = os_transaction_create();
  v9 = v3;
  v5 = v8;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000058F4(uint64_t a1)
{
  v20 = 0;
  CFUserNotificationDisplayAlert(0.0, 2uLL, 0, 0, 0, *(a1 + 32), *(a1 + 40), @"File A Bug", @"No Thanks", 0, &v20);
  if (!v20)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = objc_alloc_init(NSURLComponents);
    [v5 setScheme:@"tap-to-radar"];
    [v5 setHost:@"new"];
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [[NSURLQueryItem alloc] initWithName:@"ComponentName" value:@"AppConduit"];
    [v6 addObject:v7];

    v8 = [[NSURLQueryItem alloc] initWithName:@"ComponentVersion" value:@"all"];
    [v6 addObject:v8];

    v9 = [[NSURLQueryItem alloc] initWithName:@"ComponentID" value:@"660691"];
    [v6 addObject:v9];

    v10 = [[NSURLQueryItem alloc] initWithName:@"Classification" value:@"Serious Bug"];
    [v6 addObject:v10];

    v11 = [[NSURLQueryItem alloc] initWithName:@"Reproducibility" value:@"I Didn't Try"];
    [v6 addObject:v11];

    v12 = [[NSURLQueryItem alloc] initWithName:@"AutoDiagnostics" value:{@"phone, watch"}];
    [v6 addObject:v12];

    if (v3 && [v3 length])
    {
      v13 = [[NSURLQueryItem alloc] initWithName:@"Title" value:v3];
      [v6 addObject:v13];
    }

    if (v4)
    {
      if ([v4 length])
      {
        v14 = [[NSURLQueryItem alloc] initWithName:@"Description" value:v4];
        [v6 addObject:v14];
      }
    }

    [v5 setQueryItems:v6];
    v15 = [v5 URL];

    v16 = +[LSApplicationWorkspace defaultWorkspace];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100005C0C;
    v18[3] = &unk_10008CC60;
    v19 = v15;
    v17 = v15;
    [v16 openURL:v17 configuration:0 completionHandler:v18];
  }
}

void sub_100005C0C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v6 = *(a1 + 32);
    MOLogWrite();
  }
}

id sub_100005C9C(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = [NSString stringWithFormat:@"%@", v1];
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100005D2C(void *a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  return v7;
}

id sub_100005E38(void *a1, id a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a2 = [v3 BOOLValue];
  }

  return a2;
}

id sub_100005E90(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (sub_100005D2C(v1))
      {
        v2 = v1;
LABEL_7:
        v3 = v2;
        goto LABEL_12;
      }
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
        v2 = [NSArray arrayWithObject:v1];
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 allObjects];
        if (sub_100005D2C(v4))
        {
          v3 = v4;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }
  }

  v3 = 0;
LABEL_12:

  return v3;
}

uint64_t sub_100005F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000607C;
    v9[3] = &unk_10008CCB0;
    v9[4] = &v10;
    v9[5] = a2;
    v9[6] = a3;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100006064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000607C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (a1[5] && (objc_opt_isKindOfClass() & 1) == 0 || a1[6] && (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_100006118(void *a1)
{
  v1 = a1;
  v2 = v1;
  do
  {
    if (!v2)
    {
      break;
    }

    v3 = [v2 domain];
    v4 = [v3 isEqualToString:NSPOSIXErrorDomain];

    if (v4)
    {
      break;
    }

    v5 = [v2 userInfo];
    v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v2 = v6;
  }

  while (v6);

  return v2;
}

id sub_1000061DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_10000621C(a1, a2, a3, a4, a5, a6, a7, &a9);

  return v9;
}

id sub_10000621C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v17)
  {
    v19 = [v17 mutableCopy];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  if (v18)
  {
    v21 = [[NSString alloc] initWithFormat:v18 arguments:a8];
    [v20 setObject:v21 forKeyedSubscript:NSLocalizedDescriptionKey];
    if (v16)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_13;
      }

      v27 = v21;
      v28 = v16;
      v26 = a2;
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_13;
      }

      v26 = a2;
      v27 = v21;
    }

    MOLogWrite();
LABEL_13:
  }

  if (v16)
  {
    [v20 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  v22 = [NSString stringWithUTF8String:a1, v26, v27, v28];
  [v20 setObject:v22 forKeyedSubscript:@"FunctionName"];

  v23 = [NSNumber numberWithInt:a2];
  [v20 setObject:v23 forKeyedSubscript:@"SourceFileLine"];

  v24 = [NSError errorWithDomain:v15 code:a4 userInfo:v20];

  return v24;
}

id sub_100006434(void *a1)
{
  v2 = [NSURL fileURLWithPath:@"/private/var/tmp/com.apple.AppConduit.staging" isDirectory:1];
  v3 = +[NSFileManager defaultManager];
  v9 = 0;
  v4 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v8 = [v2 path];
      MOLogWrite();
    }

    if (a1)
    {
      v6 = v5;
      v2 = 0;
      *a1 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id sub_100006554()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:1];

  v2 = [v1 objectAtIndexedSubscript:0];
  v3 = [v2 URLByAppendingPathComponent:@"Logs/AppConduit" isDirectory:1];

  v4 = +[NSFileManager defaultManager];
  v8 = 0;
  v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }

  return v3;
}

void sub_10000666C()
{
  v1 = sub_100006554();
  v0 = [v1 URLByAppendingPathComponent:@"AppConduit.log" isDirectory:0];
  qword_1000A4878 = MOLogOpen();
  if (!qword_1000A4878)
  {
    syslog(3, "Failed to set up rotating logs at path %s", [v0 fileSystemRepresentation]);
  }

  if (qword_1000A4758 != -1)
  {
    sub_100059910();
  }

  [v0 fileSystemRepresentation];
  MOLogEnableDiskLogging();
}

uint64_t sub_100006760()
{
  if (qword_1000A4758 != -1)
  {
    sub_100059910();
  }

  return byte_1000A4750;
}

id sub_100006798()
{
  v0 = +[NSFileManager defaultManager];
  v1 = [v0 URLsForDirectory:5 inDomains:1];

  v2 = [v1 objectAtIndexedSubscript:0];
  v3 = [v2 URLByAppendingPathComponent:@"AppConduit" isDirectory:1];

  return v3;
}

id sub_100006830(void *a1)
{
  if (!a1)
  {
    v1 = 0;
    goto LABEL_12;
  }

  v1 = [a1 URLByAppendingPathComponent:@"AppConduit" isDirectory:1];
  v2 = +[NSFileManager defaultManager];
  v9 = 0;
  v3 = [v2 createDirectoryAtURL:v1 withIntermediateDirectories:0 attributes:0 error:&v9];
  v4 = v9;

  if ((v3 & 1) == 0)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:NSCocoaErrorDomain])
    {
      v6 = [v4 code];

      if (v6 == 516)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v8 = [v1 path];
      MOLogWrite();
    }
  }

LABEL_11:

LABEL_12:

  return v1;
}

id sub_10000696C(void *a1, void *a2)
{
  v3 = strdup([a1 fileSystemRepresentation]);
  if (mkdtemp(v3))
  {
    v4 = [NSURL fileURLWithFileSystemRepresentation:v3 isDirectory:1 relativeToURL:0];
    v5 = 0;
  }

  else
  {
    v6 = __error();
    v10 = *v6;
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      strerror(*v6);
      MOLogWrite();
    }

    v11 = sub_100001B04("ACXRandomDirWithTemplateURL", 374, NSPOSIXErrorDomain, v10, @"mkdtemp failed for %s", v7, v8, v9, v3);
    v5 = v11;
    if (a2)
    {
      v12 = v11;
      v4 = 0;
      *a2 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  free(v3);

  return v4;
}

id sub_100006A94(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  pthread_mutex_lock(&stru_1000A40F0);
  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    v6 = Unique;
    if (v4)
    {
      FilteredInfoPlist = _CFBundleCreateFilteredInfoPlist();
      if (FilteredInfoPlist)
      {
        v8 = FilteredInfoPlist;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(v8))
        {
          v10 = [NSMutableDictionary dictionaryWithDictionary:v8];
          CFRelease(v8);
          v11 = +[NSLocale currentLocale];
          [v11 localeIdentifier];
          FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();

          if (FilteredLocalizedInfoPlist)
          {
            v13 = CFDictionaryGetTypeID();
            if (v13 == CFGetTypeID(FilteredLocalizedInfoPlist))
            {
              [v10 addEntriesFromDictionary:FilteredLocalizedInfoPlist];
            }

            else
            {
              v19 = CFGetTypeID(FilteredLocalizedInfoPlist);
              v20 = CFCopyTypeIDDescription(v19);
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
              {
                MOLogWrite();
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }

            CFRelease(FilteredLocalizedInfoPlist);
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            MOLogWrite();
          }

          goto LABEL_28;
        }

        v16 = CFGetTypeID(v8);
        v17 = CFCopyTypeIDDescription(v16);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          MOLogWrite();
        }

        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v8);
LABEL_27:
        v10 = 0;
LABEL_28:
        CFRelease(v6);
        goto LABEL_29;
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      InfoDictionary = CFBundleGetInfoDictionary(Unique);
      if (InfoDictionary)
      {
        v15 = [NSMutableDictionary dictionaryWithDictionary:InfoDictionary];
        v10 = v15;
        if (v15)
        {
          [v15 removeObjectForKey:@"CFBundleInfoPlistURL"];
        }

        goto LABEL_28;
      }

      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_27;
      }
    }

    MOLogWrite();
    goto LABEL_27;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v10 = 0;
LABEL_29:
  pthread_mutex_unlock(&stru_1000A40F0);

  return v10;
}

uint64_t sub_100006DA8(int a1)
{
  if (a1)
  {
    return 89;
  }

  else
  {
    return 78;
  }
}

void sub_100006DBC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100006E08(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorUntrustedAppTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorUntrustedAppMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@ %@" error:&v14, v5, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

id sub_100006F88(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AppConduit.framework"];
  v18 = +[NSLocale preferredLanguages];
  v3 = [v18 firstObject];
  v4 = v1;
  v5 = v2;
  v6 = v3;
  if (![v4 length] || !objc_msgSend(@"Localizable", "length") || !objc_msgSend(v6, "length"))
  {
    v12 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
LABEL_9:
    v11 = 0;
LABEL_10:
    v13 = [v5 localizedStringForKey:v4 value:&stru_10008F378 table:@"Localizable"];
    goto LABEL_11;
  }

  v7 = [v5 localizations];
  v8 = [NSArray arrayWithObject:v6];
  v9 = CFBundleCopyLocalizationsForPreferences(v7, v8);
  if (![(__CFArray *)v9 count])
  {
    v12 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  v10 = [(__CFArray *)v9 objectAtIndex:0];
  v11 = [v5 pathForResource:@"Localizable" ofType:@"strings" inDirectory:0 forLocalization:v10];
  if (!v11)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = [NSDictionary dictionaryWithContentsOfFile:v11];
  v13 = [v12 objectForKey:v4];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_11:

  v14 = v13;
  if (!v13)
  {
    if (!qword_1000A4878 || (v14 = v4, *(qword_1000A4878 + 44) >= 3))
    {
      v15 = +[NSFileManager defaultManager];
      [v15 fileExistsAtPath:@"/System/Library/PrivateFrameworks/AppConduit.framework"];
      MOLogWrite();

      v14 = v4;
    }
  }

  v16 = v14;

  return v16;
}

void sub_10000721C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorCannotDownloadTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorCannotDownloadMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void *sub_10000739C(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = sub_100006F88(@"ACXErrorInstallationUnavailableTitle");
    *v3 = result;
  }

  if (a2)
  {
    result = sub_100006F88(@"ACXErrorInstallationUnavailableMessage");
    *a2 = result;
  }

  return result;
}

void sub_1000073F8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorApplicationNotCompatibleTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorApplicationNotCompatibleMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_100007578(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorApplicationNotAllowedTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorApplicationNotAllowedMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_1000076F8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorApplicationRuntimeNotSupportedTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorApplicationRuntimeNotSupportedMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_100007878(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorArchitectureNotSupportedTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorArchitectureNotSupportedMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_1000079F8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = sub_100006F88(@"ACXCannotInstallGenericTitle");
  v10 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v10, v5];
  v8 = v10;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;

LABEL_4:
    sub_100007AE0(a3);
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

LABEL_8:
}

void sub_100007AE0(void *a1)
{
  if (a1)
  {
    v2 = MGGetBoolAnswer();
    v3 = @"WIFI";
    if (v2)
    {
      v3 = @"WLAN";
    }

    v4 = [NSString stringWithFormat:@"%@_ACXDeviceNotReachableMessage", v3];
    v6 = sub_100006F88(v4);

    v5 = v6;
    *a1 = v6;
  }
}

void sub_100007B84(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    goto LABEL_4;
  }

  v6 = sub_100006F88(@"ACXCannotUninstallGenericTitle");
  v10 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v10, v5];
  v8 = v10;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;

LABEL_4:
    sub_100007AE0(a3);
    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

LABEL_8:
}

void sub_100007C6C(void *a1, void *a2)
{
  if (a1)
  {
    *a1 = sub_100006F88(@"ACXDeviceNotReachableMessageGenericTitle");
  }

  sub_100007AE0(a2);
}

void sub_100007CC0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorInstallRestrictedTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorInstallRestrictedMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_100007E40(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorRemovalRestrictedTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorRemovalRestrictedMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

void sub_100007FC0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = sub_100006F88(@"ACXErrorNotEligibleForWatchAppInstallTitle");
  v15 = 0;
  v7 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:&v15, v5];
  v8 = v15;
  if (v7)
  {
    v9 = v7;
    *a2 = v7;
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_100059924();
  }

  if (a3 && v7)
  {
LABEL_10:
    v10 = sub_100006F88(@"ACXErrorNotEligibleForWatchAppInstallMessage");
    v14 = 0;
    v11 = [NSString stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v14, v5];
    v12 = v14;
    if (v11)
    {
      v13 = v11;
      *a3 = v11;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100059924();
    }
  }

LABEL_15:
}

id sub_100008168(void *a1)
{
  v1 = a1;
  v2 = MobileInstallationCopyAppMetadata();
  v3 = 0;
  if (v2)
  {
    v4 = [v2 watchKitAppExecutableHash];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v4 = 0;
  }

  return v4;
}

BOOL sub_10000822C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = !(v3 | v4) || v3 && v4 && ([v3 isEqual:v4] & 1) != 0;

  return v6;
}

BOOL sub_10000829C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 == 0) == (v4 != 0) || v3 && v4 && ![v3 isEqual:v4];

  return v6;
}

id sub_10000831C()
{
  v0 = sub_100006798();
  v1 = [v0 URLByAppendingPathComponent:@"TestingModeEnabled" isDirectory:0];

  return v1;
}

id sub_100008374(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 bundleIdentifier];
  v5 = [v3 correspondingApplicationRecord];

  v11 = 0;
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:objc_msgSend(v5 error:{"isPlaceholder"), &v11}];
  v7 = v11;
  v8 = v7;
  if (a2 && !v6)
  {
    v9 = v7;
    *a2 = v8;
  }

  return v6;
}

id sub_100008448(void *a1)
{
  v1 = a1;
  outCount = 0;
  v2 = objc_copyClassList(&outCount);
  v3 = outCount;
  v4 = v1;
  v5 = [NSHashTable hashTableWithOptions:770];
  v6 = objc_opt_new();
  if (v3)
  {
    v7 = v2;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      if (!*v7)
      {
        break;
      }

      ClassName = object_getClassName(*v7);
      v10 = sub_10000879C(ClassName);
      if (([v4 containsObject:v10] & 1) == 0)
      {
        if (NSHashGet(v5, ClassName))
        {
          [v6 addObject:v10];
        }

        else
        {
          NSHashInsertKnownAbsent(v5, ClassName);
        }
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v8);
  }

LABEL_11:
  v11 = [v6 copy];

  if ([v11 count])
  {
    v12 = objc_opt_new();
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v14 = v2[i];
        if (!v14)
        {
          break;
        }

        v15 = object_getClassName(v2[i]);
        v16 = sub_10000879C(v15);
        if ([v11 containsObject:v16])
        {
          v17 = [NSString stringWithFormat:@"%p: %s", v14, class_getImageName(v14)];
          v18 = [v12 objectForKeyedSubscript:v16];
          if (v18)
          {
            v19 = v18;
            [v18 addObject:v17];
          }

          else
          {
            v19 = objc_opt_new();
            [v19 addObject:v17];
            [v12 setObject:v19 forKeyedSubscript:v16];
          }
        }
      }
    }

    v30 = v2;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v12 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          v26 = [v12 objectForKeyedSubscript:v25];
          v27 = [v26 copy];
          [v12 setObject:v27 forKeyedSubscript:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    v28 = [v12 copy];
    v2 = v30;
  }

  else
  {
    v28 = &__NSDictionary0__struct;
  }

  free(v2);

  return v28;
}

id sub_10000879C(const char *a1)
{
  v1 = [[NSString alloc] initWithBytesNoCopy:a1 length:strlen(a1) encoding:4 freeWhenDone:0];

  return v1;
}

void sub_100008814(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void sub_100008874(id a1)
{
  qword_1000A4760 = objc_alloc_init(ACXAvailableApplicationManager);

  _objc_release_x1();
}

void sub_1000089A4(uint64_t a1)
{
  v2 = sub_100006798();
  v3 = [v2 URLByAppendingPathComponent:@"AvailableApps.plist" isDirectory:0];
  v75 = 0;
  v4 = [NSMutableDictionary ACX_dictionaryWithContentsOfURL:v3 options:0 error:&v75];
  v5 = v75;
  v6 = v5;
  if (v4)
  {
    v7 = [v4 objectForKeyedSubscript:@"Version"];
    objc_opt_class();
    v8 = v7;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9 && [(__CFString *)v9 unsignedLongLongValue]== 17)
    {
      v12 = [v4 objectForKeyedSubscript:@"AppList"];
      objc_opt_class();
      v13 = v12;
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v69 = v3;
      v70 = v2;
      v67 = v14;
      v68 = v6;
      if (v14)
      {
        v16 = objc_opt_new();
        [*(a1 + 32) setAppList:v16];

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v17 = v14;
        v18 = [v17 countByEnumeratingWithState:&v71 objects:v76 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v72;
          v65 = v9;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v72 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v71 + 1) + 8 * i);
              objc_opt_class();
              v23 = v22;
              if (objc_opt_isKindOfClass())
              {
                v24 = v23;
              }

              else
              {
                v24 = 0;
              }

              if (!v24)
              {
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                {
                  MOLogWrite();
                }

                [*(a1 + 32) setAppList:0];
                v30 = 0;
                goto LABEL_50;
              }

              v25 = [v17 objectForKeyedSubscript:v23];
              if (!v25)
              {
                sub_1000599A8();
              }

              v26 = v25;
              v27 = [[ACXApplication alloc] initWithSerializedDictionary:v25 reevaluatingTrust:1];
              if (!v27)
              {
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                {
                  v63 = v23;
                  MOLogWrite();
                }

                v30 = 1;
LABEL_50:
                v9 = v65;
                goto LABEL_51;
              }

              v28 = v27;
              v29 = [*(a1 + 32) appList];
              [v29 setObject:v28 forKeyedSubscript:v23];
            }

            v19 = [v17 countByEnumeratingWithState:&v71 objects:v76 count:16];
            v30 = 0;
            v9 = v65;
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v30 = 0;
        }

LABEL_51:
      }

      else
      {
        v30 = 0;
      }

      v31 = [v4 objectForKeyedSubscript:{@"LSUUID", v63}];
      objc_opt_class();
      v32 = v31;
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v34 = [[NSUUID alloc] initWithUUIDString:v33];
        [*(a1 + 32) setLastLSUUID:v34];
      }

      v35 = [v4 objectForKeyedSubscript:@"OurDBUUID"];
      objc_opt_class();
      v36 = v35;
      if (objc_opt_isKindOfClass())
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      v66 = v37;
      if (v37 && (v38 = [[NSUUID alloc] initWithUUIDString:v37], objc_msgSend(*(a1 + 32), "setOurDBUUID:", v38), v38, objc_msgSend(*(a1 + 32), "ourDBUUID"), v39 = objc_claimAutoreleasedReturnValue(), v39, v39))
      {
        v40 = [v4 objectForKeyedSubscript:@"LastSequenceNumber"];
        objc_opt_class();
        v41 = v40;
        if (objc_opt_isKindOfClass())
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        [*(a1 + 32) setLastSequenceNumber:{objc_msgSend(v42, "unsignedIntegerValue")}];
        if ([*(a1 + 32) lastSequenceNumber])
        {
          v43 = v30;
        }

        else
        {
          v43 = 1;
        }
      }

      else
      {
        v43 = 1;
      }

      v44 = [v4 objectForKeyedSubscript:@"CompanionToWKBundleIDMap"];
      v45 = [v44 mutableCopy];
      [*(a1 + 32) setCompanionToWatchAppsBundleIDMap:v45];

      if ((v43 & 1) == 0)
      {
        v46 = [*(a1 + 32) companionToWatchAppsBundleIDMap];
        if (v46)
        {
          v47 = v46;
          v48 = [*(a1 + 32) lastLSUUID];
          if (v48)
          {
            v49 = v48;
            v50 = [*(a1 + 32) appList];

            if (v50)
            {
              v51 = [*(a1 + 32) _verifyInternalDataStructures];
LABEL_76:
              v52 = [v4 objectForKeyedSubscript:@"OurDBUUID"];
              objc_opt_class();
              v53 = v52;
              if (objc_opt_isKindOfClass())
              {
                v54 = v53;
              }

              else
              {
                v54 = 0;
              }

              if (v54)
              {
                v55 = v66;
                v56 = [[NSUUID alloc] initWithUUIDString:v66];
                [*(a1 + 32) setOurDBUUID:v56];

                v57 = [*(a1 + 32) ourDBUUID];
                LOBYTE(v56) = v57 == 0;

                v58 = v56 | v51;
              }

              else
              {
                v58 = 1;
                v55 = v66;
              }

              v59 = [v4 objectForKeyedSubscript:@"LastSequenceNumber"];
              objc_opt_class();
              v60 = v59;
              if (objc_opt_isKindOfClass())
              {
                v61 = v60;
              }

              else
              {
                v61 = 0;
              }

              [*(a1 + 32) setLastSequenceNumber:{objc_msgSend(v61, "unsignedIntegerValue")}];
              if ((v61 == 0) | v58 & 1)
              {
                if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
                {
                  MOLogWrite();
                }

                [*(a1 + 32) setLastLSUUID:0];
                [*(a1 + 32) setOurDBUUID:0];
                [*(a1 + 32) setLastSequenceNumber:0];
                [*(a1 + 32) setCompanionToWatchAppsBundleIDMap:0];
                [*(a1 + 32) setAppList:0];
              }

              v3 = v69;
              v2 = v70;
              v6 = v68;
              goto LABEL_91;
            }
          }

          else
          {
          }
        }
      }

      v51 = 1;
      goto LABEL_76;
    }

    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
LABEL_91:

      goto LABEL_92;
    }

    v15 = @"0";
    if (v9)
    {
      v15 = v9;
    }

    v63 = v15;
LABEL_23:
    MOLogWrite();
    goto LABEL_91;
  }

  v10 = [v5 domain];
  if ([v10 isEqualToString:NSCocoaErrorDomain])
  {
    v11 = [v6 code];

    if (v11 == 260)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      goto LABEL_92;
    }
  }

  else
  {
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v9 = [v3 path];
    v63 = v9;
    v64 = v6;
    goto LABEL_23;
  }

LABEL_92:
  v62 = [LSApplicationWorkspace defaultWorkspace:v63];
  [v62 addObserver:*(a1 + 32)];

  [*(a1 + 32) _onQueue_reSyncWithLS];
}

void sub_1000093BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000093D4(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t sub_10000A33C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 applicationMode] == 2 && objc_msgSend(v3, "applicationMode") != 2)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_11;
    }

LABEL_10:
    v7 = [v4 bundleIdentifier];
    MOLogWrite();

LABEL_11:
    v6 = 1;
    goto LABEL_12;
  }

  v5 = [v4 isProfileValidated];
  if (v5 != [v3 isProfileValidated])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

void sub_10000A460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (!v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

id sub_10000A694(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);

    return [v3 applicationsInstalledWithCompanionIdentifiers:v4];
  }

  else
  {

    return [v3 _onQueue_reSyncWithLS];
  }
}

void sub_10000AF5C(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_infoMatchesCurrentLSDatabaseWithUUID:0])
  {
    v2 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v36;
      v6 = &MISCopyErrorStringForErrorCode_ptr;
      v25 = *v36;
      do
      {
        v7 = 0;
        v26 = v4;
        do
        {
          if (*v36 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [*(*(&v35 + 1) + 8 * v7) bundleIdentifier];
          v9 = [objc_alloc(v6[180]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
          v10 = v9;
          if (!v9 || [v9 isPlaceholder])
          {
            v11 = [*(a1 + 32) companionToWatchAppsBundleIDMap];
            v12 = [v11 objectForKeyedSubscript:v8];

            if (v12)
            {
              v29 = v10;
              v30 = v8;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v28 = v12;
              v13 = v12;
              v14 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v32;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v32 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v31 + 1) + 8 * v17);
                    v19 = [*(a1 + 32) appList];
                    v20 = [v19 objectForKeyedSubscript:v18];

                    v21 = [*(a1 + 32) appList];
                    [v21 removeObjectForKey:v18];

                    [v2 addObject:v20];
                    v17 = v17 + 1;
                  }

                  while (v15 != v17);
                  v15 = [v13 countByEnumeratingWithState:&v31 objects:v39 count:16];
                }

                while (v15);
              }

              v22 = [*(a1 + 32) companionToWatchAppsBundleIDMap];
              v8 = v30;
              [v22 setObject:0 forKeyedSubscript:v30];

              v5 = v25;
              v4 = v26;
              v6 = &MISCopyErrorStringForErrorCode_ptr;
              v12 = v28;
              v10 = v29;
            }

            else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              v24 = v8;
              MOLogWrite();
            }
          }

          v7 = v7 + 1;
        }

        while (v7 != v4);
        v4 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v4);
    }

    if ([v2 count])
    {
      [*(a1 + 32) _onQueue_noteNewApps:0 updatedApps:0 removedApps:v2 transitioningAppBundleIDs:0];
      [*(a1 + 32) _onQueue_writeAppListToDisk];
    }
  }

  else
  {
    v23 = *(a1 + 32);

    [v23 _onQueue_reSyncWithLS];
  }
}

void sub_10000B340(uint64_t a1)
{
  if ([*(a1 + 32) trustChangeEvaluationPending])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
    {

      MOLogWrite();
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [*(a1 + 32) setTrustChangeEvaluationPending:1];
    v2 = dispatch_time(0, 1000000000);
    v3 = [*(a1 + 32) stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B48C;
    block[3] = &unk_10008CD40;
    block[4] = *(a1 + 32);
    dispatch_after(v2, v3, block);
  }
}

void sub_10000B48C(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [*(a1 + 32) setTrustChangeEvaluationPending:0];
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v4 = objc_opt_new();
  v5 = [*(a1 + 32) appList];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B61C;
  v10[3] = &unk_10008CDB8;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v8 = v2;
  v13 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v7 count])
  {
    v9 = [*(a1 + 32) appList];
    [v9 addEntriesFromDictionary:v7];

    [*(a1 + 32) _onQueue_noteTrustObtainedForApps:v8 trustRemovedForApps:v6];
    [*(a1 + 32) _onQueue_writeAppListToDisk];
  }
}

uint64_t sub_10000B61C(void *a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if ([v13 isProfileValidated])
  {
    v4 = [v13 isTrusted];
    v5 = [v13 appWithReevaluatedTrust];
    v6 = v5;
    if (!v5)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_19;
      }

      v9 = [v13 bundleIdentifier];
      MOLogWrite();
      goto LABEL_18;
    }

    v7 = [v5 isTrusted];
    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v12 = [v6 bundleIdentifier];
          MOLogWrite();
        }

        v8 = a1[4];
LABEL_17:
        [v8 addObject:{v6, v12}];
        v10 = a1[5];
        v9 = [v6 bundleIdentifier];
        [v10 setObject:v6 forKeyedSubscript:v9];
LABEL_18:
      }
    }

    else if (v7)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v12 = [v6 bundleIdentifier];
        MOLogWrite();
      }

      v8 = a1[6];
      goto LABEL_17;
    }

LABEL_19:
  }

  return _objc_release_x1();
}

void sub_10000B8D4(id *a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [a1[5] appList];
        v9 = [v8 objectForKeyedSubscript:v7];
        v10 = [v9 copy];

        if (v10)
        {
          [a1[6] setObject:v10 forKeyedSubscript:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_10000BB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000BB5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000BB74(uint64_t a1)
{
  v6 = [*(a1 + 32) appList];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000BCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BCEC(uint64_t a1)
{
  v3 = [*(a1 + 32) appList];
  v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

void sub_10000BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BE8C(uint64_t a1)
{
  v2 = [*(a1 + 32) appList];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BF1C;
  v3[3] = &unk_10008CDE0;
  v3[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_10000BF1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 isSystemApp] & 1) == 0)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

void sub_10000C304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C31C(uint64_t a1)
{
  v6 = [*(a1 + 32) companionToWatchAppsBundleIDMap];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10000C494(id *a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [a1[5] companionToWatchAppsBundleIDMap];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9 && [v9 count])
        {
          [a1[6] addObjectsFromArray:v9];
        }

        else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v10 = v7;
          MOLogWrite();
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_10000C740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C758(uint64_t a1)
{
  v2 = [*(a1 + 32) companionToWatchAppsBundleIDMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v9 = [v3 firstObject];

  if (v9)
  {
    v4 = [*(a1 + 32) appList];
    v5 = [v4 objectForKeyedSubscript:v9];
    v6 = [v5 copy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_10000C9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C9FC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v17 allowPlaceholder:0 error:0];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 applicationState];
      v10 = [v9 isInstalled];

      if (v10)
      {
        v11 = [ACXApplication alloc];
        v12 = *(a1 + 32);
        v13 = +[NSUUID UUID];
        v14 = [v11 initWithApplicationRecord:v8 gizmoBundleIdentifier:v12 databaseUUID:v13 sequenceNumber:1];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *a4 = 1;
      }
    }
  }
}

void sub_10000CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CCBC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 containsObject:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "applicationIsInstalled:", v7))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10000CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CF20(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 containsObject:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "applicationIsInstalled:", v8))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10000D0A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) applicationIsInstalled:a2])
  {
    [*(a1 + 40) unionSet:v5];
  }
}

void sub_10000D2C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) applicationIsInstalled:a2])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_10000D430(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) applicationIsInstalled:v5])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(a1 + 40) setObject:v5 forKeyedSubscript:{*(*(&v12 + 1) + 8 * v11), v12}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

void sub_10000D67C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) applicationIsInstalled:v6])
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_10000D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D80C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
  }

  else
  {
    v24 = objc_opt_new();
    v3 = [*(a1 + 32) _alwaysIgnoredSystemAppBundleIDs];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = +[LSApplicationRecord systemPlaceholderEnumerator];
    v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v33;
      v25 = *v33;
      do
      {
        v7 = 0;
        v26 = v5;
        do
        {
          if (*v33 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v32 + 1) + 8 * v7);
          v9 = [v8 counterpartIdentifiers];
          v10 = v9;
          if (v9 && [v9 count])
          {
            v11 = objc_opt_new();
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v12 = v10;
            v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v29;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v29 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v28 + 1) + 8 * i);
                  if (([v3 containsObject:v17] & 1) == 0)
                  {
                    [v11 addObject:v17];
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v14);
            }

            if ([v11 count])
            {
              v18 = [v8 bundleIdentifier];
              v19 = [v11 copy];
              [v24 setObject:v19 forKeyedSubscript:v18];
            }

            v6 = v25;
            v5 = v26;
          }

          v7 = v7 + 1;
        }

        while (v7 != v5);
        v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v5);
    }

    v20 = [v24 copy];
    v21 = *(a1 + 32);
    v22 = *(v21 + 16);
    *(v21 + 16) = v20;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 16));
  }
}

void sub_10000E99C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.AppConduit.ACXRemoteRemovabilityManager", v3);
  v2 = qword_1000A4778;
  qword_1000A4778 = v1;
}

void sub_10000EC10(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_hasRemoteChangeClockUpdatedForUUID:*(a1 + 40) sequenceNumber:*(a1 + 48)])
  {
    v2 = [*(a1 + 32) delegateQueue];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000ECB0;
    v3[3] = &unk_10008CD40;
    v3[4] = *(a1 + 32);
    sub_100005828(v2, v3);
  }
}

void sub_10000ECB0(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 fetchRemovabilityForRemoteApps];
}

void sub_10000EDE0(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_hasRemoteChangeClockUpdatedForUUID:*(a1 + 40) sequenceNumber:*(a1 + 56)])
  {
    v2 = [*(a1 + 32) currentClockUUID];
    v3 = v2;
    if (v2 && ([v2 isEqual:*(a1 + 40)] & 1) == 0)
    {
      v8 = [*(a1 + 32) delegateQueue];
      v9 = v8;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10000F164;
      v27[3] = &unk_10008CD40;
      v27[4] = *(a1 + 32);
      v10 = v27;
    }

    else
    {
      v4 = [*(a1 + 32) lastSequenceNumber];
      v5 = *(a1 + 56);
      if (v5 < v4)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 4)
        {
          v20 = *(a1 + 56);
          v18 = *(a1 + 48);
          v19 = *(a1 + 64);
          MOLogWrite();
        }

        goto LABEL_25;
      }

      if (v5 - v4 < 2)
      {
        v11 = [*(a1 + 32) appRemovabilityMap];
        v9 = [v11 mutableCopy];

        if (*(a1 + 64) == 1)
        {
          [v9 removeObjectForKey:*(a1 + 48)];
        }

        else
        {
          v12 = [NSNumber numberWithUnsignedInteger:?];
          [v9 setObject:v12 forKeyedSubscript:*(a1 + 48)];
        }

        v13 = [v9 copy];
        [*(a1 + 32) setAppRemovabilityMap:v13];

        [*(a1 + 32) setLastSequenceNumber:*(a1 + 56)];
        [*(a1 + 32) _onQueue_saveData];
        v14 = [*(a1 + 32) delegateQueue];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10000F1EC;
        v23[3] = &unk_10008CEC8;
        v23[4] = *(a1 + 32);
        v15 = *(a1 + 48);
        v16 = *(a1 + 64);
        v24 = v15;
        v25 = v16;
        sub_100005828(v14, v23);

        goto LABEL_24;
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v17 = v5 - v4;
        MOLogWrite();
      }

      v8 = [*(a1 + 32) delegateQueue];
      v9 = v8;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000F1A8;
      v26[3] = &unk_10008CD40;
      v26[4] = *(a1 + 32);
      v10 = v26;
    }

    sub_100005828(v8, v10);
LABEL_24:

LABEL_25:
    return;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 4)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v22 = [*(a1 + 32) appRemovabilityMap];
    v21 = [v22 objectForKeyedSubscript:*(a1 + 48)];
    MOLogWrite();
  }
}

void sub_10000F164(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 fetchRemovabilityForRemoteApps];
}

void sub_10000F1A8(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 fetchRemovabilityForRemoteApps];
}

void sub_10000F1EC(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v4 = [NSNumber numberWithUnsignedInteger:v3];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 applicationsRemovabilityUpdated:v5];
}

void sub_10000F394(uint64_t a1)
{
  if ([*(a1 + 32) _onQueue_hasRemoteChangeClockUpdatedForUUID:*(a1 + 40) sequenceNumber:*(a1 + 56)])
  {
    v2 = [*(a1 + 32) lastSequenceNumber];
    if ([*(a1 + 40) isEqual:*(*(a1 + 32) + 16)] && *(a1 + 56) < v2)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 4)
      {
        v3 = *(a1 + 48);
        v19 = [*(a1 + 32) appRemovabilityMap];
        MOLogWrite();
      }
    }

    else
    {
      v4 = objc_opt_new();
      v5 = [*(a1 + 32) appRemovabilityMap];
      v6 = [v5 mutableCopy];
      v7 = *(a1 + 48);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10000F720;
      v26[3] = &unk_10008CF18;
      v8 = v5;
      v27 = v8;
      v9 = v4;
      v28 = v9;
      v10 = v6;
      v29 = v10;
      [v7 enumerateKeysAndObjectsUsingBlock:v26];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v9 setObject:&off_1000975F0 forKeyedSubscript:*(*(&v22 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v13);
      }

      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v18 = v9;
        MOLogWrite();
      }

      [*(a1 + 32) setAppRemovabilityMap:{*(a1 + 48), v18}];
      [*(a1 + 32) setLastSequenceNumber:v2];
      [*(a1 + 32) setCurrentClockUUID:*(a1 + 40)];
      [*(a1 + 32) _onQueue_saveData];
      v16 = [*(a1 + 32) delegateQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10000F7D8;
      v20[3] = &unk_10008CC38;
      v20[4] = *(a1 + 32);
      v21 = v9;
      v17 = v9;
      sub_100005828(v16, v20);
    }
  }
}

void sub_10000F720(id *a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v8];
  v7 = v6;
  if (v6)
  {
    if (([v6 isEqualToNumber:v5] & 1) == 0)
    {
      [a1[5] setObject:v5 forKeyedSubscript:v8];
    }

    [a1[6] removeObjectForKey:v8];
  }

  else
  {
    [a1[5] setObject:v5 forKeyedSubscript:v8];
  }
}

void sub_10000F7D8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 applicationsRemovabilityUpdated:*(a1 + 40)];
}

void sub_10000FE08(void *a1)
{
  v11 = a1;
  v1 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [v1 applicationIsInstalled:@"com.apple.TestFlight"];

  if (v2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    if (v11)
    {
      v3 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:0];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 base64EncodedStringWithOptions:0];
        if (v5)
        {
          if (qword_1000A4798 != -1)
          {
            sub_100059AF0();
          }

          v6 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:qword_1000A4790];
          v7 = [NSString stringWithFormat:@"itms-beta-action://?action=profilesChanged&changes=%@", v6];
          v8 = [NSURL URLWithString:v7];
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

      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = [NSURL URLWithString:@"itms-beta-action://?action=profilesChanged"];
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    v9 = +[FBSSystemService sharedService];
    v10 = sub_10000FFF8(v8);
    [v9 openApplication:@"com.apple.TestFlight" options:v10 withResult:&stru_10008CF88];

LABEL_18:
  }
}

id sub_10000FFF8(void *a1)
{
  v1 = a1;
  v12[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v12[1] = FBSOpenApplicationOptionKeyPayloadURL;
  v13[0] = &__kCFBooleanTrue;
  v13[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v11 = 0;
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.TestFlight" allowPlaceholder:0 error:&v11];
  v4 = v11;
  if (v3)
  {
    v5 = [v2 mutableCopy];
    v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 sequenceNumber]);
    [v5 setObject:v6 forKeyedSubscript:FBSOpenApplicationOptionKeyLSSequenceNumber];

    v7 = [v3 databaseUUID];
    v8 = [v7 UUIDString];
    [v5 setObject:v8 forKeyedSubscript:FBSOpenApplicationOptionKeyLSCacheGUID];

    v9 = [v5 copy];
    v2 = v9;
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  return v2;
}

void sub_1000101E8(id a1, NSError *a2)
{
  if (a2 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    MOLogWrite();
  }

  _objc_release_x1();
}

uint64_t sub_1000102FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A4780 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_1000103F8(id a1, NSArray *a2)
{
  v2 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v7 = *(*(&v9 + 1) + 8 * i);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v8 = *(*(&v9 + 1) + 8 * i);
          MOLogWrite();
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000105FC(uint64_t a1)
{
  v2 = [*(a1 + 32) isCompatibleWithDevice:*(a1 + 40)];
  if ([*(a1 + 32) isBetaApp])
  {
    v3 = [*(a1 + 48) list];
    v4 = [*(a1 + 32) bundleIdentifier];
    v5 = [v3 addIdentifierIfNotPresent:v4];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = +[LSApplicationWorkspace defaultWorkspace];
      v8 = [v7 applicationIsInstalled:@"com.apple.TestFlight"];

      if (v8)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v19 = [v6 bundleIdentifier];
          MOLogWrite();
        }

        v9 = [v6 companionAppBundleID];
        v10 = [v6 bundleIdentifier];
        v11 = [v6 watchKitAppExtensionBundleID];
        v12 = [NSString stringWithFormat:@"itms-beta-action://?action=profiles&hostBundleID=%@&WKAppBundleID=%@&WKExtensionBundleID=%@", v9, v10, v11];

        if ((v2 & 1) == 0)
        {
          v13 = [v12 stringByAppendingString:@"&needsUpdate=YES"];

          v12 = v13;
        }

        v14 = [NSURL URLWithString:v12];
        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x2020000000;
        v25 = 0;
        v15 = dispatch_semaphore_create(0);
        v16 = +[FBSSystemService sharedService];
        v17 = sub_10000FFF8(v14);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100010BF0;
        v21[3] = &unk_10008D010;
        v23 = v24;
        v18 = v15;
        v22 = v18;
        [v16 openApplication:@"com.apple.TestFlight" options:v17 withResult:v21];

        dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
        _Block_object_dispose(v24, 8);
      }

      return;
    }

    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      return;
    }
  }

  else if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
  {
    return;
  }

  v20 = [*(a1 + 32) bundleIdentifier];
  MOLogWrite();
}

void sub_100010964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010A88(uint64_t a1)
{
  v2 = [*(a1 + 32) list];
  v3 = [v2 removeIdentifier:*(a1 + 40)];

  if (v3 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
  {
    v4 = *(a1 + 40);
    MOLogWrite();
  }
}

void sub_100010B6C(id a1)
{
  v1 = objc_alloc_init(NSMutableCharacterSet);
  v2 = qword_1000A4790;
  qword_1000A4790 = v1;

  v3 = qword_1000A4790;
  v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = qword_1000A4790;

  [v5 removeCharactersInString:@"="];
}

void sub_100010BF0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100010E04(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a3 removability]);
  v6 = *(a1 + 32);
  v7 = [v5 bundleID];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

uint64_t sub_100011490(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000114A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_updateRemovabilityInfoAndReturnRemovabilityMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40) && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5))
  {
    v5 = [*(a1 + 32) removabilityChangeClock];
    MOLogWrite();
  }
}

void sub_1000115C0(id a1)
{
  qword_1000A47A0 = objc_alloc_init(ACXLocalAppRemovabilityManager);

  _objc_release_x1();
}

void sub_1000116FC(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_updateRemovabilityInfoAndReturnRemovabilityMap];
  if (v2)
  {
    v5 = v2;
    if (*(a1 + 40))
    {
      v3 = [*(a1 + 32) removabilityChangeClock];
      **(a1 + 40) = [v3 guid];

      v2 = v5;
    }

    if (*(a1 + 48))
    {
      v4 = [*(a1 + 32) removabilityChangeClock];
      **(a1 + 48) = [v4 sequenceNumber];

      v2 = v5;
    }
  }
}

void sub_1000118C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000118D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_updateRemovabilityInfoAndReturnRemovabilityMap];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (*(a1 + 48))
    {
      v5 = [*(a1 + 32) removabilityChangeClock];
      **(a1 + 48) = [v5 guid];
    }

    if (*(a1 + 56))
    {
      v6 = [*(a1 + 32) removabilityChangeClock];
      **(a1 + 56) = [v6 sequenceNumber];
    }
  }
}

void sub_100011A5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1 + 32);
  }

  v6 = [v2 observers];
  [v6 addObject:*(a1 + 40)];
}

void sub_100011B90(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) observers];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [*(a1 + 32) observers];
      [v6 removeObject:*(a1 + 40)];
    }
  }
}

BOOL sub_100012414(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = (v3 != 0) == (v4 != 0) && (!v3 || !v4 || [v3 isEqual:v4]);

  return v6;
}

id sub_1000125F8(void *a1)
{
  v1 = a1;
  +[NSDate timeIntervalSinceReferenceDate];
  v2 = [NSNumber numberWithDouble:?];
  v3 = [v2 stringValue];
  v4 = [NSString stringWithFormat:@"%@/%@", v1, v3];

  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  CC_MD5(v5, v6, md);
  v7 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v7 appendFormat:@"%02hhx", md[i]];
  }

  return v7;
}

uint64_t sub_100012EF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A47B0 = [objc_alloc(objc_opt_class()) _initWithDelegate:0 queue:0 serviceName:@"com.apple.private.alloy.appconduit"];

  return _objc_release_x1();
}

uint64_t sub_100012FE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A47C0 = [objc_alloc(objc_opt_class()) _initWithDelegate:0 queue:0 serviceName:@"com.apple.private.alloy.appconduit.v2"];

  return _objc_release_x1();
}

void sub_100013498(uint64_t a1)
{
  [*(a1 + 32) _onInternalQueue_disarmSocketShutdownTimer];
  v2 = [*(a1 + 32) socket];

  if (v2)
  {
    v3 = [*(a1 + 32) socket];
    v14 = 0;
    v4 = [v3 writePingWithError:&v14];
    v5 = v14;

    if ((v4 & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v8 = v5;
        MOLogWrite();
      }

      [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:{0, v8}];
    }
  }

  v6 = [*(a1 + 32) socket];

  v7 = *(a1 + 32);
  if (v6)
  {
    [*(a1 + 32) _onInternalQueue_beginUsingSocketAsDelegate:*(a1 + 48) onQueue:*(a1 + 40) tryWiFi:*(a1 + 64) completion:*(a1 + 56)];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100013630;
    v9[3] = &unk_10008D140;
    v9[4] = v7;
    v10 = *(a1 + 40);
    v12 = *(a1 + 56);
    v11 = *(a1 + 48);
    v13 = *(a1 + 64);
    [v7 _onInternalQueue_initiateConnectionWithCompletionBlock:v9];
  }
}

void sub_100013630(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _doneUsingSocket];
    v4 = *(a1 + 40);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100013738;
    v5[3] = &unk_10008CCD8;
    v7 = *(a1 + 56);
    v6 = v3;
    sub_100005828(v4, v5);
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [*(a1 + 32) _onInternalQueue_beginUsingSocketAsDelegate:*(a1 + 48) onQueue:*(a1 + 40) tryWiFi:*(a1 + 64) completion:*(a1 + 56)];
  }
}

id sub_1000137DC(uint64_t a1)
{
  v2 = [*(a1 + 32) socket];
  [v2 suspendReadSource];

  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) setQueue:0];
  v3 = *(a1 + 32);

  return [v3 _onInternalQueue_armSocketShutdownTimer];
}

void sub_1000138C8(uint64_t a1)
{
  v2 = [*(a1 + 32) socket];

  if (v2)
  {
    v3 = [*(a1 + 32) socket];
    v7 = 0;
    v4 = [v3 writeShutdownMessageWithError:&v7];
    v5 = v7;

    if ((v4 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
    {
      v6 = v5;
      MOLogWrite();
    }

    [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:{0, v6}];
  }
}

void sub_100013A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013A80(uint64_t a1)
{
  v2 = [*(a1 + 32) socket];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = 0;
  v5 = [v2 writeBytes:v3 length:v4 error:&v8];
  v6 = v8;
  *(*(*(a1 + 40) + 8) + 24) = v5;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:v6];
    if (*(a1 + 64))
    {
      v7 = v6;
      **(a1 + 64) = v6;
    }
  }
}

void sub_100013C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013C34(uint64_t a1)
{
  v2 = [*(a1 + 32) socket];
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 writeData:v3 error:&v7];
  v5 = v7;
  *(*(*(a1 + 48) + 8) + 24) = v4;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:v5];
    if (*(a1 + 56))
    {
      v6 = v5;
      **(a1 + 56) = v5;
    }
  }
}

void sub_100013DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013DE8(uint64_t a1)
{
  v2 = [*(a1 + 32) socket];
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 writeDictionary:v3 error:&v7];
  v5 = v7;
  *(*(*(a1 + 48) + 8) + 24) = v4;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:v5];
    if (*(a1 + 56))
    {
      v6 = v5;
      **(a1 + 56) = v5;
    }
  }
}

id sub_100014070(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v8 = 60;
    MOLogWrite();
  }

  [*(a1 + 32) delegate];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100059BC8();
  }

  [*(a1 + 32) queue];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100059BF4();
  }

  v2 = [*(a1 + 32) socket];

  if (v2)
  {
    v3 = [*(a1 + 32) socket];
    v10 = 0;
    v4 = [v3 writeShutdownMessageWithError:&v10];
    v5 = v10;

    if ((v4 & 1) == 0 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
    {
      v9 = v5;
      MOLogWrite();
    }

    [*(a1 + 32) _onInternalQueue_resetSocketBecauseOfError:{0, v9}];
  }

  result = [*(a1 + 32) wiFiAsserted];
  if (result)
  {
    v7 = [*(a1 + 32) service];
    [v7 setPreferInfraWiFi:0];

    return [*(a1 + 32) setWiFiAsserted:0];
  }

  return result;
}

void sub_1000143F8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 receivedDictionaryOrData:*(a1 + 40)];
}

void sub_1000149A4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 socketDidCloseWithError:*(a1 + 40)];
}

void sub_100014B20(uint64_t a1)
{
  [*(a1 + 32) _onQueue_stopSocketSetupTimer];
  v5 = sub_1000061DC("[ACXIDSSocketManager _onQueue_startSocketSetupTimer]_block_invoke", 472, @"ACXErrorDomain", 18, 0, 0, @"Didn't receive reply to IDS setup request after %llu seconds.", v2, 130);
  v3 = [*(a1 + 32) initiateCB];

  if (v3)
  {
    v4 = [*(a1 + 32) initiateCB];
    (v4)[2](v4, v5);

    [*(a1 + 32) setInitiateCB:0];
  }
}

uint64_t sub_100014F54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014F6C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }

  else
  {
    v6 = +[NSDate date];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v19 = *(a1 + 32);
      MOLogWrite();
    }

    v7 = sub_100015154(a2);

    if (v7)
    {
      [*(*(*(a1 + 56) + 8) + 40) close];
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = sub_100001B04("[ACXIDSSocketManager handleIDSRelayConnection:fromID:UUID:context:]_block_invoke", 728, @"ACXErrorDomain", 4, @"Force-closing socket", v8, v9, v10, v19);
      [v11 _onInternalQueue_resetSocketBecauseOfError:v12];

      v13 = [ACXSocket alloc];
      v14 = *(a1 + 48);
      v15 = *(*(*(a1 + 56) + 8) + 40);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100015294;
      v20[3] = &unk_10008D1E0;
      v16 = *(a1 + 32);
      v20[4] = *(a1 + 40);
      v17 = [(ACXSocket *)v13 initWithIDSDeviceConnection:v15 boostingMessageContext:v14 streamName:v16 creationTime:v6 readEventHandler:v20];
      [*(a1 + 40) setSocket:v17];

      v18 = [*(a1 + 40) socket];
      [v18 resumeReadSource];
    }
  }
}

id sub_100015154(int a1)
{
  v2 = fcntl(a1, 3);
  if (v2 == -1)
  {
    v4 = __error();
    v9 = sub_100001B04("_RemoveNonBlockFromFD", 498, NSPOSIXErrorDomain, *v4, 0, v5, v6, v7, 0);
    v10 = @"Failed to get socket flags";
    v11 = 498;
  }

  else
  {
    v17 = v2 & 0xFFFFFFFB;
    if (fcntl(a1, 4) != -1)
    {
      v3 = 0;
      goto LABEL_7;
    }

    v12 = __error();
    v9 = sub_100001B04("_RemoveNonBlockFromFD", 502, NSPOSIXErrorDomain, *v12, 0, v13, v14, v15, v17);
    v10 = @"Failed to remove nonblock from flags";
    v11 = 502;
  }

  v3 = sub_1000061DC("_RemoveNonBlockFromFD", v11, @"ACXErrorDomain", 1, v9, 0, v10, v8, v18);

LABEL_7:

  return v3;
}

void sub_10001560C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v17 = v5;
      MOLogWrite();
    }

    v6 = [*(a1 + 32) initiateCB];

    if (v6)
    {
      v7 = [*(a1 + 32) initiateCB];
      (v7)[2](v7, v5);

      [*(a1 + 32) setInitiateCB:0];
    }
  }

  else
  {
    v8 = +[NSDate date];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v17 = *(a1 + 40);
      MOLogWrite();
    }

    v9 = sub_100015154(a2);
    if (v9)
    {
      [*(*(*(a1 + 56) + 8) + 40) close];
    }

    else
    {
      [*(a1 + 32) socket];
      if (objc_claimAutoreleasedReturnValue())
      {
        sub_100059C20();
      }

      v10 = [ACXSocket alloc];
      v11 = *(a1 + 48);
      v12 = *(*(*(a1 + 56) + 8) + 40);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10001583C;
      v18[3] = &unk_10008D1E0;
      v13 = *(a1 + 40);
      v18[4] = *(a1 + 32);
      v14 = [(ACXSocket *)v10 initWithIDSDeviceConnection:v12 boostingMessageContext:v11 streamName:v13 creationTime:v8 readEventHandler:v18];
      [*(a1 + 32) setSocket:v14];
    }

    v15 = [*(a1 + 32) initiateCB];

    if (v15)
    {
      v16 = [*(a1 + 32) initiateCB];
      (v16)[2](v16, v9);

      [*(a1 + 32) setInitiateCB:0];
    }
  }
}

uint64_t sub_100015F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A47D0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10001625C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016274(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001628C(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionMap];
  v3 = [*(a1 + 40) idsDeviceIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ACXCompanionSyncConnection alloc] initWithDevice:*(a1 + 40)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(*(*(a1 + 48) + 8) + 40);
    if (v10)
    {
      v11 = [*(a1 + 32) connectionMap];
      v12 = [*(a1 + 40) idsDeviceIdentifier];
      [v11 setObject:v10 forKeyedSubscript:v12];

      v13 = [*(a1 + 32) connectionMap];
      v14 = [v13 count];

      if (v14 == 1)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          MOLogWrite();
        }

        v15 = [@"com.apple.sockpuppet.applications.updated" UTF8String];

        notify_post(v15);
      }
    }
  }
}

void sub_100016F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 40);
  v10 = sub_1000061DC("[ACXIDSReplyContext initWithTimeout:queue:logDescription:sentID:replyHandler:completion:]_block_invoke", 73, @"ACXErrorDomain", 26, 0, 0, @"Timed out waiting for a reply to %@ message with ID %@", a8, *(a1 + 32));
  [*(a1 + 48) runReplyHandlerWithMessage:0 error:v10];
}

uint64_t sub_100017290(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000172A8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.appconduit.MessagerRegistration", v1);
  v3 = qword_1000A47E0;
  qword_1000A47E0 = v2;

  qword_1000A47E8 = objc_opt_new();

  _objc_release_x1();
}

void sub_100017324(void *a1)
{
  v2 = [qword_1000A47E8 objectForKeyedSubscript:a1[4]];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[5] + 8) + 40))
  {
    v5 = a1[6];
    v6 = [objc_alloc(objc_opt_class()) initWithServiceName:a1[4]];
    v7 = *(a1[5] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(a1[5] + 8) + 40))
    {
      v9 = qword_1000A47E8;
      v10 = a1[4];

      [v9 setObject:? forKeyedSubscript:?];
    }
  }
}

void sub_100017658(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  if (!v2)
  {
    sub_100059CCC();
  }

  if (!*(a1 + 40))
  {
    sub_100059CA0();
  }

  if (!*(a1 + 48))
  {
    sub_100059C74();
  }

  [*(a1 + 32) setDelegate:?];
  [*(a1 + 32) setDeviceManager:*(a1 + 40)];
  v3 = [*(a1 + 32) service];
  v10 = [v3 devices];

  if (v10)
  {
    if ([v10 count])
    {
      [*(a1 + 40) updatedIDSDevices:v10 forMessager:*(a1 + 32)];
      goto LABEL_13;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      goto LABEL_12;
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
LABEL_12:
    v4 = [*(a1 + 32) service];
    [*(a1 + 32) serviceName];
    v9 = v8 = v4;
    MOLogWrite();
  }

LABEL_13:
  if (([*(a1 + 32) serviceDelegateSet] & 1) == 0)
  {
    v5 = [*(a1 + 32) service];
    v6 = *(a1 + 32);
    v7 = [v6 internalQueue];
    [v5 addDelegate:v6 queue:v7];

    [*(a1 + 32) setServiceDelegateSet:1];
  }
}

void sub_1000179B0(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 idsDeviceIdentifier];
    v5 = [NSSet setWithObject:v4];
  }

  else
  {
    v5 = [NSSet setWithObject:IDSDefaultPairedDevice];
  }

  v34[0] = IDSSendMessageOptionTimeoutKey;
  v6 = [NSNumber numberWithDouble:*(a1 + 72)];
  v35[0] = v6;
  v35[1] = &__kCFBooleanTrue;
  v34[1] = IDSSendMessageOptionForceLocalDeliveryKey;
  v34[2] = IDSSendMessageOptionExpectsPeerResponseKey;
  v7 = [NSNumber numberWithBool:v2 != 0];
  v35[2] = v7;
  v35[3] = &__kCFBooleanTrue;
  v34[3] = IDSSendMessageOptionBypassDuetKey;
  v34[4] = IDSSendMessageOptionNonWakingKey;
  v35[4] = &__kCFBooleanFalse;
  v8 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:5];

  v9 = [*(a1 + 40) service];
  v10 = *(a1 + 48);
  v11 = *(a1 + 80);
  v32 = 0;
  v33 = 0;
  v12 = [v9 sendMessage:v10 toDestinations:v5 priority:v11 options:v8 identifier:&v33 error:&v32];
  v13 = v33;
  v14 = v32;

  if (v12)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v15 = *(a1 + 56);
      v28 = [*(a1 + 40) serviceName];
      MOLogWrite();
    }

    if (v2)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100017DA8;
      v30[3] = &unk_10008CC38;
      v30[4] = *(a1 + 40);
      v16 = v13;
      v31 = v16;
      v17 = objc_retainBlock(v30);
      v18 = [ACXIDSReplyContext alloc];
      v19 = *(a1 + 72) + 30.0;
      v20 = [*(a1 + 40) internalQueue];
      v21 = [(ACXIDSReplyContext *)v18 initWithTimeout:v20 queue:*(a1 + 56) logDescription:v16 sentID:*(a1 + 64) replyHandler:v17 completion:v19];

      v22 = [*(a1 + 40) pendingReplies];
      [v22 setObject:v21 forKeyedSubscript:v16];

      v23 = [*(a1 + 40) pendingReplies];
      v24 = [v23 count];

      if (v24 == 1)
      {
        v25 = os_transaction_create();
        [*(a1 + 40) setTransaction:v25];
      }
    }
  }

  else
  {
    v26 = *(a1 + 64);
    if (v26)
    {
      (*(v26 + 16))(v26, 0, v14);
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v27 = *(a1 + 56);
      v29 = [*(a1 + 40) serviceName];
      MOLogWrite();
    }
  }
}

void sub_100017DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingReplies];
  [v2 removeObjectForKey:*(a1 + 40)];

  v3 = [*(a1 + 32) pendingReplies];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 setTransaction:0];
  }
}

void sub_100017FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) fromID];
  v3 = [NSSet setWithObject:v2];

  v4 = [*(a1 + 32) idsContext];
  v5 = [v4 outgoingResponseIdentifier];

  if (v5)
  {
    v25[0] = IDSSendMessageOptionTimeoutKey;
    v6 = [NSNumber numberWithDouble:*(a1 + 64)];
    v26[0] = v6;
    v26[1] = &__kCFBooleanTrue;
    v25[1] = IDSSendMessageOptionForceLocalDeliveryKey;
    v25[2] = IDSSendMessageOptionPeerResponseIdentifierKey;
    v25[3] = IDSSendMessageOptionNonWakingKey;
    v26[2] = v5;
    v26[3] = &__kCFBooleanFalse;
    v7 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];

    v8 = [*(a1 + 48) service];
    v9 = *(a1 + 56);
    v10 = *(a1 + 72);
    v23 = 0;
    v24 = 0;
    v11 = [v8 sendMessage:v9 toDestinations:v3 priority:v10 options:v7 identifier:&v24 error:&v23];
    v12 = v24;
    v13 = v23;

    if (v11)
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 40);
      v15 = [*(a1 + 48) serviceName];
      MOLogWrite();
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_14;
      }

      v19 = *(a1 + 40);
      v15 = [*(a1 + 48) serviceName];
      v20 = [*(a1 + 32) idsContext];
      v22 = [v20 incomingResponseIdentifier];
      MOLogWrite();
    }

LABEL_14:
    goto LABEL_15;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v16 = [*(a1 + 32) idsContext];
    v17 = [v16 incomingResponseIdentifier];
    v18 = *(a1 + 40);
    v21 = [*(a1 + 48) serviceName];
    MOLogWrite();
  }

  v12 = 0;
  v13 = 0;
LABEL_15:
}

void sub_100018C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v6 = v3;
    MOLogWrite();
  }

  v4 = [*(a1 + 32) queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018D0C;
  v7[3] = &unk_10008CC38;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  sub_100005828(v4, v7);
}

void sub_100018D0C(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v6 = [v2 remoteAppList];

  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = [v3 queue];
    [v6 addObserver:v3 queue:v4];

    [v6 startDatabaseSyncIfNeeded];
    v5 = [*(a1 + 40) mutableCopy];
    [*(a1 + 32) setAppsPendingInstallOnGizmo:v5];

    [*(a1 + 32) setWaitingForInstallList:0];
    [*(a1 + 32) _onQueue_checkIfPendingInstallAppsAreInstalledInRemoteAppList:v6];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    [*(a1 + 32) _onQueue_completeSyncIfDone];
  }
}

void sub_100018E1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100018EF8;
  v11[3] = &unk_10008CA48;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  sub_100005828(v7, v11);
}

id sub_100018EF8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v5 = *(a1 + 32);
      MOLogWrite();
    }

    [*(a1 + 40) setAppsPendingInstallOnGizmo:{0, v5}];
  }

  else
  {
    v2 = [*(a1 + 48) mutableCopy];
    [*(a1 + 40) setAppsPendingInstallOnGizmo:v2];

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v5 = [*(a1 + 40) appsPendingInstallOnGizmo];
      MOLogWrite();
    }
  }

  [*(a1 + 40) setWaitingForInstallList:{0, v5}];
  v3 = *(a1 + 40);

  return [v3 _onQueue_completeSyncIfDone];
}

id sub_1000190B8(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v5 = *(a1 + 32);
    MOLogWrite();
  }

  v2 = [*(a1 + 40) appsPendingInstallOnGizmo];
  [v2 removeObject:*(a1 + 32)];

  v3 = *(a1 + 40);

  return [v3 _onQueue_completeSyncIfDone];
}

uint64_t start(uint64_t a1, id *a2)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.appconduitd.xpc_event", v3);

  context = objc_autoreleasePoolPush();
  v5 = os_transaction_create();
  sub_10000666C();
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v29 = *a2;
    v30 = "Oct 11 2025";
    MOLogWrite();
  }

  signal(15, 1);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
  dispatch_source_set_event_handler(v6, &stru_10008D438);
  dispatch_activate(v6);
  v7 = +[NSFileManager defaultManager];
  v8 = sub_10000831C();
  v9 = [v8 path];
  v10 = [v7 fileExistsAtPath:v9];

  if (v10)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_23;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v36 = 0;
  v11 = MobileInstallationWaitForSystemAppMigrationToComplete();
  v12 = 0;
  if (v11)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_19;
    }

    v29 = v12;
  }

  MOLogWrite();
LABEL_19:
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v13 = [NRPairedDeviceRegistry sharedInstance:v29];
  v14 = [v13 waitForActivePairedOrAltAccountDevice];

LABEL_23:
  v15 = sub_100006798();
  if (mkdir([v15 fileSystemRepresentation], 0x1EDu) && *__error() != 17 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
  {
    v16 = [v15 fileSystemRepresentation];
    v17 = __error();
    v29 = v16;
    v30 = strerror(*v17);
    MOLogWrite();
  }

  v18 = [ACXAvailableApplicationManager sharedApplicationManager:v29];
  v19 = +[ACXLaunchServicesWatcher sharedWatcher];
  v20 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A4B4;
  handler[3] = &unk_10008D460;
  v35 = v18;
  v21 = v18;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, handler);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, &stru_10008D4A0);
  signal(30, 1);
  v22 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, v4);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001A594;
  v32[3] = &unk_10008CD40;
  v33 = v20;
  v23 = v20;
  dispatch_source_set_event_handler(v22, v32);
  dispatch_resume(v22);
  signal(31, 1);
  v24 = dispatch_source_create(&_dispatch_source_type_signal, 0x1FuLL, 0, v4);
  dispatch_source_set_event_handler(v24, &stru_10008D4C0);
  dispatch_resume(v24);
  +[ACXDeviceConnectionClient configureService];
  v25 = +[ACXPairedSyncAppStateDelegate sharedAppStateSyncDelegate];
  v26 = +[ACXPairedSyncDelegate sharedSyncDelegate];

  objc_autoreleasePoolPop(context);
  v27 = +[NSRunLoop mainRunLoop];
  [v27 run];

  return 0;
}

void sub_10001A46C(id a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  exit(0);
}

uint64_t sub_10001A4B4(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    MOLogWrite();
  }

  result = strcmp(string, "com.apple.pairedsync.syncDidComplete");
  if (result)
  {
    if (!strcmp(string, "MISUPPTrustSet") || (result = strcmp(string, "MISUPPTrustRevoked"), !result))
    {
      v5 = *(a1 + 32);

      return [v5 profileTrustChanged];
    }
  }

  return result;
}

void sub_10001A594(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v2 = [*(a1 + 32) connectionForActivePairedDevice];
  [v2 performReunionSyncWithReason:@"signaled with USR1"];
}

void sub_10001A620(id a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    MOLogWrite();
  }

  v1 = +[ACXGizmoStateManager sharedStateManager];
  v2 = [v1 stateForActivePairedDevice];

  [v2 dumpCurrentStateToLog];
}

uint64_t sub_10001A6B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_1000A47F8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10001A8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A904(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A91C(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = [[ACXGizmoState alloc] initWithDevice:*(a1 + 48)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (v9)
    {
      v10 = [*(a1 + 32) stateMap];
      [v10 setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

void sub_10001B00C(uint64_t a1)
{
  v2 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v3 = [v2 connectionForDevice:*(a1 + 32)];

  [v3 processPendingStateWithReason:@"apps changed"];
}

void sub_10001B184(uint64_t a1)
{
  v2 = +[ACXCompanionSyncConnectionManager sharedConnectionManager];
  v3 = [v2 connectionForDevice:*(a1 + 32)];

  [v3 processPendingStateWithReason:@"trust changed"];
}

void sub_10001B510(uint64_t a1)
{
  v2 = [*(a1 + 32) bundleIdentifier];
  if (!v2)
  {
    sub_100059D24();
  }

  v3 = v2;
  v4 = [*(a1 + 32) companionAppBundleID];
  if (!v4)
  {
    sub_100059CF8();
  }

  v5 = v4;
  v20 = 0;
  v6 = [*(a1 + 40) _onQueue_queueElementForApp:v3 isCurrentInstall:&v20];
  if (v6)
  {
    if (v20 != 1)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        [*(a1 + 40) _onQueue_countPending];
        MOLogWrite();
      }

      goto LABEL_34;
    }

    v7 = [*(a1 + 40) currentInstallCoordinator];
    if (v7)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v16 = [v6 installID];
        MOLogWrite();
      }

      if (*(a1 + 56) != 1)
      {
        goto LABEL_33;
      }

      v19 = 0;
      v8 = [v7 prioritizeWithError:&v19];
      v9 = v19;
      if ((v8 & 1) != 0 || qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
      {
        goto LABEL_33;
      }

      v9 = [v6 installID];
    }

    MOLogWrite();
LABEL_32:

LABEL_33:
LABEL_34:
    v13 = qos_class_self();
    v14 = dispatch_get_global_queue(v13, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001B8A0;
    v17[3] = &unk_10008D118;
    v18 = *(a1 + 48);
    sub_100005828(v14, v17);

    v10 = v18;
    goto LABEL_35;
  }

  v10 = [[ACXLocalAppStoreInstallQueueElement alloc] initWithApp:*(a1 + 32) isUserInitiated:*(a1 + 56) completion:*(a1 + 48)];
  v11 = [*(a1 + 40) installQueue];
  [v11 addObject:v10];

  v12 = [*(a1 + 40) currentInstall];

  if (v12)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      [*(a1 + 40) _onQueue_countPending];
LABEL_27:
      MOLogWrite();
    }
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v15 = v3;
      MOLogWrite();
    }

    if (([*(a1 + 40) isSuspended] & 1) == 0)
    {
      [*(a1 + 40) _onQueue_startQueue];
      goto LABEL_35;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      goto LABEL_27;
    }
  }

LABEL_35:
}

void sub_10001B93C(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  v3 = [v2 isReachable];

  v4 = [*(a1 + 32) isSuspended];
  if (v3)
  {
    if (v4)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v5 = [*(a1 + 32) device];
        v10 = [v5 idsDeviceIdentifier];
        MOLogWrite();
      }

      [*(a1 + 32) setIsSuspended:{0, v10}];
      if ([*(a1 + 32) _onQueue_countPending])
      {
        v6 = [*(a1 + 32) currentInstall];

        if (!v6)
        {
          v7 = *(a1 + 32);

          [v7 _onQueue_startQueue];
        }
      }
    }
  }

  else if ((v4 & 1) == 0)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v8 = [*(a1 + 32) device];
      v11 = [v8 idsDeviceIdentifier];
      MOLogWrite();
    }

    v9 = *(a1 + 32);

    [v9 setIsSuspended:1];
  }
}

void sub_10001C1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001C1BC(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_reportExternalInstallFailureForWatchAppBundleID:*(a1 + 40) failureReason:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_10001C27C(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v8 = [*(a1 + 32) _onQueue_countPending];
    MOLogWrite();
  }

  v2 = [*(a1 + 32) currentInstall];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 currentInstall];
    v5 = [v4 app];
    v6 = [v5 bundleIdentifier];
    [v3 cancelInstallForWatchAppBundleID:v6];
  }

  v7 = [*(a1 + 32) installQueue];
  [v7 enumerateObjectsUsingBlock:&stru_10008D550];

  v9 = [*(a1 + 32) installQueue];
  [v9 removeAllObjects];
}

void sub_10001C39C(id a1, ACXLocalAppStoreInstallQueueElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ACXLocalAppStoreInstallQueueElement *)a2 completion:a3];
  v5 = qos_class_self();
  v6 = dispatch_get_global_queue(v5, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001C454;
  v8[3] = &unk_10008D118;
  v9 = v4;
  v7 = v4;
  sub_100005828(v6, v8);
}

void sub_10001C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = sub_100001B04("[ACXLocalAppStoreInstallQueue cancelAllPendingInstalls]_block_invoke_3", 229, @"ACXErrorDomain", 6, @"Cancelled", a6, a7, a8, v9);
  (*(v8 + 16))(v8, v10);
}

void sub_10001CB48(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[5] internalQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001CC4C;
  v12[3] = &unk_10008C9D0;
  v13 = v6;
  v8 = a1[6];
  v9 = a1[5];
  v14 = v8;
  v15 = v9;
  v16 = v5;
  v17 = a1[7];
  v10 = v5;
  v11 = v6;
  sub_100005828(v7, v12);
}

void sub_10001CC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v15 = *(a1 + 40);
      v16 = *(a1 + 32);
      MOLogWrite();
      v2 = *(a1 + 32);
    }

    v3 = v2;
  }

  else
  {
    if (![*(a1 + 48) cancelCurrentOperation])
    {
      v11 = *(a1 + 40);
      v23 = 0;
      v7 = [IXGizmoInstallingAppInstallCoordinator existingCoordinatorForAppWithBundleID:v11 error:&v23];
      v12 = v23;
      v3 = 0;
      if (!v7)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v15 = *(a1 + 40);
          v16 = v12;
          MOLogWrite();
        }

        v3 = v12;
      }

      if (v3)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v15 = *(a1 + 40);
      MOLogWrite();
    }

    v3 = sub_100001B04("[ACXLocalAppStoreInstallQueue _onQueue_deQueueNextOperation]_block_invoke_2", 341, @"ACXErrorDomain", 6, @"Operation cancelled.", v4, v5, v6, v15);
    [*(a1 + 48) _cancelCoordinatorForInstallWithWatchBundleID:*(a1 + 40) withReason:v3];
  }

  v7 = 0;
  if (v3)
  {
LABEL_12:
    v8 = [*(a1 + 48) currentCompletionBlock];
    if (v8)
    {
      [*(a1 + 48) setCurrentCompletionBlock:0];
      v9 = qos_class_self();
      v10 = dispatch_get_global_queue(v9, 0);
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10001CF98;
      v20[3] = &unk_10008CCD8;
      v22 = v8;
      v21 = v3;
      sub_100005828(v10, v20);
    }

    [*(a1 + 48) _onQueue_deQueueNextOperation];
    goto LABEL_26;
  }

LABEL_21:
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    MOLogWrite();
  }

  [*(a1 + 64) setInstallID:{*(a1 + 56), v15, v16}];
  [v7 setObserver:*(a1 + 48)];
  [*(a1 + 48) setCurrentInstallCoordinator:v7];
  v8 = [*(a1 + 48) currentCompletionBlock];
  if (v8)
  {
    [*(a1 + 48) setCurrentCompletionBlock:0];
    v13 = qos_class_self();
    v14 = dispatch_get_global_queue(v13, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001CFAC;
    v17[3] = &unk_10008CCD8;
    v8 = v8;
    v18 = 0;
    v19 = v8;
    sub_100005828(v14, v17);
  }

LABEL_26:
}

void sub_10001D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10001D660(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_installIsPendingForWatchApp:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10001D74C(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v9 = *(a1 + 32);
    MOLogWrite();
  }

  v2 = [*(a1 + 40) currentInstall];
  v3 = v2;
  v12 = v2;
  if (v2)
  {
    v4 = [v2 app];
    v5 = [v4 bundleIdentifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    v3 = v12;
    if (v6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v10 = *(a1 + 32);
        MOLogWrite();
      }

      v7 = [*(a1 + 40) _onQueue_deQueueNextOperation];
      goto LABEL_13;
    }
  }

  v7 = qword_1000A4878;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v11 = *(a1 + 32);
    v7 = MOLogWrite();
LABEL_13:
    v3 = v12;
  }

  return _objc_release_x1(v7, v3);
}

void sub_10001D97C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentInstallCoordinator];
  v3 = [v2 uniqueIdentifier];
  v4 = [*(a1 + 40) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v11 = IXStringForClientID();
      v12 = *(a1 + 48);
      v9 = v6;
      MOLogWrite();
    }

    v8 = *(a1 + 32);
    v13 = [*(a1 + 40) bundleID];
    [v8 _onQueue_reportExternalInstallFailureForWatchAppBundleID:v13 failureReason:*(a1 + 48)];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v10 = *(a1 + 40);
    MOLogWrite();
  }
}

id sub_10001E560(uint64_t a1)
{
  [*(a1 + 32) _onQueue_configureRemoteAppListsAndFetchSystemAppsIfNeeded];
  v2 = [*(a1 + 32) remoteAppList];
  [v2 remoteDeviceConnected];

  v3 = *(a1 + 32);

  return [v3 _onQueue_configureRemoteRemovabilityManagerAndFetchRemoteRemovabilityStatus];
}

void sub_10001E5B4(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteAppList];
  [v1 remoteDeviceDisconnected];
}

void sub_10001E680(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationManager];
  v3 = [v2 allAvailableApps];

  v4 = [*(a1 + 32) device];
  v5 = [v4 osVersion];

  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:v11];
        if ([v12 isTrusted] && (objc_msgSend(v12, "isSystemApp") & 1) == 0 && objc_msgSend(v12, "isCompatibleWithOSVersion:", v5) && objc_msgSend(v12, "isRuntimeCompatibleWithOSVersion:", v5))
        {
          v13 = [*(a1 + 32) device];
          if ([v12 isCompatibleWithDevice:v13])
          {
            v14 = [v12 isEligibleForWatchAppInstall];

            if (!v14)
            {
              goto LABEL_14;
            }

            v13 = [v12 companionAppBundleID];
            v15 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v13];
            [v18 setObject:v15 forKeyedSubscript:v11];
          }
        }

LABEL_14:
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [*(a1 + 32) gizmoState];
  v17 = [v16 setInstallStatusForApps:v18 sendNotification:1 withUpdatePredicate:&stru_10008D5B8];

  if (v17)
  {
    [*(a1 + 32) _onQueue_processPendingGizmoState];
  }
}

ACXGizmoApplicationInstallStatusItem *__cdecl sub_10001E8D8(id a1, NSString *a2, NSString *a3, ACXGizmoApplicationInstallStatusItem *a4, ACXGizmoApplicationInstallStatusItem *a5)
{
  v6 = a4;
  v7 = a5;
  if ([(ACXGizmoApplicationInstallStatusItem *)v6 installStatus]- 1 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

void sub_10001EA58(uint64_t a1)
{
  v1 = [*(a1 + 32) applicationManager];
  v2 = [v1 allAvailableApps];

  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        if (([v10 isSystemApp] & 1) == 0)
        {
          v11 = [v10 companionAppBundleID];
          v12 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:v11];
          [v3 setObject:v12 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [*(a1 + 32) gizmoState];
  v14 = [v13 setInstallStatusForApps:v3 sendNotification:1 withUpdatePredicate:0];

  if (v14)
  {
    [*(a1 + 32) _onQueue_processPendingGizmoState];
  }
}

void sub_10001ECB0(uint64_t a1)
{
  v2 = [*(a1 + 32) installQueue];
  [v2 cancelAllPendingInstalls];

  v3 = [*(a1 + 32) appStoreLocalQueue];
  [v3 cancelAllPendingInstalls];

  v4 = [*(a1 + 32) gizmoState];
  [v4 clearPendingInstallations];
}

void sub_10001F574(void *a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = a1[4];
    MOLogWrite();
  }

  v3 = a1[4];
  v2 = a1[5];
  v5 = objc_opt_new();
  [v2 _onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:v3 appsWithStoreMetadata:v5 isUserInitiated:0 exclusiveInstall:1 withCompletion:a1[6]];
}

void sub_10001F754(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationManager];
  v3 = [v2 gizmoAppWithBundleID:*(a1 + 40)];

  v5 = [v3 isBetaApp];
  if (v5)
  {
    v6 = +[ACXTestFlightInstallQueue sharedInstaller];
    [v6 removePendingInstallForApp:v3];

    if (v3)
    {
      if (([v3 isTrusted] & 1) == 0)
      {
        v7 = [*(a1 + 32) gizmoState];
        v8 = *(a1 + 40);
        v9 = [v3 companionAppBundleID];
        [v7 setInstallStatus:4 forApp:v8 companionBundleID:v9];

        goto LABEL_18;
      }

      goto LABEL_7;
    }

    v27 = [*(a1 + 32) gizmoState];
    v28 = *(a1 + 40);
    v29 = [0 companionAppBundleID];
    [v27 setInstallStatus:4 forApp:v28 companionBundleID:v29];

LABEL_21:
    v30 = *(a1 + 56);
    if (!v30)
    {
      goto LABEL_30;
    }

    v31 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 541, @"ACXErrorDomain", 19, 0, 0, @"No WatchKit app is installed with the identifier %@", v4, *(a1 + 40));
    (*(v30 + 16))(v30, 0, v31);
    goto LABEL_23;
  }

  if (!v3)
  {
    goto LABEL_21;
  }

  if (([v3 isTrusted] & 1) == 0)
  {
LABEL_18:
    if (*(a1 + 56))
    {
      v14 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 550, @"ACXErrorDomain", 22, 0, 0, @"App %@ is not trusted so it cannot be installed.", v10, *(a1 + 40));
      v25 = [v3 applicationName];
      v26 = 1;
LABEL_28:
      v40 = sub_10004F91C(v26, v14, v25, 1);

      (*(*(a1 + 56) + 16))();
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

LABEL_7:
  v11 = [*(a1 + 32) device];
  v12 = [v11 osVersion];
  v13 = [v3 isRuntimeCompatibleWithOSVersion:v12];

  if (v13)
  {
    if ([v3 isEmbeddedPlaceholder])
    {
      v14 = [v3 companionAppBundleID];
      v15 = [*(a1 + 32) gizmoState];
      [v15 setInstallStatus:1 forApp:*(a1 + 40) companionBundleID:v14];

      v16 = *(a1 + 64);
      if (v16)
      {
        (*(v16 + 16))();
      }

      v17 = [*(a1 + 32) device];
      v18 = [v17 supportsStandaloneApps];

      if (v18)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v65 = *(a1 + 40);
          MOLogWrite();
        }

        v19 = [v3 storeMetadata];
        v21 = v19;
        if (v19)
        {
          v22 = *(a1 + 32);
          v73 = *(a1 + 40);
          v74 = v19;
          v23 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          [v22 _onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:&__NSArray0__struct appsWithStoreMetadata:v23 isUserInitiated:1 exclusiveInstall:0 withCompletion:0];

          v24 = *(a1 + 56);
          if (v24)
          {
            (*(v24 + 16))(v24, 1, 0);
          }
        }

        else
        {
          v59 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 588, @"ACXErrorDomain", 51, 0, 0, @"Failed to load metadata for app %@", v20, *(a1 + 40));
          v60 = *(a1 + 32);
          v61 = *(a1 + 40);
          v62 = [v3 applicationName];
          v72 = 0;
          [v60 _onQueue_installFailedForWatchAppBundleID:v61 companionBundleID:v14 withError:v59 appName:v62 userInitiated:1 userPresentableError:&v72];
          v63 = v72;

          v64 = *(a1 + 56);
          if (v64)
          {
            (*(v64 + 16))(v64, 0, v63);
          }
        }
      }

      else
      {
        [*(a1 + 32) _onQueue_triggerLocalAppStoreInstallForWatchApp:v3 userInitiated:1 completion:*(a1 + 56)];
      }

      goto LABEL_29;
    }

    v41 = [*(a1 + 32) device];
    v42 = [v3 isCompatibleWithDevice:v41];

    if ((v42 & 1) == 0)
    {
      if (v5)
      {
        v53 = [*(a1 + 32) gizmoState];
        v54 = *(a1 + 40);
        v55 = [v3 companionAppBundleID];
        [v53 setInstallStatus:4 forApp:v54 companionBundleID:v55];
      }

      if (*(a1 + 56))
      {
        v14 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 610, @"ACXErrorDomain", 38, 0, 0, @"App %@ does not have an architecture slice that is supported on this watch.", v43, *(a1 + 40));
        v25 = [v3 applicationName];
        v26 = 7;
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (([v3 isEligibleForWatchAppInstall] & 1) == 0)
    {
      if (v5)
      {
        v56 = [*(a1 + 32) gizmoState];
        v57 = *(a1 + 40);
        v58 = [v3 companionAppBundleID];
        [v56 setInstallStatus:4 forApp:v57 companionBundleID:v58];
      }

      if (*(a1 + 56))
      {
        v14 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 621, @"ACXErrorDomain", 59, 0, 0, @"App %@ is not eligible for watch so it cannot be installed.", v44, *(a1 + 40));
        v25 = [v3 applicationName];
        v26 = 12;
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    v45 = [v3 companionAppBundleID];
    v46 = [*(a1 + 32) gizmoState];
    [v46 setInstallStatus:1 forApp:*(a1 + 40) companionBundleID:v45];

    v47 = *(a1 + 64);
    if (v47)
    {
      (*(v47 + 16))();
    }

    v48 = [*(a1 + 32) installQueue];
    v49 = [*(a1 + 32) gizmoState];
    v50 = [v49 preferencesForApplicationWithIdentifier:*(a1 + 40)];
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_10001FFA0;
    v67[3] = &unk_10008D5E0;
    v51 = *(a1 + 40);
    v52 = *(a1 + 48);
    v67[4] = *(a1 + 32);
    v68 = v51;
    v69 = v45;
    v70 = v3;
    v71 = *(a1 + 56);
    v31 = v45;
    [v48 installWatchApp:v70 withPriority:2 appSettings:v50 provisioningProfileInfo:v52 isUserInitiated:1 completion:v67];

LABEL_23:
    goto LABEL_30;
  }

  if (v5)
  {
    v32 = [*(a1 + 32) gizmoState];
    v33 = *(a1 + 40);
    v34 = [v3 companionAppBundleID];
    [v32 setInstallStatus:4 forApp:v33 companionBundleID:v34];
  }

  if (*(a1 + 56))
  {
    v35 = *(a1 + 40);
    v36 = [v3 watchKitVersion];
    v37 = [*(a1 + 32) gizmoState];
    v38 = [v37 device];
    v66 = [v38 osVersion];
    v14 = sub_1000061DC("[ACXCompanionSyncConnection _installWatchAppWithBundleID:withProvisioningProfileInfo:installationPendingBlock:completionWithError:]_block_invoke", 561, @"ACXErrorDomain", 37, 0, 0, @"App %@ is using WatchKit version %@ which is not supported on watchOS %@.", v39, v35);

    v25 = [v3 applicationName];
    v26 = 6;
    goto LABEL_28;
  }

LABEL_30:
}

void sub_10001FFA0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a2;
  v8 = [v6 applicationName];
  [v3 _installQueuedOrCompletedForWatchBundleID:v4 companionAppBundleID:v5 withName:v8 userInitiated:1 withError:v7 withCompletion:a1[8]];
}

BOOL sub_100020220(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v7 = [(NSURL *)v4 path];
    MOLogWrite();
  }

  return 1;
}

id sub_100020BDC(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100020DC4(uint64_t a1)
{
  v2 = [*(a1 + 32) installQueue];
  [v2 acknowledgeInstallationForWatchApp:*(a1 + 40)];

  v3 = [*(a1 + 48) domain];
  if ([v3 isEqualToString:@"ACXErrorDomain"])
  {
    v4 = [*(a1 + 48) code];

    if (v4 == 6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v5 = [*(a1 + 32) gizmoState];
      [v5 setInstallStatus:4 forApp:*(a1 + 40) companionBundleID:*(a1 + 56)];

      v6 = *(a1 + 32);
      v20 = *(a1 + 40);
      v7 = [NSArray arrayWithObjects:&v20 count:1];
      [v6 _onQueue_sendRemoveMessageForBundleIDs:v7 isUserInitiated:1 withCompletion:0];

      v8 = *(a1 + 72);
      if (v8)
      {
        (*(v8 + 16))(v8, 10, *(a1 + 48));
      }

      return;
    }
  }

  else
  {
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    MOLogWrite();
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v19 = 0;
  [v9 _onQueue_installFailedForWatchAppBundleID:v10 companionBundleID:v11 withError:v12 appName:v13 userInitiated:v14 userPresentableError:{&v19, v17, v18}];
  v15 = v19;
  v16 = *(a1 + 72);
  if (v16)
  {
    (*(v16 + 16))(v16, 0, v15);
  }
}

void sub_100021114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002112C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100021144(uint64_t a1)
{
  v5 = [*(a1 + 32) remoteAppList];
  v2 = [v5 applicationForBundleID:*(a1 + 40) error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10002128C(id *a1)
{
  v2 = [a1[4] bundleIdentifier];
  v3 = [a1[5] installQueue];
  v4 = [v3 cancelInstallForWatchAppBundleID:v2];

  if (v4 || ([a1[5] appStoreLocalQueue], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "cancelInstallForWatchAppBundleID:", v2), v5, v6))
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v7 = [a1[4] companionAppBundleID];
    v8 = [a1[5] gizmoState];
    [v8 cancelUpdatePendingForCompanionApp:v7];

    v9 = [a1[5] gizmoState];
    [v9 setInstallStatus:4 forApp:v2 companionBundleID:v7];

    v10 = a1[5];
    v16 = v2;
    v11 = [NSArray arrayWithObjects:&v16 count:1];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100021474;
    v12[3] = &unk_10008D6C0;
    v13 = v2;
    v14 = a1[4];
    v15 = a1[6];
    [v10 _onQueue_sendRemoveMessageForBundleIDs:v11 isUserInitiated:1 withCompletion:v12];
  }
}

void sub_100021474(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v4 = [v3 domain];
  if (![v4 isEqualToString:@"ACXErrorDomain"])
  {

LABEL_10:
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v9 = *(a1 + 32);
      v10 = v11;
      MOLogWrite();
    }

    v6 = 8;
    goto LABEL_14;
  }

  v5 = [v11 code];

  if (v5 != 58)
  {
    goto LABEL_10;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v9 = *(a1 + 32);
    v10 = v11;
    MOLogWrite();
  }

  v6 = 11;
LABEL_14:
  v7 = [*(a1 + 40) applicationName];
  v8 = sub_10004F91C(v6, v11, v7, 2);

  (*(*(a1 + 48) + 16))();
LABEL_15:
}

void sub_1000217FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v7 = [*(a1 + 32) device];
      v16 = [v7 idsDeviceIdentifier];
      v17 = v6;
      MOLogWrite();
    }

    if (*(a1 + 40) > 4uLL)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v15 = [*(a1 + 32) internalQueue];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100021ACC;
      v20[3] = &unk_10008CD40;
      v20[4] = *(a1 + 32);
      dispatch_sync(v15, v20);
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      v8 = os_transaction_create();
      v9 = dispatch_time(0, 5000000000);
      v10 = [*(a1 + 32) internalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100021AB8;
      block[3] = &unk_10008CEC8;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v22 = v8;
      v23 = v12;
      block[4] = v11;
      v13 = v8;
      dispatch_after(v9, v10, block);
    }
  }

  else
  {
    v14 = [*(a1 + 32) internalQueue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100021AD8;
    v18[3] = &unk_10008CC38;
    v18[4] = *(a1 + 32);
    v19 = v5;
    sub_100005828(v14, v18);
  }
}

void sub_1000220A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 setAvailableSystemAppFetchRunning:0];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v8 = [*(a1 + 32) device];
      v16 = [v8 idsDeviceIdentifier];
      MOLogWrite();
    }

    if (*(a1 + 40) > 9uLL)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v9 = os_transaction_create();
      v10 = dispatch_time(0, 5000000000);
      v11 = [*(a1 + 32) internalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100022304;
      block[3] = &unk_10008CEC8;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v20 = v9;
      v21 = v13;
      block[4] = v12;
      v14 = v9;
      dispatch_after(v10, v11, block);
    }
  }

  else
  {
    v15 = [v7 internalQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100022318;
    v17[3] = &unk_10008CC38;
    v17[4] = *(a1 + 32);
    v18 = v5;
    sub_100005828(v15, v17);
  }
}

void sub_1000245A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v11] & 1) == 0 && (objc_msgSend(v5, "isSystemApp") & 1) == 0)
  {
    if ([v5 isTrusted] && objc_msgSend(v5, "isCompatibleWithOSVersion:", *(a1 + 40)) && objc_msgSend(v5, "isRuntimeCompatibleWithOSVersion:", *(a1 + 40)))
    {
      v6 = [*(a1 + 48) device];
      if ([v5 isCompatibleWithDevice:v6])
      {
        v7 = [v5 isEligibleForWatchAppInstall];

        if (v7)
        {
          [*(a1 + 56) addObject:v11];
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v10 = v11;
      MOLogWrite();
    }

    v8 = [v5 companionAppBundleID];
    v9 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:5 companionBundleID:v8];
    [*(a1 + 64) setObject:v9 forKeyedSubscript:v11];
  }

LABEL_14:
}

void sub_100024710(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = 48;
    if (*(a1 + 56))
    {
      v3 = 40;
    }

    [*(a1 + v3) addObject:v4];
  }
}

uint64_t sub_100024784(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v8])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      v15 = v7;
      v16 = v8;
LABEL_16:
      MOLogWrite();
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (*(a1 + 112) == 1 && [*(a1 + 40) containsObject:v7])
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
    {
      goto LABEL_11;
    }

    v15 = v7;
    v16 = v8;
    goto LABEL_10;
  }

  v9 = [*(a1 + 48) objectForKeyedSubscript:v7];

  if (!v9)
  {
    if ([*(a1 + 56) containsObject:v7])
    {
      goto LABEL_29;
    }

    v11 = [*(a1 + 64) objectForKeyedSubscript:v7];

    v12 = [*(a1 + 72) objectForKeyedSubscript:v7];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 isSystemApp] ^ 1;
      if (v11)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = 0;
      if (v11)
      {
LABEL_28:

LABEL_29:
        if (a4 == 4)
        {
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v15 = v7;
            MOLogWrite();
          }

          a4 = 4;
          goto LABEL_17;
        }

        if ([*(a1 + 80) containsObject:v7])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_11;
          }

          v15 = v7;
        }

        else if ([*(a1 + 88) containsObject:v7])
        {
          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
            goto LABEL_11;
          }

          v15 = v7;
        }

        else
        {
          if (a4 != 1)
          {
            if (([*(a1 + 56) containsObject:v7] & 1) == 0)
            {
              if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
              {
                a4 = 5;
                goto LABEL_17;
              }

              v15 = v7;
              a4 = 5;
              goto LABEL_16;
            }

            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
            {
              v15 = v7;
              MOLogWrite();
            }

            a4 = 2;
            goto LABEL_17;
          }

          if (qword_1000A4878 && *(qword_1000A4878 + 44) < 5)
          {
LABEL_11:
            a4 = 1;
            goto LABEL_17;
          }

          v15 = v7;
        }

LABEL_10:
        MOLogWrite();
        goto LABEL_11;
      }
    }

    if ((v14 & 1) == 0)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v15 = v7;
        MOLogWrite();
      }

      a4 = 0;
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = v7;
    goto LABEL_16;
  }

LABEL_17:
  [*(a1 + 80) removeObject:{v7, v15, v16}];
  [*(a1 + 88) removeObject:v7];
  [*(a1 + 96) removeObject:v7];
  [*(a1 + 104) removeObject:v7];
  [*(a1 + 40) removeObject:v7];

  return a4;
}

id sub_100024B4C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v68;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v68 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v67 + 1) + 8 * i);
          v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v49 = v8;
            v50 = v7;
            MOLogWrite();
          }

          v9 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v8, v49, v50];
          [*(a1 + 48) setObject:v9 forKeyedSubscript:v7];
        }

        v4 = [v2 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v4);
    }
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = *(a1 + 56);
  v11 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v64;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v64 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v63 + 1) + 8 * j);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v49 = *(*(&v63 + 1) + 8 * j);
          MOLogWrite();
        }

        v16 = [*(a1 + 64) objectForKeyedSubscript:{v15, v49}];
        v17 = [v16 companionAppBundleID];

        if (!v17)
        {
          v17 = [*(a1 + 40) objectForKeyedSubscript:v15];
        }

        v18 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v17];
        [*(a1 + 48) setObject:v18 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v12);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v19 = *(a1 + 72);
  v20 = [v19 countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v60;
    do
    {
      for (k = 0; k != v21; k = k + 1)
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v59 + 1) + 8 * k);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v49 = *(*(&v59 + 1) + 8 * k);
          MOLogWrite();
        }

        v25 = [*(a1 + 64) objectForKeyedSubscript:{v24, v49}];
        v26 = [v25 companionAppBundleID];

        if (!v26)
        {
          v26 = [*(a1 + 40) objectForKeyedSubscript:v24];
        }

        v27 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:1 companionBundleID:v26];
        [*(a1 + 48) setObject:v27 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v21);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v28 = *(a1 + 80);
  v29 = [v28 countByEnumeratingWithState:&v55 objects:v72 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v56;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v55 + 1) + 8 * m);
        v34 = [*(a1 + 64) objectForKeyedSubscript:v33];
        v35 = [v34 companionAppBundleID];

        if (!v35)
        {
          v35 = [*(a1 + 40) objectForKeyedSubscript:v33];
        }

        if (*(a1 + 97) == 1)
        {
          if (!qword_1000A4878)
          {
            v36 = 1;
LABEL_53:
            v49 = v33;
            MOLogWrite();
            goto LABEL_54;
          }

          v36 = 1;
          if (*(qword_1000A4878 + 44) > 4)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (!qword_1000A4878)
          {
            v36 = 5;
            goto LABEL_53;
          }

          v36 = 5;
          if (*(qword_1000A4878 + 44) >= 5)
          {
            goto LABEL_53;
          }
        }

LABEL_54:
        v37 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:v36 companionBundleID:v35, v49];
        [*(a1 + 48) setObject:v37 forKeyedSubscript:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v55 objects:v72 count:16];
    }

    while (v30);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = *(a1 + 88);
  v39 = [v38 countByEnumeratingWithState:&v51 objects:v71 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v52;
    do
    {
      for (n = 0; n != v40; n = n + 1)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v51 + 1) + 8 * n);
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
        {
          v49 = *(*(&v51 + 1) + 8 * n);
          MOLogWrite();
        }

        v44 = [*(a1 + 64) objectForKeyedSubscript:{v43, v49}];
        v45 = [v44 companionAppBundleID];

        if (!v45)
        {
          v45 = [*(a1 + 40) objectForKeyedSubscript:v43];
        }

        v46 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:2 companionBundleID:v45];
        [*(a1 + 48) setObject:v46 forKeyedSubscript:v43];
      }

      v40 = [v38 countByEnumeratingWithState:&v51 objects:v71 count:16];
    }

    while (v40);
  }

  v47 = *(a1 + 48);

  return v47;
}

void sub_100025758(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 setReunionSyncRunning:0];
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v8 = [*(a1 + 32) device];
      v16 = [v8 idsDeviceIdentifier];
      MOLogWrite();
    }

    if (*(a1 + 40) > 9uLL)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }
    }

    else
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        MOLogWrite();
      }

      v9 = os_transaction_create();
      v10 = dispatch_time(0, 5000000000);
      v11 = [*(a1 + 32) internalQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000259B4;
      block[3] = &unk_10008CEC8;
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v20 = v9;
      v21 = v13;
      block[4] = v12;
      v14 = v9;
      dispatch_after(v10, v11, block);
    }
  }

  else
  {
    v15 = [v7 internalQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000259C8;
    v17[3] = &unk_10008CC38;
    v17[4] = *(a1 + 32);
    v18 = v5;
    sub_100005828(v15, v17);
  }
}

void sub_100025CB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100025D28(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  v6 = v21;
  if (!v5)
  {
    v7 = [v21 message];
    v8 = [v7 objectForKeyedSubscript:@"E"];
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = [v10 integerValue];
      v5 = sub_100001B04("[ACXCompanionSyncConnection _onQueue_sendInstallOnGizmoMessageForSystemAppBundleIDs:appsWithStoreMetadata:isUserInitiated:exclusiveInstall:withCompletion:]_block_invoke", 1749, @"ACXErrorDomain", v11, @"Gizmo side indicated error occurred", v12, v13, v14, v20);
    }

    else
    {
      v5 = 0;
    }

    v6 = v21;
  }

  v15 = [v6 message];
  v16 = [v15 objectForKeyedSubscript:@"BL"];
  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [NSSet setWithArray:v18];
  (*(*(a1 + 32) + 16))();
}

void sub_1000260B4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 message];
  v6 = v10;
  if (!v10)
  {
    v6 = [v5 objectForKeyedSubscript:@"EO"];

    if (v6)
    {
      v6 = sub_10002620C(v5);
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v7 = [v5 objectForKey:@"BL"];
        objc_opt_class();
        v8 = v7;
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        MOLogWrite();
      }
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

id sub_10002620C(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"EO"];
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [v4 length])
  {
    v24 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v24];
    v6 = v24;
    if (v5)
    {
      v7 = v5;
      goto LABEL_40;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v23 = v6;
      MOLogWrite();
    }
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v23 = [v1 objectForKeyedSubscript:@"T"];
    MOLogWrite();
  }

  v8 = [v1 objectForKeyedSubscript:{@"ED", v23}];
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  v10 = [v1 objectForKeyedSubscript:@"E"];
  objc_opt_class();
  v11 = v10;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 objectForKeyedSubscript:@"EM"];
  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v1 objectForKeyedSubscript:@"T"];
  objc_opt_class();
  v17 = v16;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  [v18 unsignedCharValue];
  if (!v6)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v12)
  {
    if (!v15)
    {
      v15 = @"No error description.";
    }

    v19 = [v12 integerValue];
    v25 = NSLocalizedDescriptionKey;
    v26 = v15;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v21 = [NSError errorWithDomain:v6 code:v19 userInfo:v20];

    v7 = v21;
    goto LABEL_39;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
LABEL_37:
    MOLogWrite();
  }

LABEL_38:
  v7 = 0;
LABEL_39:

LABEL_40:

  return v7;
}

void sub_100027908(id a1)
{
  v1 = objc_alloc_init(ATConnection);
  [v1 requestKeybagSyncToPairedDevice];
}

ACXGizmoApplicationInstallStatusItem *__cdecl sub_100027E24(id a1, NSString *a2, NSString *a3, ACXGizmoApplicationInstallStatusItem *a4, ACXGizmoApplicationInstallStatusItem *a5)
{
  v7 = a2;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if ([(ACXGizmoApplicationInstallStatusItem *)v8 installStatus]== 4)
  {
    if (!qword_1000A4878 || (v10 = v8, *(qword_1000A4878 + 44) >= 5))
    {
      MOLogWrite();
      v10 = v8;
    }
  }

  v11 = v10;

  return v10;
}

void sub_1000286CC(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v5 = *(a1 + 32);
    MOLogWrite();
  }

  v6[0] = @"T";
  v6[1] = @"B";
  v2 = *(a1 + 32);
  v7[0] = &off_1000976E0;
  v7[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2, v5];
  v4 = [*(a1 + 40) messager];
  [v4 sendResponse:v3 toMessage:*(a1 + 48) withPriority:200 timeout:@"gizmo installation request recorded" logDescription:120.0];
}

void sub_100028B48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 isCompatibleWithOSVersion:*(a1 + 32)])
  {
    v4 = [v5 watchKitAppExtensionBundleID];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v4];
  }
}

void sub_100029CE8(uint64_t a1)
{
  v2 = [*(a1 + 32) device];
  v3 = [v2 syncingIsRestricted];

  if (v3)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    v6 = [*(a1 + 32) gizmoState];
    [v6 setNeedsReunionSync:1];
  }

  else if ([*(a1 + 32) reunionSyncRunning])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {

      MOLogWrite();
    }
  }

  else
  {
    [*(a1 + 32) setReunionSyncRunning:1];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _onQueue_processReunionSyncMessage:v5];
  }
}

void sub_100029E6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) messager];
  sub_10004AEE0(v1, v2);
}

void sub_100029EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) messager];
  sub_10004B3A0(v1, v2);
}

void sub_100029F1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) messager];
  sub_10004B7B4(v1, v2);
}

id sub_10002A048(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  v2 = *(a1 + 40);

  return [v2 _onQueue_processPendingGizmoState];
}

id sub_10002A174(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v5 = *(a1 + 32);
    MOLogWrite();
  }

  v2 = [*(a1 + 40) gizmoState];
  [v2 setNeedsReunionSync:1];

  v3 = *(a1 + 40);

  return [v3 _onQueue_beginReunionSync];
}

void sub_10002A2E0(uint64_t a1)
{
  v2 = [*(a1 + 32) appStoreLocalQueue];
  [v2 reportExternalInstallFailureForWatchAppBundleID:*(a1 + 40) failureReason:*(a1 + 48)];
}

void sub_10002A470(uint64_t a1)
{
  v8[0] = @"T";
  v8[1] = @"PD";
  v2 = *(a1 + 32);
  v9[0] = &off_100097728;
  v9[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [*(a1 + 40) messager];
  v5 = [*(a1 + 40) device];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A5BC;
  v6[3] = &unk_10008D7D8;
  v7 = *(a1 + 48);
  [v4 sendMessage:v3 toDevice:v5 withPriority:300 timeout:@"install profile" logDescription:v6 handleReply:120.0];
}

void sub_10002A5BC(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v6 = [v28 message];
  v7 = [v6 objectForKeyedSubscript:@"T"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 unsignedCharValue] == 7)
  {
    if (v5)
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_9;
    }

    v14 = [v28 message];
    v15 = [v14 objectForKeyedSubscript:@"E"];
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v17 = [v28 message];
      v18 = [v17 objectForKeyedSubscript:@"MISE"];
      objc_opt_class();
      v19 = v18;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v20 intValue];
      v22 = MISCopyErrorStringForErrorCode();
      v23 = [v13 integerValue];
      v27 = sub_100001B04("[ACXCompanionSyncConnection installProvisioningProfileWithData:completion:]_block_invoke", 2543, @"ACXErrorDomain", v23, @"Gizmo side indicated error occurred during profile installation (MIS error 0x%x : %@)", v24, v25, v26, v21);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, 0);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v9 unsignedCharValue];
    v13 = sub_1000061DC("[ACXCompanionSyncConnection installProvisioningProfileWithData:completion:]_block_invoke", 2525, @"ACXErrorDomain", 1, 0, 0, @"Received reply to profile install message with unknown type: %hhu", v12, v11);
    (*(v10 + 16))(v10, 0, v13);
  }

LABEL_9:
}

void sub_10002A958(uint64_t a1)
{
  v8[0] = @"T";
  v8[1] = @"PI";
  v2 = *(a1 + 32);
  v9[0] = &off_100097740;
  v9[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  v4 = [*(a1 + 40) messager];
  v5 = [*(a1 + 40) device];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002AAA4;
  v6[3] = &unk_10008D7D8;
  v7 = *(a1 + 48);
  [v4 sendMessage:v3 toDevice:v5 withPriority:300 timeout:@"remove profile" logDescription:v6 handleReply:120.0];
}

void sub_10002AAA4(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v6 = [v28 message];
  v7 = [v6 objectForKeyedSubscript:@"T"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 unsignedCharValue] == 13)
  {
    if (v5)
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_9;
    }

    v14 = [v28 message];
    v15 = [v14 objectForKeyedSubscript:@"E"];
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v17 = [v28 message];
      v18 = [v17 objectForKeyedSubscript:@"MISE"];
      objc_opt_class();
      v19 = v18;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v20 intValue];
      v22 = MISCopyErrorStringForErrorCode();
      v23 = [v13 integerValue];
      v27 = sub_100001B04("[ACXCompanionSyncConnection removeProvisioningProfileWithID:completion:]_block_invoke", 2579, @"ACXErrorDomain", v23, @"Gizmo side indicated error occurred during profile removal (MIS error 0x%x : %@)", v24, v25, v26, v21);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 1, 0);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v9 unsignedCharValue];
    v13 = sub_1000061DC("[ACXCompanionSyncConnection removeProvisioningProfileWithID:completion:]_block_invoke", 2561, @"ACXErrorDomain", 1, 0, 0, @"Received reply to profile remove message with unknown type: %hhu", v12, v11);
    (*(v10 + 16))(v10, 0, v13);
  }

LABEL_9:
}

void sub_10002AE4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v8[0] = @"T";
    v8[1] = @"BI";
    v9[0] = &off_100097758;
    v9[1] = v2;
    v3 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else
  {
    v3 = &off_100097AF8;
  }

  v4 = [*(a1 + 40) messager];
  v5 = [*(a1 + 40) device];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002AFA8;
  v6[3] = &unk_10008D7D8;
  v7 = *(a1 + 48);
  [v4 sendMessage:v3 toDevice:v5 withPriority:300 timeout:@"get profile list" logDescription:v6 handleReply:120.0];
}

void sub_10002AFA8(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = [v27 message];
  v7 = [v6 objectForKeyedSubscript:@"T"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 unsignedCharValue] == 9)
  {
    v10 = [v27 message];
    v11 = [v10 objectForKeyedSubscript:@"PX"];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v5)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v5);
    }

    else
    {
      v17 = [v27 message];
      v18 = [v17 objectForKeyedSubscript:@"MISE"];
      objc_opt_class();
      v19 = v18;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v21 = [v20 intValue];
        v26 = MISCopyErrorStringForErrorCode();
        v25 = sub_100001B04("[ACXCompanionSyncConnection fetchProvisioningProfilesForApplicationWithBundleID:completion:]_block_invoke", 2626, @"ACXErrorDomain", 1, @"Gizmo side indicated error occurred getting profile list (MIS error 0x%x : %@)", v22, v23, v24, v21);
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  else
  {
    v14 = *(a1 + 32);
    v15 = [v9 unsignedCharValue];
    v13 = sub_1000061DC("[ACXCompanionSyncConnection fetchProvisioningProfilesForApplicationWithBundleID:completion:]_block_invoke", 2607, @"ACXErrorDomain", 1, 0, 0, @"Received reply to profile list message with unknown type: %hhu", v16, v15);
    (*(v14 + 16))(v14, 0, v13);
  }
}

void sub_10002B438(uint64_t a1)
{
  v11[0] = @"T";
  v11[1] = @"BI";
  v2 = *(a1 + 32);
  v12[0] = &off_100097770;
  v12[1] = v2;
  v11[2] = @"PL";
  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  v12[2] = v3;
  v11[3] = @"PO";
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
  v11[4] = @"PF";
  v5 = *(a1 + 40);
  v12[3] = v4;
  v12[4] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];

  v7 = [*(a1 + 48) messager];
  v8 = [*(a1 + 48) device];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002B5E8;
  v9[3] = &unk_10008D7D8;
  v10 = *(a1 + 56);
  [v7 sendMessage:v6 toDevice:v8 withPriority:300 timeout:@"update preferences" logDescription:v9 handleReply:120.0];
}

void sub_10002B5E8(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = [v23 message];
  v7 = [v6 objectForKeyedSubscript:@"T"];
  objc_opt_class();
  v8 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v9 unsignedCharValue] == 11)
  {
    if (v5)
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_9;
    }

    v14 = [v23 message];
    v15 = [v14 objectForKeyedSubscript:@"E"];
    objc_opt_class();
    v16 = v15;
    if (objc_opt_isKindOfClass())
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v17 = [v13 integerValue];
      v21 = sub_100001B04("[ACXCompanionSyncConnection updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:options:completion:]_block_invoke", 2670, @"ACXErrorDomain", v17, @"Gizmo side indicated error occurred during prefs update", v18, v19, v20, v22);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [v9 unsignedCharValue];
    v13 = sub_1000061DC("[ACXCompanionSyncConnection updatePreferencesForApplicationWithIdentifier:preferences:writingToPreferencesLocation:options:completion:]_block_invoke", 2661, @"ACXErrorDomain", 1, 0, 0, @"Received reply to prefs update message with unknown type: %hhu", v12, v11);
    (*(v10 + 16))(v10, v13);
  }

LABEL_9:
}

void sub_10002BE2C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v20[0] = v6;
    v19[0] = @"BundleIDs";
    v19[1] = @"PairingID";
    v9 = [v7 UUIDString];
    v20[1] = v9;
    v10 = v20;
    v11 = v19;
    v12 = 2;
  }

  else
  {
    v17 = @"PairingID";
    v9 = [v7 UUIDString];
    v18 = v9;
    v10 = &v18;
    v11 = &v17;
    v12 = 1;
  }

  v13 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:v12];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v15 = v5;
    v16 = v13;
    MOLogWrite();
  }

  v14 = [NSDistributedNotificationCenter defaultCenter:v15];
  [v14 postNotificationName:v5 object:0 userInfo:v13 deliverImmediately:1];
}

void sub_10002C7D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = [ACXGizmoApplicationInstallStatusItem itemWithStatus:4 companionBundleID:v5];
        [*(a1 + 32) setObject:v12 forKeyedSubscript:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void sub_10002CE48(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  v5 = [*(a1 + 40) messager];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) device];
  [v5 sendMessage:v2 toDevice:v3 withPriority:200 timeout:@"companion install notification" logDescription:0 handleReply:120.0];
}

void sub_10002CF0C(uint64_t a1)
{
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    v4 = *(a1 + 32);
    MOLogWrite();
  }

  v5 = [*(a1 + 40) messager];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) device];
  [v5 sendMessage:v2 toDevice:v3 withPriority:200 timeout:@"companion uninstall notification" logDescription:0 handleReply:120.0];
}

id sub_10002D2FC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZ"];
  v4 = [v2 stringFromDate:v1];

  return v4;
}

void sub_10002DB1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 readDataOrDictionaryWithError:&v6];
  v4 = v6;
  if (([*(a1 + 32) invalidated] & 1) == 0)
  {
    v5 = [*(a1 + 32) eventHandler];
    (v5)[2](v5, v3, v4);
  }
}

void sub_10002DBAC(uint64_t a1)
{
  v2 = [*(a1 + 32) deviceConnection];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 deviceConnection];
    [v4 close];

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  else
  {
    close([v3 socketFD]);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  *(*(a1 + 32) + 12) = -1;
}

uint64_t sub_10002DCF0(void *a1, char *a2, char *a3, void *a4)
{
  v7 = a1;
  v8 = [v7 socketFD];
  if (a3)
  {
    v9 = v8;
    while (1)
    {
      v10 = send(v9, a2, a3, 0);
      if (v10 < 0)
      {
        break;
      }

      v11 = v10;
      if (!v10 && (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3))
      {
        MOLogWrite();
      }

      a2 += v11;
      a3 -= v11;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    v13 = *__error();
    v17 = sub_100001B04("_WriteBytes", 172, NSPOSIXErrorDomain, v13, 0, v14, v15, v16, v22);
    v18 = [v7 errorInfoDict];
    strerror(v13);
    a3 = sub_1000061DC("_WriteBytes", 172, @"ACXErrorDomain", 2, v17, v18, @"Failed to send %zu bytes: %s", v19, a3);

    if (a4)
    {
      v20 = a3;
      v12 = 0;
      *a4 = a3;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_9:
    v12 = 1;
  }

  return v12;
}

void *sub_10002E758(void *a1, char *a2, void *a3)
{
  v5 = a1;
  v6 = [v5 socketFD];
  v7 = malloc_type_calloc(1uLL, a2, 0xCC75587AuLL);
  v8 = v7;
  if (!v7)
  {
    v12 = *__error();
    v16 = sub_100001B04("_ReadData", 303, NSPOSIXErrorDomain, v12, 0, v13, v14, v15, v29);
    v17 = [v5 errorInfoDict];
    v18 = strerror(v12);
    a2 = sub_1000061DC("_ReadData", 303, @"ACXErrorDomain", 1, v16, v17, @"Could not allocate memory: %s", v19, v18);

LABEL_12:
    v11 = 0;
    if (a3)
    {
LABEL_13:
      if (!v11)
      {
        v27 = a2;
        *a3 = a2;
        goto LABEL_16;
      }
    }

LABEL_15:
    if (v11)
    {
LABEL_17:
      v8 = v11;
      goto LABEL_18;
    }

LABEL_16:
    free(v8);
    goto LABEL_17;
  }

  if (a2)
  {
    v9 = v7;
    do
    {
      v10 = recv(v6, v9, a2, 0);
      if (v10 < 0)
      {
        v20 = *__error();
        v16 = sub_100001B04("_ReadData", 313, NSPOSIXErrorDomain, v20, 0, v21, v22, v23, v29);
        v24 = [v5 errorInfoDict];
        strerror(v20);
        a2 = sub_1000061DC("_ReadData", 313, @"ACXErrorDomain", 3, v16, v24, @"recv returned an error when reading %zu bytes: %s", v25, a2);

        goto LABEL_12;
      }

      if (!v10)
      {
        v16 = [v5 errorInfoDict];
        a2 = sub_1000061DC("_ReadData", 317, @"ACXErrorDomain", 4, 0, v16, @"Socket closed with %zu bytes remaining to read", v26, a2);
        goto LABEL_12;
      }

      v9 += v10;
      a2 -= v10;
    }

    while (a2);
    v11 = v8;
    if (a3)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_18:

  return v8;
}

void sub_10002F3B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_isReachable];
  if (!*(a1 + 40))
  {
    [*(a1 + 32) setIsConnected:0];
    [*(a1 + 32) setIsActivePairedDevice:0];
    [*(a1 + 32) setIsTombstone:1];
LABEL_19:
    if (v2 != [*(a1 + 32) _onQueue_isReachable])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = a1;
      v10 = [*(a1 + 32) observers];
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v23 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v16 = qos_class_self();
              v17 = dispatch_get_global_queue(v16, 0);
              v22[0] = _NSConcreteStackBlock;
              v22[1] = 3221225472;
              v22[2] = sub_10002F7A0;
              v22[3] = &unk_10008CC38;
              v18 = *(v9 + 32);
              v22[4] = v15;
              v22[5] = v18;
              sub_100005828(v17, v22);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }
    }

    return;
  }

  v21 = IDSCopyIDForDevice();
  v3 = [*(a1 + 32) idsDeviceIdentifier];
  v4 = [v21 isEqualToString:v3];

  if (v4)
  {
    [*(a1 + 32) setIsConnected:{objc_msgSend(*(a1 + 40), "isConnected")}];
    if ([*(a1 + 40) isActive])
    {
      v5 = [*(a1 + 40) isLocallyPaired];
    }

    else
    {
      v5 = 0;
    }

    [*(a1 + 32) setIsActivePairedDevice:v5];
    [*(a1 + 32) setIsTombstone:0];
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    v7 = [v6 deviceForIDSDevice:*(a1 + 40)];

    if (v7)
    {
      objc_storeStrong((*(a1 + 32) + 16), v7);
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v19 = *(a1 + 40);
      MOLogWrite();
    }

    [*(a1 + 32) setSupportsStandaloneApps:{objc_msgSend(*(a1 + 40), "serviceMinCompatibilityVersion", v19) > 7}];
    v8 = [*(a1 + 40) productVersion];
    *(*(a1 + 32) + 12) = [@"10.3" compare:v8 options:64] + 1 < 2;

    [*(a1 + 32) setMessager:*(a1 + 48)];
    goto LABEL_19;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v20 = [*(a1 + 32) idsDeviceIdentifier];
    MOLogWrite();
  }
}

void sub_10002F860(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

void sub_10002F968(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10002FB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002FB54(uint64_t a1)
{
  result = [*(a1 + 32) _onQueue_isReachable];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100030284(id a1)
{
  v1 = objc_alloc_init(ACXLaunchServicesWatcher);
  v2 = qword_1000A4808;
  qword_1000A4808 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000303B4(uint64_t a1)
{
  v56 = sub_100006798();
  v57 = [v56 URLByAppendingPathComponent:@"AvailableCompanionApps.plist" isDirectory:0];
  v70 = 0;
  v58 = [NSMutableDictionary ACX_dictionaryWithContentsOfURL:v57 options:0 error:&v70];
  v2 = v70;
  v54 = v2;
  if (v58)
  {
    v3 = [v58 objectForKeyedSubscript:@"Version"];
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v55 = v4;
    }

    else
    {
      v55 = 0;
    }

    if (!v55 || [(__CFString *)v55 unsignedLongLongValue]!= 13)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v9 = @"0";
        if (v55)
        {
          v9 = v55;
        }

        v45 = v9;
        MOLogWrite();
      }

      goto LABEL_93;
    }

    v66 = 0;
    v67 = &v66;
    v68 = 0x2020000000;
    v69 = 0;
    v7 = [v58 objectForKeyedSubscript:@"AppList"];
    objc_opt_class();
    v8 = v7;
    if (objc_opt_isKindOfClass())
    {
      v50 = v8;
    }

    else
    {
      v50 = 0;
    }

    if (v50 && (v10 = objc_opt_class(), v11 = objc_opt_class(), sub_100005F8C(v50, v10, v11)))
    {
      +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v50 count]);
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100030E14;
      v63[3] = &unk_10008D920;
      v12 = v65 = &v66;
      v64 = v12;
      [v50 enumerateKeysAndObjectsUsingBlock:v63];
      [*(a1 + 32) setAppList:v12];
    }

    else
    {
      *(v67 + 24) = 1;
    }

    v13 = [v58 objectForKeyedSubscript:@"LSUUID"];
    objc_opt_class();
    v14 = v13;
    if (objc_opt_isKindOfClass())
    {
      v53 = v14;
    }

    else
    {
      v53 = 0;
    }

    if (!v53 || (v15 = [[NSUUID alloc] initWithUUIDString:v53], objc_msgSend(*(a1 + 32), "setLastLSUUID:", v15), v15, objc_msgSend(*(a1 + 32), "lastLSUUID"), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16 == 0, v16, v17))
    {
      *(v67 + 24) = 1;
    }

    v18 = [v58 objectForKeyedSubscript:@"OurDBUUID"];
    objc_opt_class();
    v19 = v18;
    if (objc_opt_isKindOfClass())
    {
      v52 = v19;
    }

    else
    {
      v52 = 0;
    }

    if (!v52 || (v20 = [[NSUUID alloc] initWithUUIDString:v52], objc_msgSend(*(a1 + 32), "setOurDBUUID:", v20), v20, objc_msgSend(*(a1 + 32), "ourDBUUID"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
    {
      *(v67 + 24) = 1;
    }

    v23 = [v58 objectForKeyedSubscript:@"LastSequenceNumber"];
    objc_opt_class();
    v24 = v23;
    if (objc_opt_isKindOfClass())
    {
      v49 = v24;
    }

    else
    {
      v49 = 0;
    }

    if (!v49)
    {
      *(v67 + 24) = 1;
    }

    [*(a1 + 32) setLastSequenceNumber:{objc_msgSend(v49, "unsignedIntegerValue")}];
    v25 = [v58 objectForKeyedSubscript:@"AppEvents"];
    objc_opt_class();
    v26 = v25;
    if (objc_opt_isKindOfClass())
    {
      v51 = v26;
    }

    else
    {
      v51 = 0;
    }

    if (!v51)
    {
      *(v67 + 24) = 1;
      goto LABEL_76;
    }

    v27 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v28 = v51;
    v29 = 0;
    v30 = [v28 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (!v30)
    {
      goto LABEL_72;
    }

    v31 = *v60;
LABEL_51:
    v32 = 0;
    while (1)
    {
      if (*v60 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v59 + 1) + 8 * v32);
      objc_opt_class();
      v34 = v33;
      v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;

      if (!v35)
      {
        break;
      }

      v36 = [[ACXAppEventRecord alloc] initWithDictionaryRepresentation:v34];
      if (!v36)
      {
        if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
        {
          v45 = v34;
          MOLogWrite();
        }

LABEL_71:
        *(v67 + 24) = 1;
        goto LABEL_72;
      }

      if ([v27 count] == 15)
      {
        [v27 removeObjectAtIndex:0];
        ++v29;
      }

      [v27 addObject:v36];

      if (v30 == ++v32)
      {
        v30 = [v28 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v30)
        {
          goto LABEL_51;
        }

LABEL_72:

        [*(a1 + 32) setEventQueue:v27];
        if (v29)
        {
          v37 = [*(a1 + 32) eventQueue];
          v38 = [v37 objectAtIndexedSubscript:0];
          v39 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v38 sequenceNumber]);

          if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
          {
            v45 = v29;
            v47 = v39;
            MOLogWrite();
          }

LABEL_80:
          if (!v39)
          {
            *(v67 + 24) = 1;
          }

          v42 = [v39 unsignedIntegerValue];
          v43 = [*(a1 + 32) lastSequenceNumber] + 1;
          if (v42 <= v43)
          {
            v43 = v42;
          }

          else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
          {
            v46 = v42;
            v48 = v43;
            MOLogWrite();
          }

          [*(a1 + 32) setEventQueueStartSequenceNumber:{v43, v46, v48}];
          if (*(v67 + 24) == 1)
          {
            if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
            {
              MOLogWrite();
            }

            [*(a1 + 32) setLastLSUUID:0];
            [*(a1 + 32) setAppList:0];
            [*(a1 + 32) setOurDBUUID:0];
            [*(a1 + 32) setLastSequenceNumber:0];
            [*(a1 + 32) setEventQueue:0];
            [*(a1 + 32) setEventQueueStartSequenceNumber:0];
          }

          _Block_object_dispose(&v66, 8);
LABEL_93:

          goto LABEL_94;
        }

LABEL_76:
        v40 = [v58 objectForKeyedSubscript:{@"AppEventsStartSequenceNumber", v45}];
        objc_opt_class();
        v41 = v40;
        if (objc_opt_isKindOfClass())
        {
          v39 = v41;
        }

        else
        {
          v39 = 0;
        }

        goto LABEL_80;
      }
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    goto LABEL_71;
  }

  v5 = [v2 domain];
  if ([v5 isEqualToString:NSCocoaErrorDomain])
  {
    v6 = [v54 code] == 260;

    if (v6)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        MOLogWrite();
      }

      goto LABEL_94;
    }
  }

  else
  {
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v45 = [v57 path];
    v47 = v54;
    MOLogWrite();
  }

LABEL_94:
  v44 = [LSApplicationWorkspace defaultWorkspace:v45];
  [v44 addObserver:*(a1 + 32)];

  [*(a1 + 32) _onQueue_reSyncWithLS];
}

void sub_100030E14(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  v13 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v9 && v11)
  {
    v12 = [[ACXLaunchServicesWatcherSequenceRecord alloc] initWithDictionaryRepresentation:v11];
    if (v12)
    {
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v9];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100031368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 dictionaryRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100031990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000319B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000319CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 _onQueue_applicationForAppRecord:v3 error:&v9];
  v5 = v9;
  v6 = v9;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    **(a1 + 64) = [*(a1 + 32) lastSequenceNumber];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }
}

void sub_100031C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100031C18(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v3)
  {

LABEL_14:
    if (*(a1 + 64))
    {
      **(a1 + 64) = [*(a1 + 40) lastSequenceNumber];
    }

    if (*(a1 + 72))
    {
      [*(a1 + 40) ourDBUUID];
      **(a1 + 72) = v5 = 0;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_19;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v15;
  while (2)
  {
    v7 = 0;
    v8 = v5;
    do
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v14 + 1) + 8 * v7);
      v10 = *(a1 + 40);
      v13 = v8;
      v11 = [v10 _onQueue_applicationForAppRecord:v9 error:&v13];
      v12 = v13;
      v5 = v13;

      if (!v11)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
        goto LABEL_11;
      }

      [*(a1 + 48) addObject:v11];

      v7 = v7 + 1;
      v8 = v5;
    }

    while (v4 != v7);
    v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_11:

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_19:
}

void sub_100032278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 168), 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1000322B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11 = 0;
  v5 = [v2 _onQueue_enumerateApplicationsForBundleIDs:v3 error:&v11 enumerator:v4];
  v6 = v11;
  v7 = v11;
  *(*(*(a1 + 56) + 8) + 24) = v5;
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v8 = [*(a1 + 32) ourDBUUID];
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 32) lastSequenceNumber];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
  }
}

void sub_1000329DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100032A00(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  v8 = 0;
  v5 = [v2 _onQueue_clearApplicationEventsForDBUUID:v3 endingSequenceNumber:v4 error:&v8];
  v6 = v8;
  v7 = v8;
  *(*(a1[6] + 8) + 24) = v5;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v6);
  }
}

void sub_100032BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id sub_100032C10(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) eventQueue];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        (*(*(a1 + 40) + 16))();
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v8 = [*(a1 + 32) ourDBUUID];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  result = [*(a1 + 32) eventQueueStartSequenceNumber];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_100032E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

id sub_100032E9C(uint64_t a1)
{
  v2 = [*(a1 + 32) ourDBUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1 + 32) lastSequenceNumber];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100033098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

id sub_1000330C8(uint64_t a1)
{
  v2 = [*(a1 + 32) appList];
  v3 = [v2 allKeys];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) ourDBUUID];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  result = [*(a1 + 32) lastSequenceNumber];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_100033BAC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v52 = 0;
  v3 = [v2 _onQueue_infoMatchesCurrentLSDatabaseWithUUID:&v52];
  v4 = v52;
  if (v3)
  {
    v41 = objc_opt_new();
    v42 = objc_opt_new();
    v44 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = *(v1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v49;
      v45 = v1;
      v46 = *v49;
      v47 = v5;
      v43 = v4;
      while (1)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v48 + 1) + 8 * i);
          v12 = [v11 bundleIdentifier];
          if (![v11 isPlaceholder])
          {
            if (![v11 ACX_shouldBeTrackedByLaunchServicesWatcher])
            {
              goto LABEL_37;
            }

            v13 = [v11 databaseUUID];
            v14 = [v13 isEqual:v4];

            v8 |= v14 ^ 1;
            v15 = [v11 applicationState];
            v16 = [v15 isInstalled];

            if (v16)
            {
              [*(v1 + 32) setLastSequenceNumber:{objc_msgSend(*(v1 + 32), "lastSequenceNumber") + 1}];
              v17 = [*(v1 + 32) lastSequenceNumber];
              v18 = [ACXCompanionApplication alloc];
              [*(v1 + 32) ourDBUUID];
              v20 = v19 = v1;
              v21 = [(ACXCompanionApplication *)v18 initWithApplicationRecord:v11 databaseUUID:v20 sequenceNumber:v17];

              if (v21)
              {
                v22 = [*(v19 + 32) appList];
                v23 = [v22 objectForKeyedSubscript:v12];

                if (v23)
                {
                  if (!qword_1000A4878 || (v24 = v42, *(qword_1000A4878 + 44) > 4))
                  {
                    v24 = v42;
                    goto LABEL_33;
                  }
                }

                else if (!qword_1000A4878 || (v24 = v41, *(qword_1000A4878 + 44) >= 5))
                {
                  v24 = v41;
LABEL_33:
                  v40 = v12;
                  MOLogWrite();
                }

                [v24 addObject:{v21, v40}];
                v31 = [[ACXAppEventRecord alloc] initWithRecordType:0 bundleID:v12 sequenceNumber:v17];
                [*(v45 + 32) _onQueue_addAppEvent:v31];
                v32 = [ACXLaunchServicesWatcherSequenceRecord alloc];
                v33 = [v11 sequenceNumber];
                v34 = [(ACXCompanionApplication *)v21 counterpartIdentifiers];
                v35 = [(ACXLaunchServicesWatcherSequenceRecord *)v32 initWithLSSequenceNumber:v33 acxSequenceNumber:v17 counterpartIdentifiers:v34];
                v36 = [*(v45 + 32) appList];
                [v36 setObject:v35 forKeyedSubscript:v12];

                v4 = v43;
              }

              else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
              {
                v40 = v12;
                MOLogWrite();
              }

              v1 = v45;
            }

            else
            {
              if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
              {
                v40 = v12;
                MOLogWrite();
              }

              v25 = [*(v1 + 32) appList];
              v26 = [v25 objectForKeyedSubscript:v12];

              if (v26)
              {
                v27 = [*(v1 + 32) appList];
                [v27 removeObjectForKey:v12];

                v28 = [v26 counterpartIdentifiers];
                if (v28)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = &__NSArray0__struct;
                }

                [v44 setObject:v29 forKeyedSubscript:v12];
                [*(v1 + 32) setLastSequenceNumber:{objc_msgSend(*(v1 + 32), "lastSequenceNumber") + 1}];
                v30 = -[ACXAppEventRecord initWithRecordType:bundleID:sequenceNumber:]([ACXAppEventRecord alloc], "initWithRecordType:bundleID:sequenceNumber:", 1, v12, [*(v1 + 32) lastSequenceNumber]);
                [*(v1 + 32) _onQueue_addAppEvent:v30];
              }
            }

            v9 = v46;
            v5 = v47;
            goto LABEL_37;
          }

          if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
          {
            v40 = v12;
            MOLogWrite();
          }

LABEL_37:
        }

        v7 = [v5 countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (!v7)
        {
          goto LABEL_42;
        }
      }
    }

    v8 = 0;
LABEL_42:

    if ([v41 count] || objc_msgSend(v42, "count") || objc_msgSend(v44, "count"))
    {
      v37 = *(v1 + 32);
      v38 = [v37 ourDBUUID];
      [v37 _onQueue_noteNewApps:v41 updatedApps:v42 removedApps:v44 forDBUUID:v38 endingSequenceNumber:{objc_msgSend(*(v1 + 32), "lastSequenceNumber")}];

      v39 = *(v1 + 32);
      if (v8)
      {
        [v39 _onQueue_reSyncWithLS];
      }

      else
      {
        [v39 _onQueue_writeAppListToDisk];
      }
    }
  }

  else
  {
    [*(v1 + 32) _onQueue_reSyncWithLS];
  }
}